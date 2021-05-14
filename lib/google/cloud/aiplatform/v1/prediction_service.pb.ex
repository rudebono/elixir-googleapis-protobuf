defmodule Google.Cloud.Aiplatform.V1.PredictRequest do
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

defmodule Google.Cloud.Aiplatform.V1.PredictResponse do
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
