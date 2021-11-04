defmodule Grafeas.V1.DSSEAttestationNote.DSSEHint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          human_readable_name: String.t()
        }

  defstruct [:human_readable_name]

  field :human_readable_name, 1, type: :string, json_name: "humanReadableName"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.DSSEAttestationNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hint: Grafeas.V1.DSSEAttestationNote.DSSEHint.t() | nil
        }

  defstruct [:hint]

  field :hint, 1, type: Grafeas.V1.DSSEAttestationNote.DSSEHint

  def transform_module(), do: nil
end

defmodule Grafeas.V1.DSSEAttestationOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          decoded_payload: {:statement, Grafeas.V1.InTotoStatement.t() | nil},
          envelope: Grafeas.V1.Envelope.t() | nil
        }

  defstruct [:decoded_payload, :envelope]

  oneof :decoded_payload, 0

  field :envelope, 1, type: Grafeas.V1.Envelope
  field :statement, 2, type: Grafeas.V1.InTotoStatement, oneof: 0

  def transform_module(), do: nil
end
