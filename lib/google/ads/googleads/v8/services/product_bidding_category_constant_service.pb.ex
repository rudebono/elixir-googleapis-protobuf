defmodule Google.Ads.Googleads.V8.Services.GetProductBiddingCategoryConstantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.ProductBiddingCategoryConstantService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.ProductBiddingCategoryConstantService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetProductBiddingCategoryConstant,
      Google.Ads.Googleads.V8.Services.GetProductBiddingCategoryConstantRequest,
      Google.Ads.Googleads.V8.Resources.ProductBiddingCategoryConstant
end

defmodule Google.Ads.Googleads.V8.Services.ProductBiddingCategoryConstantService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.ProductBiddingCategoryConstantService.Service
end
