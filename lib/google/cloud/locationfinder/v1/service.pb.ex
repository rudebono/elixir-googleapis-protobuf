defmodule Google.Cloud.Locationfinder.V1.CloudLocationFinder.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.locationfinder.v1.CloudLocationFinder",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListCloudLocations,
      Google.Cloud.Locationfinder.V1.ListCloudLocationsRequest,
      Google.Cloud.Locationfinder.V1.ListCloudLocationsResponse

  rpc :GetCloudLocation,
      Google.Cloud.Locationfinder.V1.GetCloudLocationRequest,
      Google.Cloud.Locationfinder.V1.CloudLocation

  rpc :SearchCloudLocations,
      Google.Cloud.Locationfinder.V1.SearchCloudLocationsRequest,
      Google.Cloud.Locationfinder.V1.SearchCloudLocationsResponse
end

defmodule Google.Cloud.Locationfinder.V1.CloudLocationFinder.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Locationfinder.V1.CloudLocationFinder.Service
end
