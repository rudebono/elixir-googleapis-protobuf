defmodule Google.Ads.Admanager.V1.Role do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :role_id, 2, proto3_optional: true, type: :int64, json_name: "roleId", deprecated: false

  field :display_name, 3,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :description, 4, proto3_optional: true, type: :string, deprecated: false
  field :built_in, 5, proto3_optional: true, type: :bool, json_name: "builtIn", deprecated: false

  field :status, 6,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.RoleStatusEnum.RoleStatus,
    enum: true,
    deprecated: false
end
