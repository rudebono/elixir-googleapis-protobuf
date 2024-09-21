defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :CLOUD, 1
  field :MOBILE_VERSATILE_1, 2
  field :MOBILE_JETSON_VERSATILE_1, 3
  field :MOBILE_CORAL_VERSATILE_1, 4
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlVideoActionRecognitionInputs.ModelType,
    json_name: "modelType",
    enum: true
end