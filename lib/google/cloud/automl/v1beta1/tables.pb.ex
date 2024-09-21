defmodule Google.Cloud.Automl.V1beta1.TablesDatasetMetadata.TargetColumnCorrelationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Automl.V1beta1.CorrelationStats
end

defmodule Google.Cloud.Automl.V1beta1.TablesDatasetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :primary_table_spec_id, 1, type: :string, json_name: "primaryTableSpecId"
  field :target_column_spec_id, 2, type: :string, json_name: "targetColumnSpecId"
  field :weight_column_spec_id, 3, type: :string, json_name: "weightColumnSpecId"
  field :ml_use_column_spec_id, 4, type: :string, json_name: "mlUseColumnSpecId"

  field :target_column_correlations, 6,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.TablesDatasetMetadata.TargetColumnCorrelationsEntry,
    json_name: "targetColumnCorrelations",
    map: true

  field :stats_update_time, 7, type: Google.Protobuf.Timestamp, json_name: "statsUpdateTime"
end

defmodule Google.Cloud.Automl.V1beta1.TablesModelMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :additional_optimization_objective_config, 0

  field :optimization_objective_recall_value, 17,
    type: :float,
    json_name: "optimizationObjectiveRecallValue",
    oneof: 0

  field :optimization_objective_precision_value, 18,
    type: :float,
    json_name: "optimizationObjectivePrecisionValue",
    oneof: 0

  field :target_column_spec, 2,
    type: Google.Cloud.Automl.V1beta1.ColumnSpec,
    json_name: "targetColumnSpec"

  field :input_feature_column_specs, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.ColumnSpec,
    json_name: "inputFeatureColumnSpecs"

  field :optimization_objective, 4, type: :string, json_name: "optimizationObjective"

  field :tables_model_column_info, 5,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.TablesModelColumnInfo,
    json_name: "tablesModelColumnInfo"

  field :train_budget_milli_node_hours, 6, type: :int64, json_name: "trainBudgetMilliNodeHours"
  field :train_cost_milli_node_hours, 7, type: :int64, json_name: "trainCostMilliNodeHours"
  field :disable_early_stopping, 12, type: :bool, json_name: "disableEarlyStopping"
end

defmodule Google.Cloud.Automl.V1beta1.TablesAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :score, 1, type: :float

  field :prediction_interval, 4,
    type: Google.Cloud.Automl.V1beta1.DoubleRange,
    json_name: "predictionInterval"

  field :value, 2, type: Google.Protobuf.Value

  field :tables_model_column_info, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1beta1.TablesModelColumnInfo,
    json_name: "tablesModelColumnInfo"

  field :baseline_score, 5, type: :float, json_name: "baselineScore"
end

defmodule Google.Cloud.Automl.V1beta1.TablesModelColumnInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :column_spec_name, 1, type: :string, json_name: "columnSpecName"
  field :column_display_name, 2, type: :string, json_name: "columnDisplayName"
  field :feature_importance, 3, type: :float, json_name: "featureImportance"
end