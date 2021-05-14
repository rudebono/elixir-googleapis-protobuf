defmodule Google.Ads.Googleads.V5.Services.GetCarrierConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.CarrierConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.CarrierConstantService"

  rpc :GetCarrierConstant,
      Google.Ads.Googleads.V5.Services.GetCarrierConstantRequest,
      Google.Ads.Googleads.V5.Resources.CarrierConstant
end

defmodule Google.Ads.Googleads.V5.Services.CarrierConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.CarrierConstantService.Service
end
