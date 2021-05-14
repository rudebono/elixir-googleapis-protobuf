defmodule Google.Ads.Googleads.V7.Services.GetFeedMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V7.Services.MutateFeedMappingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V7.Services.FeedMappingOperation.t()],
          partial_failure: boolean,
          validate_only: boolean,
          response_content_type:
            Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType.t()
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only, :response_content_type]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.FeedMappingOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V7.Enums.ResponseContentTypeEnum.ResponseContentType,
    enum: true
end

defmodule Google.Ads.Googleads.V7.Services.FeedMappingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V7.Resources.FeedMapping, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V7.Services.MutateFeedMappingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V7.Services.MutateFeedMappingResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V7.Services.MutateFeedMappingResult
end

defmodule Google.Ads.Googleads.V7.Services.MutateFeedMappingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed_mapping: Google.Ads.Googleads.V7.Resources.FeedMapping.t() | nil
        }

  defstruct [:resource_name, :feed_mapping]

  field :resource_name, 1, type: :string
  field :feed_mapping, 2, type: Google.Ads.Googleads.V7.Resources.FeedMapping
end

defmodule Google.Ads.Googleads.V7.Services.FeedMappingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.FeedMappingService"

  rpc :GetFeedMapping,
      Google.Ads.Googleads.V7.Services.GetFeedMappingRequest,
      Google.Ads.Googleads.V7.Resources.FeedMapping

  rpc :MutateFeedMappings,
      Google.Ads.Googleads.V7.Services.MutateFeedMappingsRequest,
      Google.Ads.Googleads.V7.Services.MutateFeedMappingsResponse
end

defmodule Google.Ads.Googleads.V7.Services.FeedMappingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.FeedMappingService.Service
end
