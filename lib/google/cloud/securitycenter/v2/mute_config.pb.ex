defmodule Google.Cloud.Securitycenter.V2.MuteConfig.MuteConfigType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MUTE_CONFIG_TYPE_UNSPECIFIED, 0
  field :STATIC, 1
  field :DYNAMIC, 2
end

defmodule Google.Cloud.Securitycenter.V2.MuteConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :filter, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :most_recent_editor, 6, type: :string, json_name: "mostRecentEditor", deprecated: false

  field :type, 8,
    type: Google.Cloud.Securitycenter.V2.MuteConfig.MuteConfigType,
    enum: true,
    deprecated: false

  field :expiry_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "expiryTime",
    deprecated: false
end