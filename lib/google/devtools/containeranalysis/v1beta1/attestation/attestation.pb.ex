defmodule Grafeas.V1beta1.Attestation.PgpSignedAttestation.ContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CONTENT_TYPE_UNSPECIFIED | :SIMPLE_SIGNING_JSON

  field :CONTENT_TYPE_UNSPECIFIED, 0
  field :SIMPLE_SIGNING_JSON, 1
end
defmodule Grafeas.V1beta1.Attestation.GenericSignedAttestation.ContentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CONTENT_TYPE_UNSPECIFIED | :SIMPLE_SIGNING_JSON

  field :CONTENT_TYPE_UNSPECIFIED, 0
  field :SIMPLE_SIGNING_JSON, 1
end
defmodule Grafeas.V1beta1.Attestation.PgpSignedAttestation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_id: {:pgp_key_id, String.t()},
          signature: String.t(),
          content_type: Grafeas.V1beta1.Attestation.PgpSignedAttestation.ContentType.t()
        }

  defstruct key_id: nil,
            signature: "",
            content_type: :CONTENT_TYPE_UNSPECIFIED

  oneof :key_id, 0

  field :signature, 1, type: :string

  field :content_type, 3,
    type: Grafeas.V1beta1.Attestation.PgpSignedAttestation.ContentType,
    json_name: "contentType",
    enum: true

  field :pgp_key_id, 2, type: :string, json_name: "pgpKeyId", oneof: 0
end
defmodule Grafeas.V1beta1.Attestation.GenericSignedAttestation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content_type: Grafeas.V1beta1.Attestation.GenericSignedAttestation.ContentType.t(),
          serialized_payload: binary,
          signatures: [Grafeas.V1beta1.Signature.t()]
        }

  defstruct content_type: :CONTENT_TYPE_UNSPECIFIED,
            serialized_payload: "",
            signatures: []

  field :content_type, 1,
    type: Grafeas.V1beta1.Attestation.GenericSignedAttestation.ContentType,
    json_name: "contentType",
    enum: true

  field :serialized_payload, 2, type: :bytes, json_name: "serializedPayload"
  field :signatures, 3, repeated: true, type: Grafeas.V1beta1.Signature
end
defmodule Grafeas.V1beta1.Attestation.Authority.Hint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          human_readable_name: String.t()
        }

  defstruct human_readable_name: ""

  field :human_readable_name, 1, type: :string, json_name: "humanReadableName"
end
defmodule Grafeas.V1beta1.Attestation.Authority do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hint: Grafeas.V1beta1.Attestation.Authority.Hint.t() | nil
        }

  defstruct hint: nil

  field :hint, 1, type: Grafeas.V1beta1.Attestation.Authority.Hint
end
defmodule Grafeas.V1beta1.Attestation.Details do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attestation: Grafeas.V1beta1.Attestation.Attestation.t() | nil
        }

  defstruct attestation: nil

  field :attestation, 1, type: Grafeas.V1beta1.Attestation.Attestation
end
defmodule Grafeas.V1beta1.Attestation.Attestation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          signature:
            {:pgp_signed_attestation, Grafeas.V1beta1.Attestation.PgpSignedAttestation.t() | nil}
            | {:generic_signed_attestation,
               Grafeas.V1beta1.Attestation.GenericSignedAttestation.t() | nil}
        }

  defstruct signature: nil

  oneof :signature, 0

  field :pgp_signed_attestation, 1,
    type: Grafeas.V1beta1.Attestation.PgpSignedAttestation,
    json_name: "pgpSignedAttestation",
    oneof: 0

  field :generic_signed_attestation, 2,
    type: Grafeas.V1beta1.Attestation.GenericSignedAttestation,
    json_name: "genericSignedAttestation",
    oneof: 0
end
