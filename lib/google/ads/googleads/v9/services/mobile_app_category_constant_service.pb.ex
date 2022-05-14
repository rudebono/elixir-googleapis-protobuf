defmodule Google.Ads.Googleads.V9.Services.GetMobileAppCategoryConstantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.MobileAppCategoryConstantService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.MobileAppCategoryConstantService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetMobileAppCategoryConstant,
      Google.Ads.Googleads.V9.Services.GetMobileAppCategoryConstantRequest,
      Google.Ads.Googleads.V9.Resources.MobileAppCategoryConstant
end

defmodule Google.Ads.Googleads.V9.Services.MobileAppCategoryConstantService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V9.Services.MobileAppCategoryConstantService.Service
end
