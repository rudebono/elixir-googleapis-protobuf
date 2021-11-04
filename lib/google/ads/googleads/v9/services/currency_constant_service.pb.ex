defmodule Google.Ads.Googleads.V9.Services.GetCurrencyConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CurrencyConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.CurrencyConstantService"

  rpc :GetCurrencyConstant,
      Google.Ads.Googleads.V9.Services.GetCurrencyConstantRequest,
      Google.Ads.Googleads.V9.Resources.CurrencyConstant
end

defmodule Google.Ads.Googleads.V9.Services.CurrencyConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CurrencyConstantService.Service
end
