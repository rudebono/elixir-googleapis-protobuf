defmodule Google.Cloud.Automl.V1.ImageClassificationDatasetMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          classification_type: Google.Cloud.Automl.V1.ClassificationType.t()
        }

  defstruct [:classification_type]

  field :classification_type, 1, type: Google.Cloud.Automl.V1.ClassificationType, enum: true
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

  defstruct [
    :base_model_id,
    :train_budget_milli_node_hours,
    :train_cost_milli_node_hours,
    :stop_reason,
    :model_type,
    :node_qps,
    :node_count
  ]

  field :base_model_id, 1, type: :string
  field :train_budget_milli_node_hours, 16, type: :int64
  field :train_cost_milli_node_hours, 17, type: :int64
  field :stop_reason, 5, type: :string
  field :model_type, 7, type: :string
  field :node_qps, 13, type: :double
  field :node_count, 14, type: :int64
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

  defstruct [
    :model_type,
    :node_count,
    :node_qps,
    :stop_reason,
    :train_budget_milli_node_hours,
    :train_cost_milli_node_hours
  ]

  field :model_type, 1, type: :string
  field :node_count, 3, type: :int64
  field :node_qps, 4, type: :double
  field :stop_reason, 5, type: :string
  field :train_budget_milli_node_hours, 6, type: :int64
  field :train_cost_milli_node_hours, 7, type: :int64
end

defmodule Google.Cloud.Automl.V1.ImageClassificationModelDeploymentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_count: integer
        }

  defstruct [:node_count]

  field :node_count, 1, type: :int64
end

defmodule Google.Cloud.Automl.V1.ImageObjectDetectionModelDeploymentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_count: integer
        }

  defstruct [:node_count]

  field :node_count, 1, type: :int64
end
