defmodule Google.Cloud.Aiplatform.V1.FeatureViewDataFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :FEATURE_VIEW_DATA_FORMAT_UNSPECIFIED, 0
  field :KEY_VALUE, 1
  field :PROTO_STRUCT, 2
end

defmodule Google.Cloud.Aiplatform.V1.NearestNeighborQuery.NumericFilter.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :LESS, 1
  field :LESS_EQUAL, 2
  field :EQUAL, 3
  field :GREATER_EQUAL, 4
  field :GREATER, 5
  field :NOT_EQUAL, 6
end

defmodule Google.Cloud.Aiplatform.V1.FeatureViewDataKey.CompositeKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parts, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.FeatureViewDataKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :key_oneof, 0

  field :key, 1, type: :string, oneof: 0

  field :composite_key, 2,
    type: Google.Cloud.Aiplatform.V1.FeatureViewDataKey.CompositeKey,
    json_name: "compositeKey",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.FetchFeatureValuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feature_view, 1, type: :string, json_name: "featureView", deprecated: false

  field :data_key, 6,
    type: Google.Cloud.Aiplatform.V1.FeatureViewDataKey,
    json_name: "dataKey",
    deprecated: false

  field :data_format, 7,
    type: Google.Cloud.Aiplatform.V1.FeatureViewDataFormat,
    json_name: "dataFormat",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse.FeatureNameValuePairList.FeatureNameValuePair do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data, 0

  field :value, 2, type: Google.Cloud.Aiplatform.V1.FeatureValue, oneof: 0
  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse.FeatureNameValuePairList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :features, 1,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse.FeatureNameValuePairList.FeatureNameValuePair
end

defmodule Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :format, 0

  field :key_values, 3,
    type: Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse.FeatureNameValuePairList,
    json_name: "keyValues",
    oneof: 0

  field :proto_struct, 2, type: Google.Protobuf.Struct, json_name: "protoStruct", oneof: 0
  field :data_key, 4, type: Google.Cloud.Aiplatform.V1.FeatureViewDataKey, json_name: "dataKey"
end

defmodule Google.Cloud.Aiplatform.V1.NearestNeighborQuery.Embedding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :value, 1, repeated: true, type: :float, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NearestNeighborQuery.StringFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :allow_tokens, 2,
    repeated: true,
    type: :string,
    json_name: "allowTokens",
    deprecated: false

  field :deny_tokens, 3, repeated: true, type: :string, json_name: "denyTokens", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NearestNeighborQuery.NumericFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :Value, 0

  field :value_int, 2, type: :int64, json_name: "valueInt", oneof: 0
  field :value_float, 3, type: :float, json_name: "valueFloat", oneof: 0
  field :value_double, 4, type: :double, json_name: "valueDouble", oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :op, 5,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.NearestNeighborQuery.NumericFilter.Operator,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NearestNeighborQuery.Parameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :approximate_neighbor_candidates, 1,
    type: :int32,
    json_name: "approximateNeighborCandidates",
    deprecated: false

  field :leaf_nodes_search_fraction, 2,
    type: :double,
    json_name: "leafNodesSearchFraction",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NearestNeighborQuery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :instance, 0

  field :entity_id, 1, type: :string, json_name: "entityId", oneof: 0, deprecated: false

  field :embedding, 2,
    type: Google.Cloud.Aiplatform.V1.NearestNeighborQuery.Embedding,
    oneof: 0,
    deprecated: false

  field :neighbor_count, 3, type: :int32, json_name: "neighborCount", deprecated: false

  field :string_filters, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NearestNeighborQuery.StringFilter,
    json_name: "stringFilters",
    deprecated: false

  field :numeric_filters, 8,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NearestNeighborQuery.NumericFilter,
    json_name: "numericFilters",
    deprecated: false

  field :per_crowding_attribute_neighbor_count, 5,
    type: :int32,
    json_name: "perCrowdingAttributeNeighborCount",
    deprecated: false

  field :parameters, 7,
    type: Google.Cloud.Aiplatform.V1.NearestNeighborQuery.Parameters,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.SearchNearestEntitiesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feature_view, 1, type: :string, json_name: "featureView", deprecated: false
  field :query, 2, type: Google.Cloud.Aiplatform.V1.NearestNeighborQuery, deprecated: false
  field :return_full_entity, 3, type: :bool, json_name: "returnFullEntity", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.NearestNeighbors.Neighbor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entity_id, 1, type: :string, json_name: "entityId"
  field :distance, 2, type: :double

  field :entity_key_values, 3,
    type: Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse,
    json_name: "entityKeyValues"
end

defmodule Google.Cloud.Aiplatform.V1.NearestNeighbors do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :neighbors, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.NearestNeighbors.Neighbor
end

defmodule Google.Cloud.Aiplatform.V1.SearchNearestEntitiesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :nearest_neighbors, 1,
    type: Google.Cloud.Aiplatform.V1.NearestNeighbors,
    json_name: "nearestNeighbors"
end

defmodule Google.Cloud.Aiplatform.V1.FeatureOnlineStoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.FeatureOnlineStoreService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :FetchFeatureValues,
      Google.Cloud.Aiplatform.V1.FetchFeatureValuesRequest,
      Google.Cloud.Aiplatform.V1.FetchFeatureValuesResponse

  rpc :SearchNearestEntities,
      Google.Cloud.Aiplatform.V1.SearchNearestEntitiesRequest,
      Google.Cloud.Aiplatform.V1.SearchNearestEntitiesResponse
end

defmodule Google.Cloud.Aiplatform.V1.FeatureOnlineStoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.FeatureOnlineStoreService.Service
end