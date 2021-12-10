defmodule Google.Cloud.Recommendationengine.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uris: [String.t()]
        }

  defstruct input_uris: []

  field :input_uris, 1, repeated: true, type: :string, json_name: "inputUris", deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogInlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog_items: [Google.Cloud.Recommendationengine.V1beta1.CatalogItem.t()]
        }

  defstruct catalog_items: []

  field :catalog_items, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem,
    json_name: "catalogItems",
    deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.UserEventInlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_events: [Google.Cloud.Recommendationengine.V1beta1.UserEvent.t()]
        }

  defstruct user_events: []

  field :user_events, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.UserEvent,
    json_name: "userEvents",
    deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_prefix, String.t()}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_prefix, 1, type: :string, json_name: "gcsPrefix", oneof: 0
end
defmodule Google.Cloud.Recommendationengine.V1beta1.ImportCatalogItemsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          request_id: String.t(),
          input_config: Google.Cloud.Recommendationengine.V1beta1.InputConfig.t() | nil,
          errors_config: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig.t() | nil
        }

  defstruct parent: "",
            request_id: "",
            input_config: nil,
            errors_config: nil

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :input_config, 3,
    type: Google.Cloud.Recommendationengine.V1beta1.InputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :errors_config, 4,
    type: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig,
    json_name: "errorsConfig",
    deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.ImportUserEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          request_id: String.t(),
          input_config: Google.Cloud.Recommendationengine.V1beta1.InputConfig.t() | nil,
          errors_config: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig.t() | nil
        }

  defstruct parent: "",
            request_id: "",
            input_config: nil,
            errors_config: nil

  field :parent, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :input_config, 3,
    type: Google.Cloud.Recommendationengine.V1beta1.InputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :errors_config, 4,
    type: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig,
    json_name: "errorsConfig",
    deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:catalog_inline_source,
             Google.Cloud.Recommendationengine.V1beta1.CatalogInlineSource.t() | nil}
            | {:gcs_source, Google.Cloud.Recommendationengine.V1beta1.GcsSource.t() | nil}
            | {:user_event_inline_source,
               Google.Cloud.Recommendationengine.V1beta1.UserEventInlineSource.t() | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :catalog_inline_source, 1,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogInlineSource,
    json_name: "catalogInlineSource",
    oneof: 0

  field :gcs_source, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :user_event_inline_source, 3,
    type: Google.Cloud.Recommendationengine.V1beta1.UserEventInlineSource,
    json_name: "userEventInlineSource",
    oneof: 0
end
defmodule Google.Cloud.Recommendationengine.V1beta1.ImportMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_name: String.t(),
          request_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          success_count: integer,
          failure_count: integer,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct operation_name: "",
            request_id: "",
            create_time: nil,
            success_count: 0,
            failure_count: 0,
            update_time: nil

  field :operation_name, 5, type: :string, json_name: "operationName"
  field :request_id, 3, type: :string, json_name: "requestId"
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :success_count, 1, type: :int64, json_name: "successCount"
  field :failure_count, 2, type: :int64, json_name: "failureCount"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Recommendationengine.V1beta1.ImportCatalogItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()],
          errors_config: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig.t() | nil
        }

  defstruct error_samples: [],
            errors_config: nil

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig,
    json_name: "errorsConfig"
end
defmodule Google.Cloud.Recommendationengine.V1beta1.ImportUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()],
          errors_config: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig.t() | nil,
          import_summary:
            Google.Cloud.Recommendationengine.V1beta1.UserEventImportSummary.t() | nil
        }

  defstruct error_samples: [],
            errors_config: nil,
            import_summary: nil

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status, json_name: "errorSamples"

  field :errors_config, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig,
    json_name: "errorsConfig"

  field :import_summary, 3,
    type: Google.Cloud.Recommendationengine.V1beta1.UserEventImportSummary,
    json_name: "importSummary"
end
defmodule Google.Cloud.Recommendationengine.V1beta1.UserEventImportSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          joined_events_count: integer,
          unjoined_events_count: integer
        }

  defstruct joined_events_count: 0,
            unjoined_events_count: 0

  field :joined_events_count, 1, type: :int64, json_name: "joinedEventsCount"
  field :unjoined_events_count, 2, type: :int64, json_name: "unjoinedEventsCount"
end
