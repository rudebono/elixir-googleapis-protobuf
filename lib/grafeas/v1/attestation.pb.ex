defmodule Grafeas.V1.AttestationNote.Hint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          human_readable_name: String.t()
        }

  defstruct [:human_readable_name]

  field :human_readable_name, 1, type: :string, json_name: "humanReadableName"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.AttestationNote do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hint: Grafeas.V1.AttestationNote.Hint.t() | nil
        }

  defstruct [:hint]

  field :hint, 1, type: Grafeas.V1.AttestationNote.Hint

  def transform_module(), do: nil
end

defmodule Grafeas.V1.Jwt do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          compact_jwt: String.t()
        }

  defstruct [:compact_jwt]

  field :compact_jwt, 1, type: :string, json_name: "compactJwt"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.AttestationOccurrence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          serialized_payload: binary,
          signatures: [Grafeas.V1.Signature.t()],
          jwts: [Grafeas.V1.Jwt.t()]
        }

  defstruct [:serialized_payload, :signatures, :jwts]

  field :serialized_payload, 1, type: :bytes, json_name: "serializedPayload"
  field :signatures, 2, repeated: true, type: Grafeas.V1.Signature
  field :jwts, 3, repeated: true, type: Grafeas.V1.Jwt

  def transform_module(), do: nil
end
