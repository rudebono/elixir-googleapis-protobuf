defmodule Google.Ads.Googleads.V7.Services.GetExtensionFeedItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateExtensionFeedItemsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.ExtensionFeedItemOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string, json_name: "customerId"

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.ExtensionFeedItemOperation

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true,
    json_name: "responseContentType"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.ExtensionFeedItemOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.ExtensionFeedItem.t() | nil}
            | {:update, Google.Ads.Googleads.V7.Resources.ExtensionFeedItem.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.ExtensionFeedItem, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V7.Resources.ExtensionFeedItem, oneof: 0
  field :remove, 3, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateExtensionFeedItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateExtensionFeedItemResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateExtensionFeedItemResult

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.MutateExtensionFeedItemResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          extension_feed_item: Google.Ads.Googleads.V7.Resources.ExtensionFeedItem.t() | nil
        }

  defstruct [:resource_name, :extension_feed_item]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :extension_feed_item, 2,
    type: Google.Ads.Googleads.V7.Resources.ExtensionFeedItem,
    json_name: "extensionFeedItem"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.ExtensionFeedItemService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.ExtensionFeedItemService"

  rpc :GetExtensionFeedItem,
      Google.Ads.Googleads.V7.Services.GetExtensionFeedItemRequest,
      Google.Ads.Googleads.V7.Resources.ExtensionFeedItem

  rpc :MutateExtensionFeedItems,
      Google.Ads.Googleads.V7.Services.MutateExtensionFeedItemsRequest,
      Google.Ads.Googleads.V7.Services.MutateExtensionFeedItemsResponse
end

defmodule Google.Ads.Googleads.V7.Services.ExtensionFeedItemService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.ExtensionFeedItemService.Service
end
