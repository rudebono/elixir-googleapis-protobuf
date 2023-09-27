defmodule Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesRequest.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :KEY_VALUE, 1
  field :PROTO_STRUCT, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :entity_id, 0

  field :id, 3, type: :string, oneof: 0
  field :feature_view, 1, type: :string, json_name: "featureView", deprecated: false

  field :format, 5,
    type: Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesRequest.Format,
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesResponse.FeatureNameValuePairList.FeatureNameValuePair do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :data, 0

  field :value, 2, type: Google.Cloud.Aiplatform.V1beta1.FeatureValue, oneof: 0
  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesResponse.FeatureNameValuePairList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :features, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesResponse.FeatureNameValuePairList.FeatureNameValuePair
end

defmodule Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :format, 0

  field :key_values, 3,
    type: Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesResponse.FeatureNameValuePairList,
    json_name: "keyValues",
    oneof: 0

  field :proto_struct, 2, type: Google.Protobuf.Struct, json_name: "protoStruct", oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborQuery.Embedding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :value, 1, repeated: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborQuery.StringFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :allow_tokens, 2,
    repeated: true,
    type: :string,
    json_name: "allowTokens",
    deprecated: false

  field :deny_tokens, 3, repeated: true, type: :string, json_name: "denyTokens", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborQuery.Parameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :approximate_neighbor_candidates, 1,
    type: :int32,
    json_name: "approximateNeighborCandidates",
    deprecated: false

  field :leaf_nodes_search_fraction, 2,
    type: :double,
    json_name: "leafNodesSearchFraction",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighborQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :instance, 0

  field :entity_id, 1, type: :string, json_name: "entityId", oneof: 0, deprecated: false

  field :embedding, 2,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborQuery.Embedding,
    oneof: 0,
    deprecated: false

  field :neighbor_count, 3, type: :int32, json_name: "neighborCount", deprecated: false

  field :string_filters, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborQuery.StringFilter,
    json_name: "stringFilters",
    deprecated: false

  field :per_crowding_attribute_neighbor_count, 5,
    type: :int32,
    json_name: "perCrowdingAttributeNeighborCount",
    deprecated: false

  field :parameters, 7,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborQuery.Parameters,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchNearestEntitiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :feature_view, 1, type: :string, json_name: "featureView", deprecated: false
  field :query, 2, type: Google.Cloud.Aiplatform.V1beta1.NearestNeighborQuery, deprecated: false
  field :return_full_entity, 3, type: :bool, json_name: "returnFullEntity", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighbors.Neighbor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :entity_id, 1, type: :string, json_name: "entityId"
  field :distance, 2, type: :double

  field :entity_key_values, 3,
    type: Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesResponse,
    json_name: "entityKeyValues"
end

defmodule Google.Cloud.Aiplatform.V1beta1.NearestNeighbors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :neighbors, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighbors.Neighbor
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchNearestEntitiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :nearest_neighbors, 1,
    type: Google.Cloud.Aiplatform.V1beta1.NearestNeighbors,
    json_name: "nearestNeighbors"
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.FeatureOnlineStoreService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :FetchFeatureValues,
      Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesRequest,
      Google.Cloud.Aiplatform.V1beta1.FetchFeatureValuesResponse

  rpc :SearchNearestEntities,
      Google.Cloud.Aiplatform.V1beta1.SearchNearestEntitiesRequest,
      Google.Cloud.Aiplatform.V1beta1.SearchNearestEntitiesResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.FeatureOnlineStoreService.Service
end