defmodule Grafeas.V1beta1.Build.BuildSignature.KeyType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :KEY_TYPE_UNSPECIFIED, 0
  field :PGP_ASCII_ARMORED, 1
  field :PKIX_PEM, 2
end
defmodule Grafeas.V1beta1.Build.Build do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :builder_version, 1, type: :string, json_name: "builderVersion"
  field :signature, 2, type: Grafeas.V1beta1.Build.BuildSignature
end
defmodule Grafeas.V1beta1.Build.BuildSignature do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :provenance, 1, type: Grafeas.V1beta1.Provenance.BuildProvenance
  field :provenance_bytes, 2, type: :string, json_name: "provenanceBytes"
end
