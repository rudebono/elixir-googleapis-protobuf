defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecasting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs

  field :metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.AutoTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.NumericTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.CategoricalTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TimestampTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
  field :time_format, 2, type: :string, json_name: "timeFormat"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TextTransformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :column_name, 1, type: :string, json_name: "columnName"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :transformation_detail, 0

  field :auto, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.AutoTransformation,
    oneof: 0

  field :numeric, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.NumericTransformation,
    oneof: 0

  field :categorical, 3,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.CategoricalTransformation,
    oneof: 0

  field :timestamp, 4,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TimestampTransformation,
    oneof: 0

  field :text, 5,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TextTransformation,
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Granularity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unit, 1, type: :string
  field :quantity, 2, type: :int64
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_column, 1, type: :string, json_name: "targetColumn"
  field :time_series_identifier_column, 2, type: :string, json_name: "timeSeriesIdentifierColumn"
  field :time_column, 3, type: :string, json_name: "timeColumn"

  field :transformations, 4,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation

  field :optimization_objective, 5, type: :string, json_name: "optimizationObjective"
  field :train_budget_milli_node_hours, 6, type: :int64, json_name: "trainBudgetMilliNodeHours"
  field :weight_column, 7, type: :string, json_name: "weightColumn"

  field :time_series_attribute_columns, 19,
    repeated: true,
    type: :string,
    json_name: "timeSeriesAttributeColumns"

  field :unavailable_at_forecast_columns, 20,
    repeated: true,
    type: :string,
    json_name: "unavailableAtForecastColumns"

  field :available_at_forecast_columns, 21,
    repeated: true,
    type: :string,
    json_name: "availableAtForecastColumns"

  field :data_granularity, 22,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Granularity,
    json_name: "dataGranularity"

  field :forecast_horizon, 23, type: :int64, json_name: "forecastHorizon"
  field :context_window, 24, type: :int64, json_name: "contextWindow"

  field :export_evaluated_data_items_config, 15,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig,
    json_name: "exportEvaluatedDataItemsConfig"

  field :quantiles, 16, repeated: true, type: :double
  field :validation_options, 17, type: :string, json_name: "validationOptions"

  field :additional_experiments, 25,
    repeated: true,
    type: :string,
    json_name: "additionalExperiments"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :train_cost_milli_node_hours, 1, type: :int64, json_name: "trainCostMilliNodeHours"
end
