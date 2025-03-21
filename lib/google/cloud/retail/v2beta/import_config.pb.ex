defmodule Google.Cloud.Retail.V2beta.ImportProductsRequest.ReconciliationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RECONCILIATION_MODE_UNSPECIFIED, 0
  field :INCREMENTAL, 1
  field :FULL, 2
end

defmodule Google.Cloud.Retail.V2beta.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :input_uris, 1, repeated: true, type: :string, json_name: "inputUris", deprecated: false
  field :data_schema, 2, type: :string, json_name: "dataSchema"
end

defmodule Google.Cloud.Retail.V2beta.BigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :partition, 0

  field :partition_date, 6, type: Google.Type.Date, json_name: "partitionDate", oneof: 0
  field :project_id, 5, type: :string, json_name: "projectId"
  field :dataset_id, 1, type: :string, json_name: "datasetId", deprecated: false
  field :table_id, 2, type: :string, json_name: "tableId", deprecated: false
  field :gcs_staging_dir, 3, type: :string, json_name: "gcsStagingDir"
  field :data_schema, 4, type: :string, json_name: "dataSchema"
end

defmodule Google.Cloud.Retail.V2beta.ProductInlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Cloud.Retail.V2beta.Product, deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.UserEventInlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_events, 1,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.UserEvent,
    json_name: "userEvents",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ImportErrorsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :destination, 0

  field :gcs_prefix, 1, type: :string, json_name: "gcsPrefix", oneof: 0
end

defmodule Google.Cloud.Retail.V2beta.ImportProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 6, type: :string, json_name: "requestId", deprecated: true

  field :input_config, 2,
    type: Google.Cloud.Retail.V2beta.ProductInputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :errors_config, 3,
    type: Google.Cloud.Retail.V2beta.ImportErrorsConfig,
    json_name: "errorsConfig"

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :reconciliation_mode, 5,
    type: Google.Cloud.Retail.V2beta.ImportProductsRequest.ReconciliationMode,
    json_name: "reconciliationMode",
    enum: true

  field :notification_pubsub_topic, 7, type: :string, json_name: "notificationPubsubTopic"
end

defmodule Google.Cloud.Retail.V2beta.ImportUserEventsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Retail.V2beta.UserEventInputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :errors_config, 3,
    type: Google.Cloud.Retail.V2beta.ImportErrorsConfig,
    json_name: "errorsConfig"
end

defmodule Google.Cloud.Retail.V2beta.ImportCompletionDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Retail.V2beta.CompletionDataInputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :notification_pubsub_topic, 3, type: :string, json_name: "notificationPubsubTopic"
end

defmodule Google.Cloud.Retail.V2beta.ProductInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :product_inline_source, 1,
    type: Google.Cloud.Retail.V2beta.ProductInlineSource,
    json_name: "productInlineSource",
    oneof: 0

  field :gcs_source, 2,
    type: Google.Cloud.Retail.V2beta.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :big_query_source, 3,
    type: Google.Cloud.Retail.V2beta.BigQuerySource,
    json_name: "bigQuerySource",
    oneof: 0
end

defmodule Google.Cloud.Retail.V2beta.UserEventInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :user_event_inline_source, 1,
    type: Google.Cloud.Retail.V2beta.UserEventInlineSource,
    json_name: "userEventInlineSource",
    oneof: 0,
    deprecated: false

  field :gcs_source, 2,
    type: Google.Cloud.Retail.V2beta.GcsSource,
    json_name: "gcsSource",
    oneof: 0,
    deprecated: false

  field :big_query_source, 3,
    type: Google.Cloud.Retail.V2beta.BigQuerySource,
    json_name: "bigQuerySource",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.CompletionDataInputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :big_query_source, 1,
    type: Google.Cloud.Retail.V2beta.BigQuerySource,
    json_name: "bigQuerySource",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.ImportMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :success_count, 3, type: :int64, json_name: "successCount"
  field :failure_count, 4, type: :int64, json_name: "failureCount"
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: true
  field :notification_pubsub_topic, 6, type: :string, json_name: "notificationPubsubTopic"
end

defmodule Google.Cloud.Retail.V2beta.ImportProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Retail.V2beta.ImportErrorsConfig,
    json_name: "errorsConfig"
end

defmodule Google.Cloud.Retail.V2beta.ImportUserEventsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Retail.V2beta.ImportErrorsConfig,
    json_name: "errorsConfig"

  field :import_summary, 3,
    type: Google.Cloud.Retail.V2beta.UserEventImportSummary,
    json_name: "importSummary"
end

defmodule Google.Cloud.Retail.V2beta.UserEventImportSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :joined_events_count, 1, type: :int64, json_name: "joinedEventsCount"
  field :unjoined_events_count, 2, type: :int64, json_name: "unjoinedEventsCount"
end

defmodule Google.Cloud.Retail.V2beta.ImportCompletionDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"
end
