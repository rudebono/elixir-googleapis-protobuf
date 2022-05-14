defmodule Google.Ads.Googleads.V7.Services.GetDetailPlacementViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.DetailPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.DetailPlacementViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetDetailPlacementView,
      Google.Ads.Googleads.V7.Services.GetDetailPlacementViewRequest,
      Google.Ads.Googleads.V7.Resources.DetailPlacementView
end

defmodule Google.Ads.Googleads.V7.Services.DetailPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.DetailPlacementViewService.Service
end
