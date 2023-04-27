defmodule Google.Cloud.Aiplatform.V1beta1.EntityType.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.EntityType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.EntityType.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 7, type: :string, deprecated: false

  field :monitoring_config, 8,
    type: Google.Cloud.Aiplatform.V1beta1.FeaturestoreMonitoringConfig,
    json_name: "monitoringConfig",
    deprecated: false

  field :offline_storage_ttl_days, 10,
    type: :int32,
    json_name: "offlineStorageTtlDays",
    deprecated: false
end