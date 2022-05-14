defmodule Google.Ads.Googleads.V7.Services.GetUserLocationViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.UserLocationViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.UserLocationViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetUserLocationView,
      Google.Ads.Googleads.V7.Services.GetUserLocationViewRequest,
      Google.Ads.Googleads.V7.Resources.UserLocationView
end

defmodule Google.Ads.Googleads.V7.Services.UserLocationViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.UserLocationViewService.Service
end
