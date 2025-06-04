defmodule Google.Cloud.Discoveryengine.V1.IdentityMappingStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :kms_key_name, 3, type: :string, json_name: "kmsKeyName", deprecated: false

  field :cmek_config, 4,
    type: Google.Cloud.Discoveryengine.V1.CmekConfig,
    json_name: "cmekConfig",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.IdentityMappingEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :identity_provider_id, 0

  field :user_id, 2, type: :string, json_name: "userId", oneof: 0
  field :group_id, 3, type: :string, json_name: "groupId", oneof: 0
  field :external_identity, 1, type: :string, json_name: "externalIdentity", deprecated: false
end
