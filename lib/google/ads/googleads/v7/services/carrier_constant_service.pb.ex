defmodule Google.Ads.Googleads.V7.Services.GetCarrierConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V7.Services.CarrierConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.CarrierConstantService"

  rpc :GetCarrierConstant,
      Google.Ads.Googleads.V7.Services.GetCarrierConstantRequest,
      Google.Ads.Googleads.V7.Resources.CarrierConstant
end

defmodule Google.Ads.Googleads.V7.Services.CarrierConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CarrierConstantService.Service
end
