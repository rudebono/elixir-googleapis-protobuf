defmodule Google.Cloud.Retail.V2beta.Model.ServingState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SERVING_STATE_UNSPECIFIED, 0
  field :INACTIVE, 1
  field :ACTIVE, 2
  field :TUNED, 3
end

defmodule Google.Cloud.Retail.V2beta.Model.TrainingState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TRAINING_STATE_UNSPECIFIED, 0
  field :PAUSED, 1
  field :TRAINING, 2
end

defmodule Google.Cloud.Retail.V2beta.Model.PeriodicTuningState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PERIODIC_TUNING_STATE_UNSPECIFIED, 0
  field :PERIODIC_TUNING_DISABLED, 1
  field :ALL_TUNING_DISABLED, 3
  field :PERIODIC_TUNING_ENABLED, 2
end

defmodule Google.Cloud.Retail.V2beta.Model.DataState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATA_STATE_UNSPECIFIED, 0
  field :DATA_OK, 1
  field :DATA_ERROR, 2
end

defmodule Google.Cloud.Retail.V2beta.Model.ServingConfigList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :serving_config_ids, 1,
    repeated: true,
    type: :string,
    json_name: "servingConfigIds",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2beta.Model do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :training_state, 3,
    type: Google.Cloud.Retail.V2beta.Model.TrainingState,
    json_name: "trainingState",
    enum: true,
    deprecated: false

  field :serving_state, 4,
    type: Google.Cloud.Retail.V2beta.Model.ServingState,
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
    type: Google.Cloud.Retail.V2beta.Model.PeriodicTuningState,
    json_name: "periodicTuningState",
    enum: true,
    deprecated: false

  field :last_tune_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTuneTime",
    deprecated: false

  field :tuning_operation, 15, type: :string, json_name: "tuningOperation", deprecated: false

  field :data_state, 16,
    type: Google.Cloud.Retail.V2beta.Model.DataState,
    json_name: "dataState",
    enum: true,
    deprecated: false

  field :filtering_option, 18,
    type: Google.Cloud.Retail.V2beta.RecommendationsFilteringOption,
    json_name: "filteringOption",
    enum: true,
    deprecated: false

  field :serving_config_lists, 19,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.Model.ServingConfigList,
    json_name: "servingConfigLists",
    deprecated: false
end