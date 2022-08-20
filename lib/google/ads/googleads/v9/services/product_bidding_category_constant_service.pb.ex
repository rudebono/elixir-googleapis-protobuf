defmodule Google.Ads.Googleads.V9.Services.GetProductBiddingCategoryConstantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.ProductBiddingCategoryConstantService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.ProductBiddingCategoryConstantService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetProductBiddingCategoryConstant,
      Google.Ads.Googleads.V9.Services.GetProductBiddingCategoryConstantRequest,
      Google.Ads.Googleads.V9.Resources.ProductBiddingCategoryConstant
end

defmodule Google.Ads.Googleads.V9.Services.ProductBiddingCategoryConstantService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V9.Services.ProductBiddingCategoryConstantService.Service
end