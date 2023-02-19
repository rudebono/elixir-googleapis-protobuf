defmodule Google.Cloud.Aiplatform.V1beta1.FindNeighborsRequest.Query do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :datapoint, 1, type: Google.Cloud.Aiplatform.V1beta1.IndexDatapoint, deprecated: false
  field :neighbor_count, 2, type: :int32, json_name: "neighborCount"

  field :per_crowding_attribute_neighbor_count, 3,
    type: :int32,
    json_name: "perCrowdingAttributeNeighborCount"

  field :approximate_neighbor_count, 4, type: :int32, json_name: "approximateNeighborCount"

  field :fraction_leaf_nodes_to_search_override, 5,
    type: :double,
    json_name: "fractionLeafNodesToSearchOverride"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FindNeighborsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false
  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId"

  field :queries, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FindNeighborsRequest.Query

  field :return_full_datapoint, 4, type: :bool, json_name: "returnFullDatapoint"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FindNeighborsResponse.Neighbor do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :datapoint, 1, type: Google.Cloud.Aiplatform.V1beta1.IndexDatapoint
  field :distance, 2, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.FindNeighborsResponse.NearestNeighbors do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string

  field :neighbors, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FindNeighborsResponse.Neighbor
end

defmodule Google.Cloud.Aiplatform.V1beta1.FindNeighborsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :nearest_neighbors, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FindNeighborsResponse.NearestNeighbors,
    json_name: "nearestNeighbors"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReadIndexDatapointsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false
  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId"
  field :ids, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ReadIndexDatapointsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :datapoints, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.IndexDatapoint
end

defmodule Google.Cloud.Aiplatform.V1beta1.MatchService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.MatchService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :FindNeighbors,
      Google.Cloud.Aiplatform.V1beta1.FindNeighborsRequest,
      Google.Cloud.Aiplatform.V1beta1.FindNeighborsResponse

  rpc :ReadIndexDatapoints,
      Google.Cloud.Aiplatform.V1beta1.ReadIndexDatapointsRequest,
      Google.Cloud.Aiplatform.V1beta1.ReadIndexDatapointsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.MatchService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.MatchService.Service
end