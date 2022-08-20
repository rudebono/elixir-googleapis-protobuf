defmodule Google.Cloud.Retail.V2alpha.ImportProductsRequest.ReconciliationMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RECONCILIATION_MODE_UNSPECIFIED, 0
  field :INCREMENTAL, 1
  field :FULL, 2
end

defmodule Google.Cloud.Retail.V2alpha.GcsSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :input_uris, 1, repeated: true, type: :string, json_name: "inputUris", deprecated: false
  field :data_schema, 2, type: :string, json_name: "dataSchema"
end

defmodule Google.Cloud.Retail.V2alpha.BigQuerySource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :partition, 0

  field :partition_date, 6, type: Google.Type.Date, json_name: "partitionDate", oneof: 0
  field :project_id, 5, type: :string, json_name: "projectId"
  field :dataset_id, 1, type: :string, json_name: "datasetId", deprecated: false
  field :table_id, 2, type: :string, json_name: "tableId", deprecated: false
  field :gcs_staging_dir, 3, type: :string, json_name: "gcsStagingDir"
  field :data_schema, 4, type: :string, json_name: "dataSchema"
end

defmodule Google.Cloud.Retail.V2alpha.ProductInlineSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Product, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.UserEventInlineSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_events, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.UserEvent,
    json_name: "userEvents",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.ImportErrorsConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_prefix, 1, type: :string, json_name: "gcsPrefix", oneof: 0
end

defmodule Google.Cloud.Retail.V2alpha.ImportProductsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 6, type: :string, json_name: "requestId", deprecated: true

  field :input_config, 2,
    type: Google.Cloud.Retail.V2alpha.ProductInputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :errors_config, 3,
    type: Google.Cloud.Retail.V2alpha.ImportErrorsConfig,
    json_name: "errorsConfig"

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :reconciliation_mode, 5,
    type: Google.Cloud.Retail.V2alpha.ImportProductsRequest.ReconciliationMode,
    json_name: "reconciliationMode",
    enum: true

  field :notification_pubsub_topic, 7, type: :string, json_name: "notificationPubsubTopic"
  field :skip_default_branch_protection, 8, type: :bool, json_name: "skipDefaultBranchProtection"
end

defmodule Google.Cloud.Retail.V2alpha.ImportUserEventsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Retail.V2alpha.UserEventInputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :errors_config, 3,
    type: Google.Cloud.Retail.V2alpha.ImportErrorsConfig,
    json_name: "errorsConfig"
end

defmodule Google.Cloud.Retail.V2alpha.ImportCompletionDataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Retail.V2alpha.CompletionDataInputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :notification_pubsub_topic, 3, type: :string, json_name: "notificationPubsubTopic"
end

defmodule Google.Cloud.Retail.V2alpha.ProductInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :product_inline_source, 1,
    type: Google.Cloud.Retail.V2alpha.ProductInlineSource,
    json_name: "productInlineSource",
    oneof: 0

  field :gcs_source, 2,
    type: Google.Cloud.Retail.V2alpha.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :big_query_source, 3,
    type: Google.Cloud.Retail.V2alpha.BigQuerySource,
    json_name: "bigQuerySource",
    oneof: 0
end

defmodule Google.Cloud.Retail.V2alpha.UserEventInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :user_event_inline_source, 1,
    type: Google.Cloud.Retail.V2alpha.UserEventInlineSource,
    json_name: "userEventInlineSource",
    oneof: 0,
    deprecated: false

  field :gcs_source, 2,
    type: Google.Cloud.Retail.V2alpha.GcsSource,
    json_name: "gcsSource",
    oneof: 0,
    deprecated: false

  field :big_query_source, 3,
    type: Google.Cloud.Retail.V2alpha.BigQuerySource,
    json_name: "bigQuerySource",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.CompletionDataInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :big_query_source, 1,
    type: Google.Cloud.Retail.V2alpha.BigQuerySource,
    json_name: "bigQuerySource",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.ImportMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: true
  field :notification_pubsub_topic, 6, type: :string, json_name: "notificationPubsubTopic"
end

defmodule Google.Cloud.Retail.V2alpha.ImportProductsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Retail.V2alpha.ImportErrorsConfig,
    json_name: "errorsConfig"
end

defmodule Google.Cloud.Retail.V2alpha.ImportUserEventsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Retail.V2alpha.ImportErrorsConfig,
    json_name: "errorsConfig"

  field :import_summary, 3,
    type: Google.Cloud.Retail.V2alpha.UserEventImportSummary,
    json_name: "importSummary"
end

defmodule Google.Cloud.Retail.V2alpha.UserEventImportSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :joined_events_count, 1, type: :int64, json_name: "joinedEventsCount"
  field :unjoined_events_count, 2, type: :int64, json_name: "unjoinedEventsCount"
end

defmodule Google.Cloud.Retail.V2alpha.ImportCompletionDataResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
end