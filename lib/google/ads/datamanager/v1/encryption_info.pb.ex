defmodule Google.Ads.Datamanager.V1.GcpWrappedKeyInfo.KeyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :KEY_TYPE_UNSPECIFIED, 0
  field :XCHACHA20_POLY1305, 1
end

defmodule Google.Ads.Datamanager.V1.EncryptionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :wrapped_key, 0

  field :gcp_wrapped_key_info, 1,
    type: Google.Ads.Datamanager.V1.GcpWrappedKeyInfo,
    json_name: "gcpWrappedKeyInfo",
    oneof: 0
end

defmodule Google.Ads.Datamanager.V1.GcpWrappedKeyInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key_type, 1,
    type: Google.Ads.Datamanager.V1.GcpWrappedKeyInfo.KeyType,
    json_name: "keyType",
    enum: true,
    deprecated: false

  field :wip_provider, 2, type: :string, json_name: "wipProvider", deprecated: false
  field :kek_uri, 3, type: :string, json_name: "kekUri", deprecated: false
  field :encrypted_dek, 4, type: :string, json_name: "encryptedDek", deprecated: false
end
