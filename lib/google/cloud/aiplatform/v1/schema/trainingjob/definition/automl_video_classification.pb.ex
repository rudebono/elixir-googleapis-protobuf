defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoClassificationInputs.ModelType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MODEL_TYPE_UNSPECIFIED
          | :CLOUD
          | :MOBILE_VERSATILE_1
          | :MOBILE_JETSON_VERSATILE_1

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :CLOUD, 1
  field :MOBILE_VERSATILE_1, 2
  field :MOBILE_JETSON_VERSATILE_1, 3
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoClassification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoClassificationInputs.t()
            | nil
        }

  defstruct [:inputs]

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoClassificationInputs

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoClassificationInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_type:
            Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoClassificationInputs.ModelType.t()
        }

  defstruct [:model_type]

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoClassificationInputs.ModelType,
    enum: true,
    json_name: "modelType"

  def transform_module(), do: nil
end
