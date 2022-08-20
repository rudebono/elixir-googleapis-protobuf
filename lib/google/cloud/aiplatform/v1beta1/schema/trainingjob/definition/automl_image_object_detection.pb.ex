defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs.ModelType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :CLOUD_HIGH_ACCURACY_1, 1
  field :CLOUD_LOW_LATENCY_1, 2
  field :MOBILE_TF_LOW_LATENCY_1, 3
  field :MOBILE_TF_VERSATILE_1, 4
  field :MOBILE_TF_HIGH_ACCURACY_1, 5
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata.SuccessfulStopReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SUCCESSFUL_STOP_REASON_UNSPECIFIED, 0
  field :BUDGET_REACHED, 1
  field :MODEL_CONVERGED, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs

  field :metadata, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionInputs.ModelType,
    json_name: "modelType",
    enum: true

  field :budget_milli_node_hours, 2, type: :int64, json_name: "budgetMilliNodeHours"
  field :disable_early_stopping, 3, type: :bool, json_name: "disableEarlyStopping"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cost_milli_node_hours, 1, type: :int64, json_name: "costMilliNodeHours"

  field :successful_stop_reason, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageObjectDetectionMetadata.SuccessfulStopReason,
    json_name: "successfulStopReason",
    enum: true
end