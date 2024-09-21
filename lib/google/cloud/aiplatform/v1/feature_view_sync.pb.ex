defmodule Google.Cloud.Aiplatform.V1.FeatureViewSync.SyncSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :row_synced, 1, type: :int64, json_name: "rowSynced", deprecated: false
  field :total_slot, 2, type: :int64, json_name: "totalSlot", deprecated: false

  field :system_watermark_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "systemWatermarkTime"
end

defmodule Google.Cloud.Aiplatform.V1.FeatureViewSync do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :run_time, 5, type: Google.Type.Interval, json_name: "runTime", deprecated: false
  field :final_status, 4, type: Google.Rpc.Status, json_name: "finalStatus", deprecated: false

  field :sync_summary, 6,
    type: Google.Cloud.Aiplatform.V1.FeatureViewSync.SyncSummary,
    json_name: "syncSummary",
    deprecated: false

  field :satisfies_pzs, 7, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 8, type: :bool, json_name: "satisfiesPzi", deprecated: false
end