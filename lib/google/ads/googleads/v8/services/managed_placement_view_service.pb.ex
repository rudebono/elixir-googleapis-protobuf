defmodule Google.Ads.Googleads.V8.Services.GetManagedPlacementViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.ManagedPlacementViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.ManagedPlacementViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetManagedPlacementView,
      Google.Ads.Googleads.V8.Services.GetManagedPlacementViewRequest,
      Google.Ads.Googleads.V8.Resources.ManagedPlacementView
end

defmodule Google.Ads.Googleads.V8.Services.ManagedPlacementViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ManagedPlacementViewService.Service
end
