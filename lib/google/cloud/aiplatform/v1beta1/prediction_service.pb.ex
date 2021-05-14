defmodule Google.Cloud.Aiplatform.V1beta1.PredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          instances: [Google.Protobuf.Value.t()],
          parameters: Google.Protobuf.Value.t() | nil
        }

  defstruct [:endpoint, :instances, :parameters]

  field :endpoint, 1, type: :string
  field :instances, 2, repeated: true, type: Google.Protobuf.Value
  field :parameters, 3, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Aiplatform.V1beta1.PredictResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          predictions: [Google.Protobuf.Value.t()],
          deployed_model_id: String.t()
        }

  defstruct [:predictions, :deployed_model_id]

  field :predictions, 1, repeated: true, type: Google.Protobuf.Value
  field :deployed_model_id, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplainRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          instances: [Google.Protobuf.Value.t()],
          parameters: Google.Protobuf.Value.t() | nil,
          explanation_spec_override:
            Google.Cloud.Aiplatform.V1beta1.ExplanationSpecOverride.t() | nil,
          deployed_model_id: String.t()
        }

  defstruct [:endpoint, :instances, :parameters, :explanation_spec_override, :deployed_model_id]

  field :endpoint, 1, type: :string
  field :instances, 2, repeated: true, type: Google.Protobuf.Value
  field :parameters, 4, type: Google.Protobuf.Value

  field :explanation_spec_override, 5,
    type: Google.Cloud.Aiplatform.V1beta1.ExplanationSpecOverride

  field :deployed_model_id, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExplainResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          explanations: [Google.Cloud.Aiplatform.V1beta1.Explanation.t()],
          deployed_model_id: String.t(),
          predictions: [Google.Protobuf.Value.t()]
        }

  defstruct [:explanations, :deployed_model_id, :predictions]

  field :explanations, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Explanation
  field :deployed_model_id, 2, type: :string
  field :predictions, 3, repeated: true, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Aiplatform.V1beta1.PredictionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.PredictionService"

  rpc :Predict,
      Google.Cloud.Aiplatform.V1beta1.PredictRequest,
      Google.Cloud.Aiplatform.V1beta1.PredictResponse

  rpc :Explain,
      Google.Cloud.Aiplatform.V1beta1.ExplainRequest,
      Google.Cloud.Aiplatform.V1beta1.ExplainResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.PredictionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.PredictionService.Service
end
