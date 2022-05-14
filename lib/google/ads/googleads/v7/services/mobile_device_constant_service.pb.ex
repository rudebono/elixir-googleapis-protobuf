defmodule Google.Ads.Googleads.V7.Services.GetMobileDeviceConstantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MobileDeviceConstantService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.MobileDeviceConstantService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetMobileDeviceConstant,
      Google.Ads.Googleads.V7.Services.GetMobileDeviceConstantRequest,
      Google.Ads.Googleads.V7.Resources.MobileDeviceConstant
end

defmodule Google.Ads.Googleads.V7.Services.MobileDeviceConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.MobileDeviceConstantService.Service
end
