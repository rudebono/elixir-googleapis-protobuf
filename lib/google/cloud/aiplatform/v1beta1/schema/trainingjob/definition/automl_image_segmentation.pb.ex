defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs.ModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_TYPE_UNSPECIFIED
          | :CLOUD_HIGH_ACCURACY_1
          | :CLOUD_LOW_ACCURACY_1
          | :MOBILE_TF_LOW_LATENCY_1

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :CLOUD_HIGH_ACCURACY_1, 1
  field :CLOUD_LOW_ACCURACY_1, 2
  field :MOBILE_TF_LOW_LATENCY_1, 3
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata.SuccessfulStopReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SUCCESSFUL_STOP_REASON_UNSPECIFIED | :BUDGET_REACHED | :MODEL_CONVERGED

  field :SUCCESSFUL_STOP_REASON_UNSPECIFIED, 0
  field :BUDGET_REACHED, 1
  field :MODEL_CONVERGED, 2
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs.t()
            | nil,
          metadata:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata.t()
            | nil
        }

  defstruct inputs: nil,
            metadata: nil

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs

  field :metadata, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_type:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs.ModelType.t(),
          budget_milli_node_hours: integer,
          base_model_id: String.t()
        }

  defstruct model_type: :MODEL_TYPE_UNSPECIFIED,
            budget_milli_node_hours: 0,
            base_model_id: ""

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs.ModelType,
    json_name: "modelType",
    enum: true

  field :budget_milli_node_hours, 2, type: :int64, json_name: "budgetMilliNodeHours"
  field :base_model_id, 3, type: :string, json_name: "baseModelId"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_milli_node_hours: integer,
          successful_stop_reason:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata.SuccessfulStopReason.t()
        }

  defstruct cost_milli_node_hours: 0,
            successful_stop_reason: :SUCCESSFUL_STOP_REASON_UNSPECIFIED

  field :cost_milli_node_hours, 1, type: :int64, json_name: "costMilliNodeHours"

  field :successful_stop_reason, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata.SuccessfulStopReason,
    json_name: "successfulStopReason",
    enum: true
end
