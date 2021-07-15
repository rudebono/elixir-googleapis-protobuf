defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs.ModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_TYPE_UNSPECIFIED
          | :CLOUD
          | :MOBILE_VERSATILE_1
          | :MOBILE_JETSON_VERSATILE_1
          | :MOBILE_CORAL_VERSATILE_1

  field :MODEL_TYPE_UNSPECIFIED, 0

  field :CLOUD, 1

  field :MOBILE_VERSATILE_1, 2

  field :MOBILE_JETSON_VERSATILE_1, 3

  field :MOBILE_CORAL_VERSATILE_1, 4
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs.t()
            | nil
        }

  defstruct [:inputs]

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_type:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs.ModelType.t()
        }

  defstruct [:model_type]

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs.ModelType,
    enum: true
end
