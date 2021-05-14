defmodule Grafeas.V1.AttestationNote.Hint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          human_readable_name: String.t()
        }

  defstruct [:human_readable_name]

  field :human_readable_name, 1, type: :string
end

defmodule Grafeas.V1.AttestationNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hint: Grafeas.V1.AttestationNote.Hint.t() | nil
        }

  defstruct [:hint]

  field :hint, 1, type: Grafeas.V1.AttestationNote.Hint
end

defmodule Grafeas.V1.AttestationOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_payload: binary,
          signatures: [Grafeas.V1.Signature.t()]
        }

  defstruct [:serialized_payload, :signatures]

  field :serialized_payload, 1, type: :bytes
  field :signatures, 2, repeated: true, type: Grafeas.V1.Signature
end
