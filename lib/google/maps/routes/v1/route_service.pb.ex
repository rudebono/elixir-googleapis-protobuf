defmodule Google.Maps.Routes.V1.RoutesPreferred.Service do
  @moduledoc false
  use GRPC.Service, name: "google.maps.routes.v1.RoutesPreferred"

  rpc :ComputeRoutes,
      Google.Maps.Routes.V1.ComputeRoutesRequest,
      Google.Maps.Routes.V1.ComputeRoutesResponse

  rpc :ComputeRouteMatrix,
      Google.Maps.Routes.V1.ComputeRouteMatrixRequest,
      stream(Google.Maps.Routes.V1.RouteMatrixElement)
end

defmodule Google.Maps.Routes.V1.RoutesPreferred.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Maps.Routes.V1.RoutesPreferred.Service
end
