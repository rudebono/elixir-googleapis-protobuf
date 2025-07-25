defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataAgent.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Geminidataanalytics.V1alpha.DataAgent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :data_analytics_agent, 101,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DataAnalyticsAgent,
    json_name: "dataAnalyticsAgent",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Geminidataanalytics.V1alpha.DataAgent.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :purge_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "purgeTime",
    deprecated: false
end
