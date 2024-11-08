defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.ServiceAgentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SERVICE_AGENT_TYPE_UNSPECIFIED, 0
  field :SERVICE_AGENT_TYPE_PROJECT, 1
  field :SERVICE_AGENT_TYPE_FEATURE_VIEW, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.VectorSearchConfig.DistanceMeasureType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DISTANCE_MEASURE_TYPE_UNSPECIFIED, 0
  field :SQUARED_L2_DISTANCE, 1
  field :COSINE_DISTANCE, 2
  field :DOT_PRODUCT_DISTANCE, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.IndexConfig.DistanceMeasureType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DISTANCE_MEASURE_TYPE_UNSPECIFIED, 0
  field :SQUARED_L2_DISTANCE, 1
  field :COSINE_DISTANCE, 2
  field :DOT_PRODUCT_DISTANCE, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.BigQuerySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :entity_id_columns, 2,
    repeated: true,
    type: :string,
    json_name: "entityIdColumns",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.SyncConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :cron, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.VectorSearchConfig.BruteForceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.VectorSearchConfig.TreeAHConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :leaf_node_embedding_count, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "leafNodeEmbeddingCount",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.VectorSearchConfig do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :algorithm_config, 0

  field :tree_ah_config, 8,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.VectorSearchConfig.TreeAHConfig,
    json_name: "treeAhConfig",
    oneof: 0,
    deprecated: false

  field :brute_force_config, 9,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.VectorSearchConfig.BruteForceConfig,
    json_name: "bruteForceConfig",
    oneof: 0,
    deprecated: false

  field :embedding_column, 3, type: :string, json_name: "embeddingColumn", deprecated: false

  field :filter_columns, 4,
    repeated: true,
    type: :string,
    json_name: "filterColumns",
    deprecated: false

  field :crowding_column, 5, type: :string, json_name: "crowdingColumn", deprecated: false

  field :embedding_dimension, 6,
    proto3_optional: true,
    type: :int32,
    json_name: "embeddingDimension",
    deprecated: false

  field :distance_measure_type, 7,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.VectorSearchConfig.DistanceMeasureType,
    json_name: "distanceMeasureType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.IndexConfig.BruteForceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.IndexConfig.TreeAHConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :leaf_node_embedding_count, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "leafNodeEmbeddingCount",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.IndexConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :algorithm_config, 0

  field :tree_ah_config, 6,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.IndexConfig.TreeAHConfig,
    json_name: "treeAhConfig",
    oneof: 0,
    deprecated: false

  field :brute_force_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.IndexConfig.BruteForceConfig,
    json_name: "bruteForceConfig",
    oneof: 0,
    deprecated: false

  field :embedding_column, 1, type: :string, json_name: "embeddingColumn", deprecated: false

  field :filter_columns, 2,
    repeated: true,
    type: :string,
    json_name: "filterColumns",
    deprecated: false

  field :crowding_column, 3, type: :string, json_name: "crowdingColumn", deprecated: false

  field :embedding_dimension, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "embeddingDimension",
    deprecated: false

  field :distance_measure_type, 5,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.IndexConfig.DistanceMeasureType,
    json_name: "distanceMeasureType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.FeatureRegistrySource.FeatureGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feature_group_id, 1, type: :string, json_name: "featureGroupId", deprecated: false
  field :feature_ids, 2, repeated: true, type: :string, json_name: "featureIds", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.FeatureRegistrySource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feature_groups, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.FeatureRegistrySource.FeatureGroup,
    json_name: "featureGroups",
    deprecated: false

  field :project_number, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "projectNumber",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.VertexRagSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :rag_corpus_id, 2, type: :int64, json_name: "ragCorpusId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.OptimizedConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :automatic_resources, 7,
    type: Google.Cloud.Aiplatform.V1beta1.AutomaticResources,
    json_name: "automaticResources",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.FeatureView do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source, 0

  field :big_query_source, 6,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.BigQuerySource,
    json_name: "bigQuerySource",
    oneof: 0,
    deprecated: false

  field :feature_registry_source, 9,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.FeatureRegistrySource,
    json_name: "featureRegistrySource",
    oneof: 0,
    deprecated: false

  field :vertex_rag_source, 18,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.VertexRagSource,
    json_name: "vertexRagSource",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 4, type: :string, deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.LabelsEntry,
    map: true,
    deprecated: false

  field :sync_config, 7,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.SyncConfig,
    json_name: "syncConfig"

  field :vector_search_config, 8,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.VectorSearchConfig,
    json_name: "vectorSearchConfig",
    deprecated: true

  field :index_config, 15,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.IndexConfig,
    json_name: "indexConfig",
    deprecated: false

  field :optimized_config, 16,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.OptimizedConfig,
    json_name: "optimizedConfig",
    deprecated: false

  field :service_agent_type, 14,
    type: Google.Cloud.Aiplatform.V1beta1.FeatureView.ServiceAgentType,
    json_name: "serviceAgentType",
    enum: true,
    deprecated: false

  field :service_account_email, 13,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false

  field :satisfies_pzs, 19, type: :bool, json_name: "satisfiesPzs", deprecated: false
  field :satisfies_pzi, 20, type: :bool, json_name: "satisfiesPzi", deprecated: false
end