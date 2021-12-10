defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationInputs.ModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_TYPE_UNSPECIFIED
          | :CLOUD
          | :MOBILE_TF_LOW_LATENCY_1
          | :MOBILE_TF_VERSATILE_1
          | :MOBILE_TF_HIGH_ACCURACY_1

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :CLOUD, 1
  field :MOBILE_TF_LOW_LATENCY_1, 2
  field :MOBILE_TF_VERSATILE_1, 3
  field :MOBILE_TF_HIGH_ACCURACY_1, 4
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationMetadata.SuccessfulStopReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SUCCESSFUL_STOP_REASON_UNSPECIFIED | :BUDGET_REACHED | :MODEL_CONVERGED

  field :SUCCESSFUL_STOP_REASON_UNSPECIFIED, 0
  field :BUDGET_REACHED, 1
  field :MODEL_CONVERGED, 2
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationInputs.t()
            | nil,
          metadata:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationMetadata.t()
            | nil
        }

  defstruct inputs: nil,
            metadata: nil

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationInputs

  field :metadata, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationMetadata
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_type:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationInputs.ModelType.t(),
          base_model_id: String.t(),
          budget_milli_node_hours: integer,
          disable_early_stopping: boolean,
          multi_label: boolean
        }

  defstruct model_type: :MODEL_TYPE_UNSPECIFIED,
            base_model_id: "",
            budget_milli_node_hours: 0,
            disable_early_stopping: false,
            multi_label: false

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationInputs.ModelType,
    json_name: "modelType",
    enum: true

  field :base_model_id, 2, type: :string, json_name: "baseModelId"
  field :budget_milli_node_hours, 3, type: :int64, json_name: "budgetMilliNodeHours"
  field :disable_early_stopping, 4, type: :bool, json_name: "disableEarlyStopping"
  field :multi_label, 5, type: :bool, json_name: "multiLabel"
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cost_milli_node_hours: integer,
          successful_stop_reason:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationMetadata.SuccessfulStopReason.t()
        }

  defstruct cost_milli_node_hours: 0,
            successful_stop_reason: :SUCCESSFUL_STOP_REASON_UNSPECIFIED

  field :cost_milli_node_hours, 1, type: :int64, json_name: "costMilliNodeHours"

  field :successful_stop_reason, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationMetadata.SuccessfulStopReason,
    json_name: "successfulStopReason",
    enum: true
end
