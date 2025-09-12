defmodule Google.Cloud.Apihub.V1.ListDiscoveredApiObservationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListDiscoveredApiObservationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :discovered_api_observations, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.DiscoveredApiObservation,
    json_name: "discoveredApiObservations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.ListDiscoveredApiOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListDiscoveredApiOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :discovered_api_operations, 1,
    repeated: true,
    type: Google.Cloud.Apihub.V1.DiscoveredApiOperation,
    json_name: "discoveredApiOperations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.GetDiscoveredApiObservationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetDiscoveredApiOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiHubDiscovery.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.ApiHubDiscovery",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListDiscoveredApiObservations,
      Google.Cloud.Apihub.V1.ListDiscoveredApiObservationsRequest,
      Google.Cloud.Apihub.V1.ListDiscoveredApiObservationsResponse

  rpc :GetDiscoveredApiObservation,
      Google.Cloud.Apihub.V1.GetDiscoveredApiObservationRequest,
      Google.Cloud.Apihub.V1.DiscoveredApiObservation

  rpc :ListDiscoveredApiOperations,
      Google.Cloud.Apihub.V1.ListDiscoveredApiOperationsRequest,
      Google.Cloud.Apihub.V1.ListDiscoveredApiOperationsResponse

  rpc :GetDiscoveredApiOperation,
      Google.Cloud.Apihub.V1.GetDiscoveredApiOperationRequest,
      Google.Cloud.Apihub.V1.DiscoveredApiOperation
end

defmodule Google.Cloud.Apihub.V1.ApiHubDiscovery.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.ApiHubDiscovery.Service
end
