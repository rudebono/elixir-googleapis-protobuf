defmodule Google.Cloud.Recommendationengine.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_uris: [String.t()]
        }

  defstruct [:input_uris]

  field :input_uris, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogInlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog_items: [Google.Cloud.Recommendationengine.V1beta1.CatalogItem.t()]
        }

  defstruct [:catalog_items]

  field :catalog_items, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem
end

defmodule Google.Cloud.Recommendationengine.V1beta1.UserEventInlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_events: [Google.Cloud.Recommendationengine.V1beta1.UserEvent.t()]
        }

  defstruct [:user_events]

  field :user_events, 1, repeated: true, type: Google.Cloud.Recommendationengine.V1beta1.UserEvent
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_prefix, 1, type: :string, oneof: 0
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

  defstruct [:parent, :request_id, :input_config, :errors_config]

  field :parent, 1, type: :string
  field :request_id, 2, type: :string
  field :input_config, 3, type: Google.Cloud.Recommendationengine.V1beta1.InputConfig
  field :errors_config, 4, type: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig
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

  defstruct [:parent, :request_id, :input_config, :errors_config]

  field :parent, 1, type: :string
  field :request_id, 2, type: :string
  field :input_config, 3, type: Google.Cloud.Recommendationengine.V1beta1.InputConfig
  field :errors_config, 4, type: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig
end

defmodule Google.Cloud.Recommendationengine.V1beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0

  field :catalog_inline_source, 1,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogInlineSource,
    oneof: 0

  field :gcs_source, 2, type: Google.Cloud.Recommendationengine.V1beta1.GcsSource, oneof: 0

  field :user_event_inline_source, 3,
    type: Google.Cloud.Recommendationengine.V1beta1.UserEventInlineSource,
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

  defstruct [
    :operation_name,
    :request_id,
    :create_time,
    :success_count,
    :failure_count,
    :update_time
  ]

  field :operation_name, 5, type: :string
  field :request_id, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :success_count, 1, type: :int64
  field :failure_count, 2, type: :int64
  field :update_time, 6, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ImportCatalogItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_samples: [Google.Rpc.Status.t()],
          errors_config: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig.t() | nil
        }

  defstruct [:error_samples, :errors_config]

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status
  field :errors_config, 2, type: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig
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

  defstruct [:error_samples, :errors_config, :import_summary]

  field :error_samples, 1, repeated: true, type: Google.Rpc.Status
  field :errors_config, 2, type: Google.Cloud.Recommendationengine.V1beta1.ImportErrorsConfig
  field :import_summary, 3, type: Google.Cloud.Recommendationengine.V1beta1.UserEventImportSummary
end

defmodule Google.Cloud.Recommendationengine.V1beta1.UserEventImportSummary do
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
