defmodule Google.Cloud.Securitycenter.V1.GroupMembership.GroupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :GROUP_TYPE_UNSPECIFIED, 0
  field :GROUP_TYPE_TOXIC_COMBINATION, 1
end

defmodule Google.Cloud.Securitycenter.V1.GroupMembership do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :group_type, 1,
    type: Google.Cloud.Securitycenter.V1.GroupMembership.GroupType,
    json_name: "groupType",
    enum: true

  field :group_id, 2, type: :string, json_name: "groupId"
end