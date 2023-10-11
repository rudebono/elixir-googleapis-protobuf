defmodule Google.Cloud.Discoveryengine.V1alpha.ImportDocumentsRequest.ReconciliationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :RECONCILIATION_MODE_UNSPECIFIED, 0
  field :INCREMENTAL, 1
  field :FULL, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input_uris, 1, repeated: true, type: :string, json_name: "inputUris", deprecated: false
  field :data_schema, 2, type: :string, json_name: "dataSchema"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.BigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :partition, 0

  field :partition_date, 5, type: Google.Type.Date, json_name: "partitionDate", oneof: 0
  field :project_id, 1, type: :string, json_name: "projectId"
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :table_id, 3, type: :string, json_name: "tableId", deprecated: false
  field :gcs_staging_dir, 4, type: :string, json_name: "gcsStagingDir"
  field :data_schema, 6, type: :string, json_name: "dataSchema"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImportErrorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_prefix, 1, type: :string, json_name: "gcsPrefix", oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImportUserEventsRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_events, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.UserEvent,
    json_name: "userEvents",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImportUserEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.ImportUserEventsRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :gcs_source, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :error_config, 5,
    type: Google.Cloud.Discoveryengine.V1alpha.ImportErrorConfig,
    json_name: "errorConfig"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImportUserEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :error_config, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.ImportErrorConfig,
    json_name: "errorConfig"

  field :joined_events_count, 3, type: :int64, json_name: "joinedEventsCount"
  field :unjoined_events_count, 4, type: :int64, json_name: "unjoinedEventsCount"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImportUserEventsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImportDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImportDocumentsRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :documents, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.Document,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImportDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.ImportDocumentsRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :gcs_source, 3,
    type: Google.Cloud.Discoveryengine.V1alpha.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 4,
    type: Google.Cloud.Discoveryengine.V1alpha.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :error_config, 5,
    type: Google.Cloud.Discoveryengine.V1alpha.ImportErrorConfig,
    json_name: "errorConfig"

  field :reconciliation_mode, 6,
    type: Google.Cloud.Discoveryengine.V1alpha.ImportDocumentsRequest.ReconciliationMode,
    json_name: "reconciliationMode",
    enum: true

  field :auto_generate_ids, 8, type: :bool, json_name: "autoGenerateIds"
  field :id_field, 9, type: :string, json_name: "idField"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ImportDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :error_config, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.ImportErrorConfig,
    json_name: "errorConfig"
end