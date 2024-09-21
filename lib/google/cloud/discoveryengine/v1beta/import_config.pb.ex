defmodule Google.Cloud.Discoveryengine.V1beta.BigtableOptions.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :NUMBER, 2
  field :INTEGER, 3
  field :VAR_INTEGER, 4
  field :BIG_NUMERIC, 5
  field :BOOLEAN, 6
  field :JSON, 7
end

defmodule Google.Cloud.Discoveryengine.V1beta.BigtableOptions.Encoding do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ENCODING_UNSPECIFIED, 0
  field :TEXT, 1
  field :BINARY, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportDocumentsRequest.ReconciliationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RECONCILIATION_MODE_UNSPECIFIED, 0
  field :INCREMENTAL, 1
  field :FULL, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :input_uris, 1, repeated: true, type: :string, json_name: "inputUris", deprecated: false
  field :data_schema, 2, type: :string, json_name: "dataSchema"
end

defmodule Google.Cloud.Discoveryengine.V1beta.BigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :partition, 0

  field :partition_date, 5, type: Google.Type.Date, json_name: "partitionDate", oneof: 0
  field :project_id, 1, type: :string, json_name: "projectId"
  field :dataset_id, 2, type: :string, json_name: "datasetId", deprecated: false
  field :table_id, 3, type: :string, json_name: "tableId", deprecated: false
  field :gcs_staging_dir, 4, type: :string, json_name: "gcsStagingDir"
  field :data_schema, 6, type: :string, json_name: "dataSchema"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SpannerSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :database_id, 3, type: :string, json_name: "databaseId", deprecated: false
  field :table_id, 4, type: :string, json_name: "tableId", deprecated: false
  field :enable_data_boost, 5, type: :bool, json_name: "enableDataBoost"
end

defmodule Google.Cloud.Discoveryengine.V1beta.BigtableOptions.BigtableColumnFamily do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName"

  field :encoding, 2,
    type: Google.Cloud.Discoveryengine.V1beta.BigtableOptions.Encoding,
    enum: true

  field :type, 3, type: Google.Cloud.Discoveryengine.V1beta.BigtableOptions.Type, enum: true

  field :columns, 4,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.BigtableOptions.BigtableColumn
end

defmodule Google.Cloud.Discoveryengine.V1beta.BigtableOptions.BigtableColumn do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :qualifier, 1, type: :bytes, deprecated: false
  field :field_name, 2, type: :string, json_name: "fieldName"

  field :encoding, 3,
    type: Google.Cloud.Discoveryengine.V1beta.BigtableOptions.Encoding,
    enum: true

  field :type, 4, type: Google.Cloud.Discoveryengine.V1beta.BigtableOptions.Type, enum: true
end

defmodule Google.Cloud.Discoveryengine.V1beta.BigtableOptions.FamiliesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Discoveryengine.V1beta.BigtableOptions.BigtableColumnFamily
end

defmodule Google.Cloud.Discoveryengine.V1beta.BigtableOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key_field_name, 1, type: :string, json_name: "keyFieldName"

  field :families, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.BigtableOptions.FamiliesEntry,
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1beta.BigtableSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :table_id, 3, type: :string, json_name: "tableId", deprecated: false

  field :bigtable_options, 4,
    type: Google.Cloud.Discoveryengine.V1beta.BigtableOptions,
    json_name: "bigtableOptions",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.FhirStoreSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :fhir_store, 1, type: :string, json_name: "fhirStore", deprecated: false
  field :gcs_staging_dir, 2, type: :string, json_name: "gcsStagingDir"
  field :resource_types, 3, repeated: true, type: :string, json_name: "resourceTypes"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CloudSqlSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :database_id, 3, type: :string, json_name: "databaseId", deprecated: false
  field :table_id, 4, type: :string, json_name: "tableId", deprecated: false
  field :gcs_staging_dir, 5, type: :string, json_name: "gcsStagingDir"
  field :offload, 6, type: :bool
end

defmodule Google.Cloud.Discoveryengine.V1beta.AlloyDbSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :location_id, 2, type: :string, json_name: "locationId", deprecated: false
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: false
  field :database_id, 4, type: :string, json_name: "databaseId", deprecated: false
  field :table_id, 5, type: :string, json_name: "tableId", deprecated: false
  field :gcs_staging_dir, 6, type: :string, json_name: "gcsStagingDir"
end

