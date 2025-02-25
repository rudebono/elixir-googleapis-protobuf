defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTables do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs

  field :metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.AutoTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.NumericTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
  field :invalid_values_allowed, 2, type: :bool, json_name: "invalidValuesAllowed"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.CategoricalTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TimestampTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
  field :time_format, 2, type: :string, json_name: "timeFormat"
  field :invalid_values_allowed, 3, type: :bool, json_name: "invalidValuesAllowed"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TextTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.NumericArrayTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
  field :invalid_values_allowed, 2, type: :bool, json_name: "invalidValuesAllowed"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.CategoricalArrayTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TextArrayTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :transformation_detail, 0

  field :auto, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.AutoTransformation,
    oneof: 0

  field :numeric, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.NumericTransformation,
    oneof: 0

  field :categorical, 3,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.CategoricalTransformation,
    oneof: 0

  field :timestamp, 4,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TimestampTransformation,
    oneof: 0

  field :text, 5,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TextTransformation,
    oneof: 0

  field :repeated_numeric, 6,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.NumericArrayTransformation,
    json_name: "repeatedNumeric",
    oneof: 0

  field :repeated_categorical, 7,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.CategoricalArrayTransformation,
    json_name: "repeatedCategorical",
    oneof: 0

  field :repeated_text, 8,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TextArrayTransformation,
    json_name: "repeatedText",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :additional_optimization_objective_config, 0

  field :optimization_objective_recall_value, 5,
    type: :float,
    json_name: "optimizationObjectiveRecallValue",
    oneof: 0

  field :optimization_objective_precision_value, 6,
    type: :float,
    json_name: "optimizationObjectivePrecisionValue",
    oneof: 0

  field :prediction_type, 1, type: :string, json_name: "predictionType"
  field :target_column, 2, type: :string, json_name: "targetColumn"

  field :transformations, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation

  field :optimization_objective, 4, type: :string, json_name: "optimizationObjective"
  field :train_budget_milli_node_hours, 7, type: :int64, json_name: "trainBudgetMilliNodeHours"
  field :disable_early_stopping, 8, type: :bool, json_name: "disableEarlyStopping"
  field :weight_column_name, 9, type: :string, json_name: "weightColumnName"

  field :export_evaluated_data_items_config, 10,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig,
    json_name: "exportEvaluatedDataItemsConfig"

  field :additional_experiments, 11,
    repeated: true,
    type: :string,
    json_name: "additionalExperiments"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTablesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :train_cost_milli_node_hours, 1, type: :int64, json_name: "trainCostMilliNodeHours"
end
