defmodule Google.Ads.Googleads.V9.Services.GetGeographicViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.GeographicViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.GeographicViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetGeographicView,
      Google.Ads.Googleads.V9.Services.GetGeographicViewRequest,
      Google.Ads.Googleads.V9.Resources.GeographicView
end

defmodule Google.Ads.Googleads.V9.Services.GeographicViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.GeographicViewService.Service
end
