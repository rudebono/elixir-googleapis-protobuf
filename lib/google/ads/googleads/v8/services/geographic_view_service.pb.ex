defmodule Google.Ads.Googleads.V8.Services.GetGeographicViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.GeographicViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.GeographicViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetGeographicView,
      Google.Ads.Googleads.V8.Services.GetGeographicViewRequest,
      Google.Ads.Googleads.V8.Resources.GeographicView
end

defmodule Google.Ads.Googleads.V8.Services.GeographicViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.GeographicViewService.Service
end
