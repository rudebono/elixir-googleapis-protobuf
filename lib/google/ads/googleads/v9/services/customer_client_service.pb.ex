defmodule Google.Ads.Googleads.V9.Services.GetCustomerClientRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  def transform_module(), do: nil
end

defmodule Google.Ads.Googleads.V9.Services.CustomerClientService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v9.services.CustomerClientService"

  rpc :GetCustomerClient,
      Google.Ads.Googleads.V9.Services.GetCustomerClientRequest,
      Google.Ads.Googleads.V9.Resources.CustomerClient
end

defmodule Google.Ads.Googleads.V9.Services.CustomerClientService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CustomerClientService.Service
end