defmodule Google.Cloud.Discoveryengine.V1beta.FirestoreSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :database_id, 2, type: :string, json_name: "databaseId", deprecated: false
  field :collection_id, 3, type: :string, json_name: "collectionId", deprecated: false
  field :gcs_staging_dir, 4, type: :string, json_name: "gcsStagingDir"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportErrorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_prefix, 1, type: :string, json_name: "gcsPrefix", oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportUserEventsRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_events, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.UserEvent,
    json_name: "userEvents",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportUserEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1beta.ImportUserEventsRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :gcs_source, 3,
    type: Google.Cloud.Discoveryengine.V1beta.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 4,
    type: Google.Cloud.Discoveryengine.V1beta.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :error_config, 5,
    type: Google.Cloud.Discoveryengine.V1beta.ImportErrorConfig,
    json_name: "errorConfig"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportUserEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :error_config, 2,
    type: Google.Cloud.Discoveryengine.V1beta.ImportErrorConfig,
    json_name: "errorConfig"

  field :joined_events_count, 3, type: :int64, json_name: "joinedEventsCount"
  field :unjoined_events_count, 4, type: :int64, json_name: "unjoinedEventsCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportUserEventsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportDocumentsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
  field :total_count, 5, type: :int64, json_name: "totalCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportDocumentsRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :documents, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.Document,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1beta.ImportDocumentsRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :gcs_source, 3,
    type: Google.Cloud.Discoveryengine.V1beta.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 4,
    type: Google.Cloud.Discoveryengine.V1beta.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :fhir_store_source, 10,
    type: Google.Cloud.Discoveryengine.V1beta.FhirStoreSource,
    json_name: "fhirStoreSource",
    oneof: 0

  field :spanner_source, 11,
    type: Google.Cloud.Discoveryengine.V1beta.SpannerSource,
    json_name: "spannerSource",
    oneof: 0

  field :cloud_sql_source, 12,
    type: Google.Cloud.Discoveryengine.V1beta.CloudSqlSource,
    json_name: "cloudSqlSource",
    oneof: 0

  field :firestore_source, 13,
    type: Google.Cloud.Discoveryengine.V1beta.FirestoreSource,
    json_name: "firestoreSource",
    oneof: 0

  field :alloy_db_source, 14,
    type: Google.Cloud.Discoveryengine.V1beta.AlloyDbSource,
    json_name: "alloyDbSource",
    oneof: 0

  field :bigtable_source, 15,
    type: Google.Cloud.Discoveryengine.V1beta.BigtableSource,
    json_name: "bigtableSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :error_config, 5,
    type: Google.Cloud.Discoveryengine.V1beta.ImportErrorConfig,
    json_name: "errorConfig"

  field :reconciliation_mode, 6,
    type: Google.Cloud.Discoveryengine.V1beta.ImportDocumentsRequest.ReconciliationMode,
    json_name: "reconciliationMode",
    enum: true

  field :update_mask, 7, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :auto_generate_ids, 8, type: :bool, json_name: "autoGenerateIds"
  field :id_field, 9, type: :string, json_name: "idField"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportDocumentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :error_config, 2,
    type: Google.Cloud.Discoveryengine.V1beta.ImportErrorConfig,
    json_name: "errorConfig"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportSuggestionDenyListEntriesRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entries, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SuggestionDenyListEntry,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportSuggestionDenyListEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1beta.ImportSuggestionDenyListEntriesRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :gcs_source, 3,
    type: Google.Cloud.Discoveryengine.V1beta.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportSuggestionDenyListEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
  field :imported_entries_count, 2, type: :int64, json_name: "importedEntriesCount"
  field :failed_entries_count, 3, type: :int64, json_name: "failedEntriesCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportSuggestionDenyListEntriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportCompletionSuggestionsRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :suggestions, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.CompletionSuggestion,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportCompletionSuggestionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1beta.ImportCompletionSuggestionsRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :gcs_source, 3,
    type: Google.Cloud.Discoveryengine.V1beta.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 4,
    type: Google.Cloud.Discoveryengine.V1beta.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :error_config, 5,
    type: Google.Cloud.Discoveryengine.V1beta.ImportErrorConfig,
    json_name: "errorConfig"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportCompletionSuggestionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :error_config, 2,
    type: Google.Cloud.Discoveryengine.V1beta.ImportErrorConfig,
    json_name: "errorConfig"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportCompletionSuggestionsMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportSampleQueriesRequest.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sample_queries, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SampleQuery,
    json_name: "sampleQueries",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportSampleQueriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source, 0

  field :inline_source, 2,
    type: Google.Cloud.Discoveryengine.V1beta.ImportSampleQueriesRequest.InlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :gcs_source, 3,
    type: Google.Cloud.Discoveryengine.V1beta.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :bigquery_source, 4,
    type: Google.Cloud.Discoveryengine.V1beta.BigQuerySource,
    json_name: "bigquerySource",
    oneof: 0

  field :parent, 1, type: :string, deprecated: false

  field :error_config, 5,
    type: Google.Cloud.Discoveryengine.V1beta.ImportErrorConfig,
    json_name: "errorConfig"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportSampleQueriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :error_config, 2,
    type: Google.Cloud.Discoveryengine.V1beta.ImportErrorConfig,
    json_name: "errorConfig"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ImportSampleQueriesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
  field :total_count, 5, type: :int64, json_name: "totalCount"
end