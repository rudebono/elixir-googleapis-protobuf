defmodule Google.Ads.Googleads.V8.Services.GetProductBiddingCategoryConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ProductBiddingCategoryConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.ProductBiddingCategoryConstantService"

  rpc :GetProductBiddingCategoryConstant,
      Google.Ads.Googleads.V8.Services.GetProductBiddingCategoryConstantRequest,
      Google.Ads.Googleads.V8.Resources.ProductBiddingCategoryConstant
end

defmodule Google.Ads.Googleads.V8.Services.ProductBiddingCategoryConstantService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.ProductBiddingCategoryConstantService.Service
end
