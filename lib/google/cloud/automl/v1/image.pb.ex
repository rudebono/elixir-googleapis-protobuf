defmodule Google.Cloud.Automl.V1.ImageClassificationDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          classification_type: Google.Cloud.Automl.V1.ClassificationType.t()
        }

  defstruct classification_type: :CLASSIFICATION_TYPE_UNSPECIFIED

  field :classification_type, 1,
    type: Google.Cloud.Automl.V1.ClassificationType,
    json_name: "classificationType",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Automl.V1.ImageObjectDetectionDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Automl.V1.ImageClassificationModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_model_id: String.t(),
          train_budget_milli_node_hours: integer,
          train_cost_milli_node_hours: integer,
          stop_reason: String.t(),
          model_type: String.t(),
          node_qps: float | :infinity | :negative_infinity | :nan,
          node_count: integer
        }

  defstruct base_model_id: "",
            train_budget_milli_node_hours: 0,
            train_cost_milli_node_hours: 0,
            stop_reason: "",
            model_type: "",
            node_qps: 0.0,
            node_count: 0

  field :base_model_id, 1, type: :string, json_name: "baseModelId", deprecated: false

  field :train_budget_milli_node_hours, 16,
    type: :int64,
    json_name: "trainBudgetMilliNodeHours",
    deprecated: false

  field :train_cost_milli_node_hours, 17,
    type: :int64,
    json_name: "trainCostMilliNodeHours",
    deprecated: false

  field :stop_reason, 5, type: :string, json_name: "stopReason", deprecated: false
  field :model_type, 7, type: :string, json_name: "modelType", deprecated: false
  field :node_qps, 13, type: :double, json_name: "nodeQps", deprecated: false
  field :node_count, 14, type: :int64, json_name: "nodeCount", deprecated: false
end
defmodule Google.Cloud.Automl.V1.ImageObjectDetectionModelMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_type: String.t(),
          node_count: integer,
          node_qps: float | :infinity | :negative_infinity | :nan,
          stop_reason: String.t(),
          train_budget_milli_node_hours: integer,
          train_cost_milli_node_hours: integer
        }

  defstruct model_type: "",
            node_count: 0,
            node_qps: 0.0,
            stop_reason: "",
            train_budget_milli_node_hours: 0,
            train_cost_milli_node_hours: 0

  field :model_type, 1, type: :string, json_name: "modelType", deprecated: false
  field :node_count, 3, type: :int64, json_name: "nodeCount", deprecated: false
  field :node_qps, 4, type: :double, json_name: "nodeQps", deprecated: false
  field :stop_reason, 5, type: :string, json_name: "stopReason", deprecated: false

  field :train_budget_milli_node_hours, 6,
    type: :int64,
    json_name: "trainBudgetMilliNodeHours",
    deprecated: false

  field :train_cost_milli_node_hours, 7,
    type: :int64,
    json_name: "trainCostMilliNodeHours",
    deprecated: false
end
defmodule Google.Cloud.Automl.V1.ImageClassificationModelDeploymentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_count: integer
        }

  defstruct node_count: 0

  field :node_count, 1, type: :int64, json_name: "nodeCount", deprecated: false
end
defmodule Google.Cloud.Automl.V1.ImageObjectDetectionModelDeploymentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_count: integer
        }

  defstruct node_count: 0

  field :node_count, 1, type: :int64, json_name: "nodeCount", deprecated: false
end
