defmodule Google.Cloud.Retail.V2alpha.ImportProductsRequest.ReconciliationMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RECONCILIATION_MODE_UNSPECIFIED | :INCREMENTAL | :FULL

  field :RECONCILIATION_MODE_UNSPECIFIED, 0

  field :INCREMENTAL, 1

  field :FULL, 2
end

defmodule Google.Cloud.Retail.V2alpha.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uris: [String.t()],
          data_schema: String.t()
        }

  defstruct [:input_uris, :data_schema]

  field :input_uris, 1, repeated: true, type: :string
  field :data_schema, 2, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.BigQuerySource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition: {atom, any},
          project_id: String.t(),
          dataset_id: String.t(),
          table_id: String.t(),
          gcs_staging_dir: String.t(),
          data_schema: String.t()
        }

  defstruct [:partition, :project_id, :dataset_id, :table_id, :gcs_staging_dir, :data_schema]

  oneof :partition, 0
  field :partition_date, 6, type: Google.Type.Date, oneof: 0
  field :project_id, 5, type: :string
  field :dataset_id, 1, type: :string
  field :table_id, 2, type: :string
  field :gcs_staging_dir, 3, type: :string
  field :data_schema, 4, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.ProductInlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          products: [Google.Cloud.Retail.V2alpha.Product.t()]
        }

  defstruct [:products]

  field :products, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Product
end

defmodule Google.Cloud.Retail.V2alpha.UserEventInlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_events: [Google.Cloud.Retail.V2alpha.UserEvent.t()]
        }

  defstruct [:user_events]

  field :user_events, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.UserEvent
end

defmodule Google.Cloud.Retail.V2alpha.ImportErrorsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_prefix, 1, type: :string, oneof: 0
end

defmodule Google.Cloud.Retail.V2alpha.ImportProductsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          request_id: String.t(),
          input_config: Google.Cloud.Retail.V2alpha.ProductInputConfig.t() | nil,
          errors_config: Google.Cloud.Retail.V2alpha.ImportErrorsConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          reconciliation_mode:
            Google.Cloud.Retail.V2alpha.ImportProductsRequest.ReconciliationMode.t(),
          notification_pubsub_topic: String.t()
        }

  defstruct [
    :parent,
    :request_id,
    :input_config,
    :errors_config,
    :update_mask,
    :reconciliation_mode,
    :notification_pubsub_topic
  ]

  field :parent, 1, type: :string
  field :request_id, 6, type: :string
  field :input_config, 2, type: Google.Cloud.Retail.V2alpha.ProductInputConfig
  field :errors_config, 3, type: Google.Cloud.Retail.V2alpha.ImportErrorsConfig
  field :update_mask, 4, type: Google.Protobuf.FieldMask

  field :reconciliation_mode, 5,
    type: Google.Cloud.Retail.V2alpha.ImportProductsRequest.ReconciliationMode,
    enum: true

  field :notification_pubsub_topic, 7, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.ImportUserEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          input_config: Google.Cloud.Retail.V2alpha.UserEventInputConfig.t() | nil,
          errors_config: Google.Cloud.Retail.V2alpha.ImportErrorsConfig.t() | nil
        }

  defstruct [:parent, :input_config, :errors_config]

  field :parent, 1, type: :string
  field :input_config, 2, type: Google.Cloud.Retail.V2alpha.UserEventInputConfig
  field :errors_config, 3, type: Google.Cloud.Retail.V2alpha.ImportErrorsConfig
end

defmodule Google.Cloud.Retail.V2alpha.ImportCompletionDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          input_config: Google.Cloud.Retail.V2alpha.CompletionDataInputConfig.t() | nil,
          notification_pubsub_topic: String.t()
        }

  defstruct [:parent, :input_config, :notification_pubsub_topic]

  field :parent, 1, type: :string
  field :input_config, 2, type: Google.Cloud.Retail.V2alpha.CompletionDataInputConfig
  field :notification_pubsub_topic, 3, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.ProductInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0
  field :product_inline_source, 1, type: Google.Cloud.Retail.V2alpha.ProductInlineSource, oneof: 0
  field :gcs_source, 2, type: Google.Cloud.Retail.V2alpha.GcsSource, oneof: 0
  field :big_query_source, 3, type: Google.Cloud.Retail.V2alpha.BigQuerySource, oneof: 0
end

defmodule Google.Cloud.Retail.V2alpha.UserEventInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0

  field :user_event_inline_source, 1,
    type: Google.Cloud.Retail.V2alpha.UserEventInlineSource,
    oneof: 0

  field :gcs_source, 2, type: Google.Cloud.Retail.V2alpha.GcsSource, oneof: 0
  field :big_query_source, 3, type: Google.Cloud.Retail.V2alpha.BigQuerySource, oneof: 0
end

defmodule Google.Cloud.Retail.V2alpha.CompletionDataInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0
  field :big_query_source, 1, type: Google.Cloud.Retail.V2alpha.BigQuerySource, oneof: 0
end

defmodule Google.Cloud.Retail.V2alpha.ImportMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          success_count: integer,
          failure_count: integer,
          request_id: String.t(),
          notification_pubsub_topic: String.t()
        }

  defstruct [
    :create_time,
    :update_time,
    :success_count,
    :failure_count,
    :request_id,
    :notification_pubsub_topic
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :update_time, 2, type: Google.Protobuf.Timestamp
  field :success_count, 3, type: :int64
  field :failure_count, 4, type: :int64
  field :request_id, 5, type: :string
  field :notification_pubsub_topic, 6, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.ImportProductsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()],
          errors_config: Google.Cloud.Retail.V2alpha.ImportErrorsConfig.t() | nil
        }

  defstruct [:error_samples, :errors_config]

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status
  field :errors_config, 2, type: Google.Cloud.Retail.V2alpha.ImportErrorsConfig
end

defmodule Google.Cloud.Retail.V2alpha.ImportUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()],
          errors_config: Google.Cloud.Retail.V2alpha.ImportErrorsConfig.t() | nil,
          import_summary: Google.Cloud.Retail.V2alpha.UserEventImportSummary.t() | nil
        }

  defstruct [:error_samples, :errors_config, :import_summary]

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status
  field :errors_config, 2, type: Google.Cloud.Retail.V2alpha.ImportErrorsConfig
  field :import_summary, 3, type: Google.Cloud.Retail.V2alpha.UserEventImportSummary
end

defmodule Google.Cloud.Retail.V2alpha.UserEventImportSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          joined_events_count: integer,
          unjoined_events_count: integer
        }

  defstruct [:joined_events_count, :unjoined_events_count]

  field :joined_events_count, 1, type: :int64
  field :unjoined_events_count, 2, type: :int64
end

defmodule Google.Cloud.Retail.V2alpha.ImportCompletionDataResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()]
        }

  defstruct [:error_samples]

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status
end
