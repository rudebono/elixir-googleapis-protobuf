defmodule Google.Ads.Googleads.V7.Services.GetCustomerClientRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.CustomerClientService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.CustomerClientService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetCustomerClient,
      Google.Ads.Googleads.V7.Services.GetCustomerClientRequest,
      Google.Ads.Googleads.V7.Resources.CustomerClient
end

defmodule Google.Ads.Googleads.V7.Services.CustomerClientService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.CustomerClientService.Service
end
