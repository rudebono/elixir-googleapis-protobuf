defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlVideoObjectTrackingInputs.ModelType,
    json_name: "modelType",
    enum: true
end
