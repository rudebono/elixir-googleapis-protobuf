defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.EventType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :CONFIG, 1
  field :ENTITY_CREATED, 2
  field :ENTITY_UPDATED, 3
  field :ENTITY_DELETED, 4
  field :PARTITION_CREATED, 5
  field :PARTITION_UPDATED, 6
  field :PARTITION_DELETED, 7
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ENTITY_TYPE_UNSPECIFIED, 0
  field :TABLE, 1
  field :FILESET, 2
end

defmodule Google.Cloud.Dataplex.V1.JobEvent.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :SPARK, 1
  field :NOTEBOOK, 2
end

defmodule Google.Cloud.Dataplex.V1.JobEvent.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
  field :CANCELLED, 3
  field :ABORTED, 4
end

defmodule Google.Cloud.Dataplex.V1.JobEvent.Service do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SERVICE_UNSPECIFIED, 0
  field :DATAPROC, 1
end

defmodule Google.Cloud.Dataplex.V1.SessionEvent.EventType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :START, 1
  field :STOP, 2
  field :QUERY, 3
  field :CREATE, 4
end

defmodule Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail.Engine do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ENGINE_UNSPECIFIED, 0
  field :SPARK_SQL, 1
  field :BIGQUERY, 2
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails.ParametersEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parameters, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails.ParametersEntry,
    map: true
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entity, 1, type: :string
  field :type, 2, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType, enum: true
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.PartitionDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partition, 1, type: :string
  field :entity, 2, type: :string
  field :type, 3, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityType, enum: true

  field :sampled_data_locations, 4,
    repeated: true,
    type: :string,
    json_name: "sampledDataLocations"
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent.ActionDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 1, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DiscoveryEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :details, 0

  field :message, 1, type: :string
  field :lake_id, 2, type: :string, json_name: "lakeId"
  field :zone_id, 3, type: :string, json_name: "zoneId"
  field :asset_id, 4, type: :string, json_name: "assetId"
  field :data_location, 5, type: :string, json_name: "dataLocation"
  field :type, 10, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EventType, enum: true
  field :config, 20, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.ConfigDetails, oneof: 0
  field :entity, 21, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.EntityDetails, oneof: 0
  field :partition, 22, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.PartitionDetails, oneof: 0
  field :action, 23, type: Google.Cloud.Dataplex.V1.DiscoveryEvent.ActionDetails, oneof: 0
end

defmodule Google.Cloud.Dataplex.V1.JobEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :string
  field :job_id, 2, type: :string, json_name: "jobId"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :state, 5, type: Google.Cloud.Dataplex.V1.JobEvent.State, enum: true
  field :retries, 6, type: :int32
  field :type, 7, type: Google.Cloud.Dataplex.V1.JobEvent.Type, enum: true
  field :service, 8, type: Google.Cloud.Dataplex.V1.JobEvent.Service, enum: true
  field :service_job, 9, type: :string, json_name: "serviceJob"
end

defmodule Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :query_id, 1, type: :string, json_name: "queryId"
  field :query_text, 2, type: :string, json_name: "queryText"
  field :engine, 3, type: Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail.Engine, enum: true
  field :duration, 4, type: Google.Protobuf.Duration
  field :result_size_bytes, 5, type: :int64, json_name: "resultSizeBytes"
  field :data_processed_bytes, 6, type: :int64, json_name: "dataProcessedBytes"
end

defmodule Google.Cloud.Dataplex.V1.SessionEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :detail, 0

  field :message, 1, type: :string
  field :user_id, 2, type: :string, json_name: "userId"
  field :session_id, 3, type: :string, json_name: "sessionId"
  field :type, 4, type: Google.Cloud.Dataplex.V1.SessionEvent.EventType, enum: true
  field :query, 5, type: Google.Cloud.Dataplex.V1.SessionEvent.QueryDetail, oneof: 0
  field :event_succeeded, 6, type: :bool, json_name: "eventSucceeded"
  field :warm_pool_enabled, 7, type: :bool, json_name: "warmPoolEnabled"
  field :unassigned_duration, 8, type: Google.Protobuf.Duration, json_name: "unassignedDuration"
end