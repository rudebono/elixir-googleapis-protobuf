defmodule Google.Ads.Googleads.V9.Services.GetGroupPlacementViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.GroupPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.GroupPlacementViewService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetGroupPlacementView,
      Google.Ads.Googleads.V9.Services.GetGroupPlacementViewRequest,
      Google.Ads.Googleads.V9.Resources.GroupPlacementView
end

defmodule Google.Ads.Googleads.V9.Services.GroupPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.GroupPlacementViewService.Service
end