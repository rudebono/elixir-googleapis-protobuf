defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs.ModelType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :CLOUD_HIGH_ACCURACY_1, 1
  field :CLOUD_LOW_ACCURACY_1, 2
  field :MOBILE_TF_LOW_LATENCY_1, 3
end
defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata.SuccessfulStopReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :SUCCESSFUL_STOP_REASON_UNSPECIFIED, 0
  field :BUDGET_REACHED, 1
  field :MODEL_CONVERGED, 2
end
defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlImageSegmentation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs

  field :metadata, 2,
    type: Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata
end
defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :model_type, 1,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlImageSegmentationInputs.ModelType,
    json_name: "modelType",
    enum: true

  field :budget_milli_node_hours, 2, type: :int64, json_name: "budgetMilliNodeHours"
  field :base_model_id, 3, type: :string, json_name: "baseModelId"
end
defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :cost_milli_node_hours, 1, type: :int64, json_name: "costMilliNodeHours"

  field :successful_stop_reason, 2,
    type:
      Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlImageSegmentationMetadata.SuccessfulStopReason,
    json_name: "successfulStopReason",
    enum: true
end
