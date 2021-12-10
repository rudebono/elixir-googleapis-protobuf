defmodule Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult.Error do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Code.t(),
          message: String.t()
        }

  defstruct status: :OK,
            message: ""

  field :status, 1, type: Google.Rpc.Code, enum: true
  field :message, 2, type: :string
end
defmodule Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input: {:instance, Google.Protobuf.Struct.t() | nil} | {:key, String.t()},
          prediction: Google.Protobuf.Value.t() | nil,
          error: Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult.Error.t() | nil
        }

  defstruct input: nil,
            prediction: nil,
            error: nil

  oneof :input, 0

  field :instance, 1, type: Google.Protobuf.Struct, oneof: 0
  field :key, 2, type: :string, oneof: 0
  field :prediction, 3, type: Google.Protobuf.Value
  field :error, 4, type: Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult.Error
end
