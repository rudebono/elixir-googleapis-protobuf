defmodule Google.Ads.Googleads.V8.Services.GetCurrencyConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.CurrencyConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.CurrencyConstantService"

  rpc :GetCurrencyConstant,
      Google.Ads.Googleads.V8.Services.GetCurrencyConstantRequest,
      Google.Ads.Googleads.V8.Resources.CurrencyConstant
end

defmodule Google.Ads.Googleads.V8.Services.CurrencyConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.CurrencyConstantService.Service
end
