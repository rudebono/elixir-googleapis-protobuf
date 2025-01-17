defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationInputs.ModelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :CLOUD, 1
  field :MOBILE_TF_LOW_LATENCY_1, 2
  field :MOBILE_TF_VERSATILE_1, 3
  field :MOBILE_TF_HIGH_ACCURACY_1, 4
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationMetadata.SuccessfulStopReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :SUCCESSFUL_STOP_REASON_UNSPECIFIED, 0
  field :BUDGET_REACHED, 1
  field :MODEL_CONVERGED, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :inputs, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationInputs

  field :metadata, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationInputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cost_milli_node_hours, 1, type: :int64, json_name: "costMilliNodeHours"

  field :successful_stop_reason, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlImageClassificationMetadata.SuccessfulStopReason,
    json_name: "successfulStopReason",
    enum: true
end
