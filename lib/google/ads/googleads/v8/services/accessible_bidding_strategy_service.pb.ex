defmodule Google.Ads.Googleads.V8.Services.GetAccessibleBiddingStrategyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.AccessibleBiddingStrategyService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.AccessibleBiddingStrategyService"

  rpc :GetAccessibleBiddingStrategy,
      Google.Ads.Googleads.V8.Services.GetAccessibleBiddingStrategyRequest,
      Google.Ads.Googleads.V8.Resources.AccessibleBiddingStrategy
end

defmodule Google.Ads.Googleads.V8.Services.AccessibleBiddingStrategyService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.AccessibleBiddingStrategyService.Service
end
