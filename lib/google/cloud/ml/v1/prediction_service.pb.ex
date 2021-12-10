defmodule Google.Cloud.Ml.V1.PredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          http_body: Google.Api.HttpBody.t() | nil
        }

  defstruct name: "",
            http_body: nil

  field :name, 1, type: :string
  field :http_body, 2, type: Google.Api.HttpBody, json_name: "httpBody"
end
defmodule Google.Cloud.Ml.V1.OnlinePredictionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.ml.v1.OnlinePredictionService"

  rpc :Predict, Google.Cloud.Ml.V1.PredictRequest, Google.Api.HttpBody
end

defmodule Google.Cloud.Ml.V1.OnlinePredictionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Ml.V1.OnlinePredictionService.Service
end
