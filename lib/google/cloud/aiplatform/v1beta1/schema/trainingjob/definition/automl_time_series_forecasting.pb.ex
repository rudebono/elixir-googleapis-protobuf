defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecasting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.t()
            | nil,
          metadata:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingMetadata.t()
            | nil
        }

  defstruct [:inputs, :metadata]

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs

  field :metadata, 2,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.AutoTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct [:column_name]

  field :column_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.NumericTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct [:column_name]

  field :column_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.CategoricalTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct [:column_name]

  field :column_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TimestampTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t(),
          time_format: String.t()
        }

  defstruct [:column_name, :time_format]

  field :column_name, 1, type: :string
  field :time_format, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.TextTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct [:column_name]

  field :column_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformation_detail: {atom, any}
        }

  defstruct [:transformation_detail]

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          unit: String.t(),
          quantity: integer
        }

  defstruct [:unit, :quantity]

  field :unit, 1, type: :string
  field :quantity, 2, type: :int64
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_column: String.t(),
          time_series_identifier_column: String.t(),
          time_column: String.t(),
          transformations: [
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation.t()
          ],
          optimization_objective: String.t(),
          train_budget_milli_node_hours: integer,
          weight_column: String.t(),
          time_series_attribute_columns: [String.t()],
          unavailable_at_forecast_columns: [String.t()],
          available_at_forecast_columns: [String.t()],
          data_granularity:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Granularity.t()
            | nil,
          forecast_horizon: integer,
          context_window: integer,
          export_evaluated_data_items_config:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig.t()
            | nil,
          quantiles: [float | :infinity | :negative_infinity | :nan],
          validation_options: String.t()
        }

  defstruct [
    :target_column,
    :time_series_identifier_column,
    :time_column,
    :transformations,
    :optimization_objective,
    :train_budget_milli_node_hours,
    :weight_column,
    :time_series_attribute_columns,
    :unavailable_at_forecast_columns,
    :available_at_forecast_columns,
    :data_granularity,
    :forecast_horizon,
    :context_window,
    :export_evaluated_data_items_config,
    :quantiles,
    :validation_options
  ]

  field :target_column, 1, type: :string
  field :time_series_identifier_column, 2, type: :string
  field :time_column, 3, type: :string

  field :transformations, 4,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Transformation

  field :optimization_objective, 5, type: :string
  field :train_budget_milli_node_hours, 6, type: :int64
  field :weight_column, 7, type: :string
  field :time_series_attribute_columns, 19, repeated: true, type: :string
  field :unavailable_at_forecast_columns, 20, repeated: true, type: :string
  field :available_at_forecast_columns, 21, repeated: true, type: :string

  field :data_granularity, 22,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingInputs.Granularity

  field :forecast_horizon, 23, type: :int64
  field :context_window, 24, type: :int64

  field :export_evaluated_data_items_config, 15,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig

  field :quantiles, 16, repeated: true, type: :double
  field :validation_options, 17, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlForecastingMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          train_cost_milli_node_hours: integer
        }

  defstruct [:train_cost_milli_node_hours]

  field :train_cost_milli_node_hours, 1, type: :int64
end
