defmodule Google.Cloud.Automl.V1beta1.TablesDatasetMetadata.TargetColumnCorrelationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Automl.V1beta1.CorrelationStats.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Automl.V1beta1.CorrelationStats

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.TablesDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          primary_table_spec_id: String.t(),
          target_column_spec_id: String.t(),
          weight_column_spec_id: String.t(),
          ml_use_column_spec_id: String.t(),
          target_column_correlations: %{
            String.t() => Google.Cloud.Automl.V1beta1.CorrelationStats.t() | nil
          },
          stats_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :primary_table_spec_id,
    :target_column_spec_id,
    :weight_column_spec_id,
    :ml_use_column_spec_id,
    :target_column_correlations,
    :stats_update_time
  ]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.TablesModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_optimization_objective_config:
            {:optimization_objective_recall_value, float | :infinity | :negative_infinity | :nan}
            | {:optimization_objective_precision_value,
               float | :infinity | :negative_infinity | :nan},
          target_column_spec: Google.Cloud.Automl.V1beta1.ColumnSpec.t() | nil,
          input_feature_column_specs: [Google.Cloud.Automl.V1beta1.ColumnSpec.t()],
          optimization_objective: String.t(),
          tables_model_column_info: [Google.Cloud.Automl.V1beta1.TablesModelColumnInfo.t()],
          train_budget_milli_node_hours: integer,
          train_cost_milli_node_hours: integer,
          disable_early_stopping: boolean
        }

  defstruct [
    :additional_optimization_objective_config,
    :target_column_spec,
    :input_feature_column_specs,
    :optimization_objective,
    :tables_model_column_info,
    :train_budget_milli_node_hours,
    :train_cost_milli_node_hours,
    :disable_early_stopping
  ]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.TablesAnnotation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          score: float | :infinity | :negative_infinity | :nan,
          prediction_interval: Google.Cloud.Automl.V1beta1.DoubleRange.t() | nil,
          value: Google.Protobuf.Value.t() | nil,
          tables_model_column_info: [Google.Cloud.Automl.V1beta1.TablesModelColumnInfo.t()],
          baseline_score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:score, :prediction_interval, :value, :tables_model_column_info, :baseline_score]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Automl.V1beta1.TablesModelColumnInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_spec_name: String.t(),
          column_display_name: String.t(),
          feature_importance: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:column_spec_name, :column_display_name, :feature_importance]

  field :column_spec_name, 1, type: :string, json_name: "columnSpecName"
  field :column_display_name, 2, type: :string, json_name: "columnDisplayName"
  field :feature_importance, 3, type: :float, json_name: "featureImportance"

  def transform_module(), do: nil
end
