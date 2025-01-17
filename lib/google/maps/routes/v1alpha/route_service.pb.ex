defmodule Google.Maps.Routes.V1alpha.RoutesAlpha.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.routes.v1alpha.RoutesAlpha",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ComputeRoutes,
      Google.Maps.Routes.V1.ComputeRoutesRequest,
      Google.Maps.Routes.V1.ComputeRoutesResponse

  rpc :ComputeRouteMatrix,
      Google.Maps.Routes.V1.ComputeRouteMatrixRequest,
      stream(Google.Maps.Routes.V1.RouteMatrixElement)

  rpc :ComputeCustomRoutes,
      Google.Maps.Routes.V1.ComputeCustomRoutesRequest,
      Google.Maps.Routes.V1.ComputeCustomRoutesResponse
end

defmodule Google.Maps.Routes.V1alpha.RoutesAlpha.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Routes.V1alpha.RoutesAlpha.Service
end
