defmodule Google.Ads.Googleads.V9.Services.GetAccessibleBiddingStrategyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.AccessibleBiddingStrategyService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.AccessibleBiddingStrategyService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetAccessibleBiddingStrategy,
      Google.Ads.Googleads.V9.Services.GetAccessibleBiddingStrategyRequest,
      Google.Ads.Googleads.V9.Resources.AccessibleBiddingStrategy
end

defmodule Google.Ads.Googleads.V9.Services.AccessibleBiddingStrategyService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V9.Services.AccessibleBiddingStrategyService.Service
end