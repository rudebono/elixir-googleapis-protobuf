defmodule Google.Ads.Googleads.V5.Services.GetFeedMappingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.MutateFeedMappingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V5.Services.FeedMappingOperation.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.FeedMappingOperation

  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V5.Services.FeedMappingOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any}
        }

  defstruct [:operation]

  oneof :operation, 0
  field :create, 1, type: Google.Ads.Googleads.V5.Resources.FeedMapping, oneof: 0
  field :remove, 3, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.MutateFeedMappingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V5.Services.MutateFeedMappingResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 3, type: Google.Rpc.Status

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.MutateFeedMappingResult
end

defmodule Google.Ads.Googleads.V5.Services.MutateFeedMappingResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.FeedMappingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.FeedMappingService"

  rpc :GetFeedMapping,
      Google.Ads.Googleads.V5.Services.GetFeedMappingRequest,
      Google.Ads.Googleads.V5.Resources.FeedMapping

  rpc :MutateFeedMappings,
      Google.Ads.Googleads.V5.Services.MutateFeedMappingsRequest,
      Google.Ads.Googleads.V5.Services.MutateFeedMappingsResponse
end

defmodule Google.Ads.Googleads.V5.Services.FeedMappingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.FeedMappingService.Service
end
