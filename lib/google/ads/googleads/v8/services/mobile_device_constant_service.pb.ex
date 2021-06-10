defmodule Google.Ads.Googleads.V8.Services.GetMobileDeviceConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.MobileDeviceConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.MobileDeviceConstantService"

  rpc :GetMobileDeviceConstant,
      Google.Ads.Googleads.V8.Services.GetMobileDeviceConstantRequest,
      Google.Ads.Googleads.V8.Resources.MobileDeviceConstant
end

defmodule Google.Ads.Googleads.V8.Services.MobileDeviceConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.MobileDeviceConstantService.Service
end
