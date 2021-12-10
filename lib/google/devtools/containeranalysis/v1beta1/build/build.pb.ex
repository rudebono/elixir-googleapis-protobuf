defmodule Grafeas.V1beta1.Build.BuildSignature.KeyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :KEY_TYPE_UNSPECIFIED | :PGP_ASCII_ARMORED | :PKIX_PEM

  field :KEY_TYPE_UNSPECIFIED, 0
  field :PGP_ASCII_ARMORED, 1
  field :PKIX_PEM, 2
end
defmodule Grafeas.V1beta1.Build.Build do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          builder_version: String.t(),
          signature: Grafeas.V1beta1.Build.BuildSignature.t() | nil
        }

  defstruct builder_version: "",
            signature: nil

  field :builder_version, 1, type: :string, json_name: "builderVersion"
  field :signature, 2, type: Grafeas.V1beta1.Build.BuildSignature
end
defmodule Grafeas.V1beta1.Build.BuildSignature do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          public_key: String.t(),
          signature: binary,
          key_id: String.t(),
          key_type: Grafeas.V1beta1.Build.BuildSignature.KeyType.t()
        }

  defstruct public_key: "",
            signature: "",
            key_id: "",
            key_type: :KEY_TYPE_UNSPECIFIED

  field :public_key, 1, type: :string, json_name: "publicKey"
  field :signature, 2, type: :bytes
  field :key_id, 3, type: :string, json_name: "keyId"

  field :key_type, 4,
    type: Grafeas.V1beta1.Build.BuildSignature.KeyType,
    json_name: "keyType",
    enum: true
end
defmodule Grafeas.V1beta1.Build.Details do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          provenance: Grafeas.V1beta1.Provenance.BuildProvenance.t() | nil,
          provenance_bytes: String.t()
        }

  defstruct provenance: nil,
            provenance_bytes: ""

  field :provenance, 1, type: Grafeas.V1beta1.Provenance.BuildProvenance
  field :provenance_bytes, 2, type: :string, json_name: "provenanceBytes"
end
