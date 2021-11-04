defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs.ModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_TYPE_UNSPECIFIED
          | :CLOUD_HIGH_ACCURACY_1
          | :CLOUD_LOW_LATENCY_1
          | :MOBILE_TF_LOW_LATENCY_1
          | :MOBILE_TF_VERSATILE_1
          | :MOBILE_TF_HIGH_ACCURACY_1

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :CLOUD_HIGH_ACCURACY_1, 1
  field :CLOUD_LOW_LATENCY_1, 2
  field :MOBILE_TF_LOW_LATENCY_1, 3
  field :MOBILE_TF_VERSATILE_1, 4
  field :MOBILE_TF_HIGH_ACCURACY_1, 5
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata.SuccessfulStopReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SUCCESSFUL_STOP_REASON_UNSPECIFIED | :BUDGET_REACHED | :MODEL_CONVERGED

  field :SUCCESSFUL_STOP_REASON_UNSPECIFIED, 0
  field :BUDGET_REACHED, 1
  field :MODEL_CONVERGED, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs.t()
            | nil,
          metadata:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata.t()
            | nil
        }

  defstruct [:inputs, :metadata]

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs

  field :metadata, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_type:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs.ModelType.t(),
          budget_milli_node_hours: integer,
          disable_early_stopping: boolean
        }

  defstruct [:model_type, :budget_milli_node_hours, :disable_early_stopping]

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs.ModelType,
    enum: true,
    json_name: "modelType"

  field :budget_milli_node_hours, 2, type: :int64, json_name: "budgetMilliNodeHours"
  field :disable_early_stopping, 3, type: :bool, json_name: "disableEarlyStopping"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_milli_node_hours: integer,
          successful_stop_reason:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata.SuccessfulStopReason.t()
        }

  defstruct [:cost_milli_node_hours, :successful_stop_reason]

  field :cost_milli_node_hours, 1, type: :int64, json_name: "costMilliNodeHours"

  field :successful_stop_reason, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata.SuccessfulStopReason,
    enum: true,
    json_name: "successfulStopReason"

  def transform_module(), do: nil
end
