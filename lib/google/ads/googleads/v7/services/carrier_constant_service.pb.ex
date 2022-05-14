defmodule Google.Ads.Googleads.V7.Services.GetCarrierConstantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.CarrierConstantService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.CarrierConstantService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetCarrierConstant,
      Google.Ads.Googleads.V7.Services.GetCarrierConstantRequest,
      Google.Ads.Googleads.V7.Resources.CarrierConstant
end

defmodule Google.Ads.Googleads.V7.Services.CarrierConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CarrierConstantService.Service
end
