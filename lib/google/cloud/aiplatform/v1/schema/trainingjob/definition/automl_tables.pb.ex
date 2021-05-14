defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTables do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.t() | nil,
          metadata:
            Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesMetadata.t()
            | nil
        }

  defstruct [:inputs, :metadata]

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs

  field :metadata, 2,
    type: Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesMetadata
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.AutoTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct [:column_name]

  field :column_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.NumericTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t(),
          invalid_values_allowed: boolean
        }

  defstruct [:column_name, :invalid_values_allowed]

  field :column_name, 1, type: :string
  field :invalid_values_allowed, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.CategoricalTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct [:column_name]

  field :column_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TimestampTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t(),
          time_format: String.t(),
          invalid_values_allowed: boolean
        }

  defstruct [:column_name, :time_format, :invalid_values_allowed]

  field :column_name, 1, type: :string
  field :time_format, 2, type: :string
  field :invalid_values_allowed, 3, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TextTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct [:column_name]

  field :column_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.NumericArrayTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t(),
          invalid_values_allowed: boolean
        }

  defstruct [:column_name, :invalid_values_allowed]

  field :column_name, 1, type: :string
  field :invalid_values_allowed, 2, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.CategoricalArrayTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct [:column_name]

  field :column_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TextArrayTransformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          column_name: String.t()
        }

  defstruct [:column_name]

  field :column_name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transformation_detail: {atom, any}
        }

  defstruct [:transformation_detail]

  oneof :transformation_detail, 0

  field :auto, 1,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.AutoTransformation,
    oneof: 0

  field :numeric, 2,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.NumericTransformation,
    oneof: 0

  field :categorical, 3,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.CategoricalTransformation,
    oneof: 0

  field :timestamp, 4,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TimestampTransformation,
    oneof: 0

  field :text, 5,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TextTransformation,
    oneof: 0

  field :repeated_numeric, 6,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.NumericArrayTransformation,
    oneof: 0

  field :repeated_categorical, 7,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.CategoricalArrayTransformation,
    oneof: 0

  field :repeated_text, 8,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.TextArrayTransformation,
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          additional_optimization_objective_config: {atom, any},
          prediction_type: String.t(),
          target_column: String.t(),
          transformations: [
            Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation.t()
          ],
          optimization_objective: String.t(),
          train_budget_milli_node_hours: integer,
          disable_early_stopping: boolean,
          weight_column_name: String.t(),
          export_evaluated_data_items_config:
            Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig.t()
            | nil
        }

  defstruct [
    :additional_optimization_objective_config,
    :prediction_type,
    :target_column,
    :transformations,
    :optimization_objective,
    :train_budget_milli_node_hours,
    :disable_early_stopping,
    :weight_column_name,
    :export_evaluated_data_items_config
  ]

  oneof :additional_optimization_objective_config, 0
  field :optimization_objective_recall_value, 5, type: :float, oneof: 0
  field :optimization_objective_precision_value, 6, type: :float, oneof: 0
  field :prediction_type, 1, type: :string
  field :target_column, 2, type: :string

  field :transformations, 3,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesInputs.Transformation

  field :optimization_objective, 4, type: :string
  field :train_budget_milli_node_hours, 7, type: :int64
  field :disable_early_stopping, 8, type: :bool
  field :weight_column_name, 9, type: :string

  field :export_evaluated_data_items_config, 10,
    type: Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.ExportEvaluatedDataItemsConfig
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTablesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          train_cost_milli_node_hours: integer
        }

  defstruct [:train_cost_milli_node_hours]

  field :train_cost_milli_node_hours, 1, type: :int64
end
