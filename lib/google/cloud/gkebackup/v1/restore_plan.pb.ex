defmodule Google.Cloud.Gkebackup.V1.RestorePlan.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CLUSTER_PENDING, 1
  field :READY, 2
  field :FAILED, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Gkebackup.V1.RestorePlan.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gkebackup.V1.RestorePlan do
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

  field :description, 5, type: :string, deprecated: false
  field :backup_plan, 6, type: :string, json_name: "backupPlan", deprecated: false
  field :cluster, 7, type: :string, deprecated: false

  field :restore_config, 8,
    type: Google.Cloud.Gkebackup.V1.RestoreConfig,
    json_name: "restoreConfig",
    deprecated: false

  field :labels, 9,
    repeated: true,
    type: Google.Cloud.Gkebackup.V1.RestorePlan.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 10, type: :string, deprecated: false

  field :state, 11,
    type: Google.Cloud.Gkebackup.V1.RestorePlan.State,
    enum: true,
    deprecated: false

  field :state_reason, 12, type: :string, json_name: "stateReason", deprecated: false
  field :restore_channel, 13, type: :string, json_name: "restoreChannel", deprecated: false
end
