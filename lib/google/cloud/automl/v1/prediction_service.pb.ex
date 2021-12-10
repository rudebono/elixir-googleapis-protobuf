defmodule Google.Cloud.Automl.V1.PredictRequest.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Automl.V1.PredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          payload: Google.Cloud.Automl.V1.ExamplePayload.t() | nil,
          params: %{String.t() => String.t()}
        }

  defstruct name: "",
            payload: nil,
            params: %{}

  field :name, 1, type: :string, deprecated: false
  field :payload, 2, type: Google.Cloud.Automl.V1.ExamplePayload, deprecated: false

  field :params, 3,
    repeated: true,
    type: Google.Cloud.Automl.V1.PredictRequest.ParamsEntry,
    map: true
end
defmodule Google.Cloud.Automl.V1.PredictResponse.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Automl.V1.PredictResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payload: [Google.Cloud.Automl.V1.AnnotationPayload.t()],
          preprocessed_input: Google.Cloud.Automl.V1.ExamplePayload.t() | nil,
          metadata: %{String.t() => String.t()}
        }

  defstruct payload: [],
            preprocessed_input: nil,
            metadata: %{}

  field :payload, 1, repeated: true, type: Google.Cloud.Automl.V1.AnnotationPayload

  field :preprocessed_input, 3,
    type: Google.Cloud.Automl.V1.ExamplePayload,
    json_name: "preprocessedInput"

  field :metadata, 2,
    repeated: true,
    type: Google.Cloud.Automl.V1.PredictResponse.MetadataEntry,
    map: true
end
defmodule Google.Cloud.Automl.V1.BatchPredictRequest.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Automl.V1.BatchPredictRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_config: Google.Cloud.Automl.V1.BatchPredictInputConfig.t() | nil,
          output_config: Google.Cloud.Automl.V1.BatchPredictOutputConfig.t() | nil,
          params: %{String.t() => String.t()}
        }

  defstruct name: "",
            input_config: nil,
            output_config: nil,
            params: %{}

  field :name, 1, type: :string, deprecated: false

  field :input_config, 3,
    type: Google.Cloud.Automl.V1.BatchPredictInputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :output_config, 4,
    type: Google.Cloud.Automl.V1.BatchPredictOutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :params, 5,
    repeated: true,
    type: Google.Cloud.Automl.V1.BatchPredictRequest.ParamsEntry,
    map: true
end
defmodule Google.Cloud.Automl.V1.BatchPredictResult.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Automl.V1.BatchPredictResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: %{String.t() => String.t()}
        }

  defstruct metadata: %{}

  field :metadata, 1,
    repeated: true,
    type: Google.Cloud.Automl.V1.BatchPredictResult.MetadataEntry,
    map: true
end
defmodule Google.Cloud.Automl.V1.PredictionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.automl.v1.PredictionService"

  rpc :Predict, Google.Cloud.Automl.V1.PredictRequest, Google.Cloud.Automl.V1.PredictResponse

  rpc :BatchPredict, Google.Cloud.Automl.V1.BatchPredictRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Automl.V1.PredictionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Automl.V1.PredictionService.Service
end
