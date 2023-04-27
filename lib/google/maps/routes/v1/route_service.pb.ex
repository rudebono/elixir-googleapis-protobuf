defmodule Google.Maps.Routes.V1.RoutesPreferred.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.maps.routes.v1.RoutesPreferred",
    protoc_gen_elixir_version: "0.12.0"

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

defmodule Google.Maps.Routes.V1.RoutesPreferred.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Maps.Routes.V1.RoutesPreferred.Service
end