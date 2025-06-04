defmodule Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.TrainingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TRAINING_STATE_UNSPECIFIED, 0
  field :PAUSED, 1
  field :TRAINING, 2
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.SearchEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :search_tier, 1,
    type: Google.Cloud.Discoveryengine.V1.SearchTier,
    json_name: "searchTier",
    enum: true

  field :search_add_ons, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.SearchAddOn,
    json_name: "searchAddOns",
    enum: true
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.OptimizationObjectiveConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :target_field, 1, type: :string, json_name: "targetField", deprecated: false

  field :target_field_value_float, 2,
    type: :float,
    json_name: "targetFieldValueFloat",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.EngineFeaturesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :type_dedicated_config, 0

  field :recommended_for_you_config, 1,
    type:
      Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.RecommendedForYouFeatureConfig,
    json_name: "recommendedForYouConfig",
    oneof: 0

  field :most_popular_config, 2,
    type:
      Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.MostPopularFeatureConfig,
    json_name: "mostPopularConfig",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.RecommendedForYouFeatureConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :context_event_type, 1, type: :string, json_name: "contextEventType"
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.MostPopularFeatureConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_window_days, 1, type: :int64, json_name: "timeWindowDays"
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: :string, deprecated: false
  field :optimization_objective, 2, type: :string, json_name: "optimizationObjective"

  field :optimization_objective_config, 3,
    type:
      Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.OptimizationObjectiveConfig,
    json_name: "optimizationObjectiveConfig"

  field :training_state, 4,
    type: Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.TrainingState,
    json_name: "trainingState",
    enum: true

  field :engine_features_config, 5,
    type:
      Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig.EngineFeaturesConfig,
    json_name: "engineFeaturesConfig",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.ChatEngineConfig.AgentCreationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :business, 1, type: :string
  field :default_language_code, 2, type: :string, json_name: "defaultLanguageCode"
  field :time_zone, 3, type: :string, json_name: "timeZone", deprecated: false
  field :location, 4, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.ChatEngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :agent_creation_config, 1,
    type: Google.Cloud.Discoveryengine.V1.Engine.ChatEngineConfig.AgentCreationConfig,
    json_name: "agentCreationConfig"

  field :dialogflow_agent_to_link, 2, type: :string, json_name: "dialogflowAgentToLink"
  field :allow_cross_region, 3, type: :bool, json_name: "allowCrossRegion", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.CommonConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :company_name, 1, type: :string, json_name: "companyName"
end

defmodule Google.Cloud.Discoveryengine.V1.Engine.ChatEngineMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :dialogflow_agent, 1, type: :string, json_name: "dialogflowAgent"
end

defmodule Google.Cloud.Discoveryengine.V1.Engine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :engine_config, 0

  oneof :engine_metadata, 1

  field :chat_engine_config, 11,
    type: Google.Cloud.Discoveryengine.V1.Engine.ChatEngineConfig,
    json_name: "chatEngineConfig",
    oneof: 0

  field :search_engine_config, 13,
    type: Google.Cloud.Discoveryengine.V1.Engine.SearchEngineConfig,
    json_name: "searchEngineConfig",
    oneof: 0

  field :media_recommendation_engine_config, 14,
    type: Google.Cloud.Discoveryengine.V1.Engine.MediaRecommendationEngineConfig,
    json_name: "mediaRecommendationEngineConfig",
    oneof: 0

  field :chat_engine_metadata, 12,
    type: Google.Cloud.Discoveryengine.V1.Engine.ChatEngineMetadata,
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

  field :data_store_ids, 5,
    repeated: true,
    type: :string,
    json_name: "dataStoreIds",
    deprecated: false

  field :solution_type, 6,
    type: Google.Cloud.Discoveryengine.V1.SolutionType,
    json_name: "solutionType",
    enum: true,
    deprecated: false

  field :industry_vertical, 16,
    type: Google.Cloud.Discoveryengine.V1.IndustryVertical,
    json_name: "industryVertical",
    enum: true,
    deprecated: false

  field :common_config, 15,
    type: Google.Cloud.Discoveryengine.V1.Engine.CommonConfig,
    json_name: "commonConfig"

  field :disable_analytics, 26, type: :bool, json_name: "disableAnalytics", deprecated: false
end
