defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs.ModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_TYPE_UNSPECIFIED
          | :CLOUD
          | :MOBILE_VERSATILE_1
          | :MOBILE_CORAL_VERSATILE_1
          | :MOBILE_CORAL_LOW_LATENCY_1
          | :MOBILE_JETSON_VERSATILE_1
          | :MOBILE_JETSON_LOW_LATENCY_1

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :CLOUD, 1
  field :MOBILE_VERSATILE_1, 2
  field :MOBILE_CORAL_VERSATILE_1, 3
  field :MOBILE_CORAL_LOW_LATENCY_1, 4
  field :MOBILE_JETSON_VERSATILE_1, 5
  field :MOBILE_JETSON_LOW_LATENCY_1, 6
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTracking do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs.t()
            | nil
        }

  defstruct [:inputs]

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_type:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs.ModelType.t()
        }

  defstruct [:model_type]

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs.ModelType,
    enum: true,
    json_name: "modelType"

  def transform_module(), do: nil
end
