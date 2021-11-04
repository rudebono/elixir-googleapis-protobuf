defmodule Google.Cloud.Aiplatform.Logging.OnlinePredictionLogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          deployed_model_id: String.t(),
          instance_count: integer,
          prediction_count: integer,
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:endpoint, :deployed_model_id, :instance_count, :prediction_count, :error]

  field :endpoint, 1, type: :string
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId"
  field :instance_count, 3, type: :int64, json_name: "instanceCount"
  field :prediction_count, 4, type: :int64, json_name: "predictionCount"
  field :error, 5, type: Google.Rpc.Status

  def transform_module(), do: nil
end
