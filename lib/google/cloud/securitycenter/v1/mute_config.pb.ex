defmodule Google.Cloud.Securitycenter.V1.MuteConfig.MuteConfigType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MUTE_CONFIG_TYPE_UNSPECIFIED, 0
  field :STATIC, 1
  field :DYNAMIC, 2
end

defmodule Google.Cloud.Securitycenter.V1.MuteConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: true
  field :description, 3, type: :string
  field :filter, 4, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :most_recent_editor, 7, type: :string, json_name: "mostRecentEditor", deprecated: false

  field :type, 8,
    type: Google.Cloud.Securitycenter.V1.MuteConfig.MuteConfigType,
    enum: true,
    deprecated: false

  field :expiry_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "expiryTime",
    deprecated: false
end
