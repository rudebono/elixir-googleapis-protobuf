defmodule Google.Cloud.Retail.V2alpha.Model.ServingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SERVING_STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :ACTIVE, 2
  field :TUNED, 3
end

defmodule Google.Cloud.Retail.V2alpha.Model.TrainingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRAINING_STATE_UNSPECIFIED, 0
  field :PAUSED, 1
  field :TRAINING, 2
end

defmodule Google.Cloud.Retail.V2alpha.Model.PeriodicTuningState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PERIODIC_TUNING_STATE_UNSPECIFIED, 0
  field :PERIODIC_TUNING_DISABLED, 1
  field :ALL_TUNING_DISABLED, 3
  field :PERIODIC_TUNING_ENABLED, 2
end

defmodule Google.Cloud.Retail.V2alpha.Model.DataState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DATA_STATE_UNSPECIFIED, 0
  field :DATA_OK, 1
  field :DATA_ERROR, 2
end

defmodule Google.Cloud.Retail.V2alpha.Model.ContextProductsType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CONTEXT_PRODUCTS_TYPE_UNSPECIFIED, 0
  field :SINGLE_CONTEXT_PRODUCT, 1
  field :MULTIPLE_CONTEXT_PRODUCTS, 2
end

defmodule Google.Cloud.Retail.V2alpha.Model.PageOptimizationConfig.Restriction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RESTRICTION_UNSPECIFIED, 0
  field :NO_RESTRICTION, 1
  field :UNIQUE_SERVING_CONFIG_RESTRICTION, 2
  field :UNIQUE_MODEL_RESTRICTION, 3
  field :UNIQUE_MODEL_TYPE_RESTRICTION, 4
end

defmodule Google.Cloud.Retail.V2alpha.Model.PageOptimizationConfig.Candidate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :candidate, 0

  field :serving_config_id, 1, type: :string, json_name: "servingConfigId", oneof: 0
end

defmodule Google.Cloud.Retail.V2alpha.Model.PageOptimizationConfig.Panel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false

  field :candidates, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Model.PageOptimizationConfig.Candidate,
    deprecated: false

  field :default_candidate, 3,
    type: Google.Cloud.Retail.V2alpha.Model.PageOptimizationConfig.Candidate,
    json_name: "defaultCandidate",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.Model.PageOptimizationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :page_optimization_event_type, 1,
    type: :string,
    json_name: "pageOptimizationEventType",
    deprecated: false

  field :panels, 2,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Model.PageOptimizationConfig.Panel,
    deprecated: false

  field :restriction, 3,
    type: Google.Cloud.Retail.V2alpha.Model.PageOptimizationConfig.Restriction,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.Model.ServingConfigList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :serving_config_ids, 1,
    repeated: true,
    type: :string,
    json_name: "servingConfigIds",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.Model.FrequentlyBoughtTogetherFeaturesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :context_products_type, 2,
    type: Google.Cloud.Retail.V2alpha.Model.ContextProductsType,
    json_name: "contextProductsType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.Model.ModelFeaturesConfig.LlmEmbeddingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :llm_embedding_version, 1,
    type: :string,
    json_name: "llmEmbeddingVersion",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.Model.ModelFeaturesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :type_dedicated_config, 0

  field :frequently_bought_together_config, 1,
    type: Google.Cloud.Retail.V2alpha.Model.FrequentlyBoughtTogetherFeaturesConfig,
    json_name: "frequentlyBoughtTogetherConfig",
    oneof: 0

  field :llm_embedding_config, 2,
    type: Google.Cloud.Retail.V2alpha.Model.ModelFeaturesConfig.LlmEmbeddingConfig,
    json_name: "llmEmbeddingConfig",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :training_config, 0

  field :page_optimization_config, 17,
    type: Google.Cloud.Retail.V2alpha.Model.PageOptimizationConfig,
    json_name: "pageOptimizationConfig",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :training_state, 3,
    type: Google.Cloud.Retail.V2alpha.Model.TrainingState,
    json_name: "trainingState",
    enum: true,
    deprecated: false

  field :serving_state, 4,
    type: Google.Cloud.Retail.V2alpha.Model.ServingState,
    json_name: "servingState",
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :type, 7, type: :string, deprecated: false

  field :optimization_objective, 8,
    type: :string,
    json_name: "optimizationObjective",
    deprecated: false

  field :periodic_tuning_state, 11,
    type: Google.Cloud.Retail.V2alpha.Model.PeriodicTuningState,
    json_name: "periodicTuningState",
    enum: true,
    deprecated: false

  field :last_tune_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTuneTime",
    deprecated: false

  field :tuning_operation, 15, type: :string, json_name: "tuningOperation", deprecated: false

  field :data_state, 16,
    type: Google.Cloud.Retail.V2alpha.Model.DataState,
    json_name: "dataState",
    enum: true,
    deprecated: false

  field :filtering_option, 18,
    type: Google.Cloud.Retail.V2alpha.RecommendationsFilteringOption,
    json_name: "filteringOption",
    enum: true,
    deprecated: false

  field :serving_config_lists, 19,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.Model.ServingConfigList,
    json_name: "servingConfigLists",
    deprecated: false

  field :model_features_config, 22,
    type: Google.Cloud.Retail.V2alpha.Model.ModelFeaturesConfig,
    json_name: "modelFeaturesConfig",
    deprecated: false
end