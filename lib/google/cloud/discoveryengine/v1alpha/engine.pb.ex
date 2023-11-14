defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.MediaRecommendationEngineConfig.TrainingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TRAINING_STATE_UNSPECIFIED, 0
  field :PAUSED, 1
  field :TRAINING, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.RecommendationMetadata.ServingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SERVING_STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :ACTIVE, 2
  field :TUNED, 3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.RecommendationMetadata.DataState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATA_STATE_UNSPECIFIED, 0
  field :DATA_OK, 1
  field :DATA_ERROR, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.SearchEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :search_tier, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchTier,
    json_name: "searchTier",
    enum: true

  field :search_add_ons, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.SearchAddOn,
    json_name: "searchAddOns",
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.SimilarDocumentsEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.MediaRecommendationEngineConfig.OptimizationObjectiveConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_field, 1, type: :string, json_name: "targetField", deprecated: false

  field :target_field_value_float, 2,
    type: :float,
    json_name: "targetFieldValueFloat",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.MediaRecommendationEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: :string, deprecated: false
  field :optimization_objective, 2, type: :string, json_name: "optimizationObjective"

  field :optimization_objective_config, 3,
    type:
      Google.Cloud.Discoveryengine.V1alpha.Engine.MediaRecommendationEngineConfig.OptimizationObjectiveConfig,
    json_name: "optimizationObjectiveConfig"

  field :training_state, 4,
    type:
      Google.Cloud.Discoveryengine.V1alpha.Engine.MediaRecommendationEngineConfig.TrainingState,
    json_name: "trainingState",
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.ChatEngineConfig.AgentCreationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :business, 1, type: :string
  field :default_language_code, 2, type: :string, json_name: "defaultLanguageCode"
  field :time_zone, 3, type: :string, json_name: "timeZone", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.ChatEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :agent_creation_config, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.ChatEngineConfig.AgentCreationConfig,
    json_name: "agentCreationConfig"

  field :dialogflow_agent_to_link, 2, type: :string, json_name: "dialogflowAgentToLink"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.CommonConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :company_name, 1, type: :string, json_name: "companyName"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.RecommendationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :serving_state, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.RecommendationMetadata.ServingState,
    json_name: "servingState",
    enum: true,
    deprecated: false

  field :data_state, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.RecommendationMetadata.DataState,
    json_name: "dataState",
    enum: true,
    deprecated: false

  field :last_tune_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTuneTime",
    deprecated: false

  field :tuning_operation, 4, type: :string, json_name: "tuningOperation", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine.ChatEngineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dialogflow_agent, 1, type: :string, json_name: "dialogflowAgent"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.Engine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :engine_config, 0

  oneof :engine_metadata, 1

  field :similar_documents_config, 9,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.SimilarDocumentsEngineConfig,
    json_name: "similarDocumentsConfig",
    oneof: 0

  field :chat_engine_config, 11,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.ChatEngineConfig,
    json_name: "chatEngineConfig",
    oneof: 0

  field :search_engine_config, 13,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.SearchEngineConfig,
    json_name: "searchEngineConfig",
    oneof: 0

  field :media_recommendation_engine_config, 14,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.MediaRecommendationEngineConfig,
    json_name: "mediaRecommendationEngineConfig",
    oneof: 0

  field :recommendation_metadata, 10,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.RecommendationMetadata,
    json_name: "recommendationMetadata",
    oneof: 1,
    deprecated: false

  field :chat_engine_metadata, 12,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.ChatEngineMetadata,
    json_name: "chatEngineMetadata",
    oneof: 1,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :data_store_ids, 5, repeated: true, type: :string, json_name: "dataStoreIds"

  field :solution_type, 6,
    type: Google.Cloud.Discoveryengine.V1alpha.SolutionType,
    json_name: "solutionType",
    enum: true,
    deprecated: false

  field :industry_vertical, 16,
    type: Google.Cloud.Discoveryengine.V1alpha.IndustryVertical,
    json_name: "industryVertical",
    enum: true

  field :common_config, 15,
    type: Google.Cloud.Discoveryengine.V1alpha.Engine.CommonConfig,
    json_name: "commonConfig"
end