defmodule Google.Cloud.Gkebackup.V1.RestorePlanBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :restore_plan, 5, type: :string, json_name: "restorePlan", deprecated: false
  field :etag, 6, type: :string, deprecated: false
  field :backup_plan, 7, type: :string, json_name: "backupPlan", deprecated: false
end
