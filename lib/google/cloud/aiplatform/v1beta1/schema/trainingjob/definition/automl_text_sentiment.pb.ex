defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextSentiment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs:
            Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextSentimentInputs.t()
            | nil
        }

  defstruct [:inputs]

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextSentimentInputs

  def transform_module(), do: nil
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.Trainingjob.Definition.AutoMlTextSentimentInputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sentiment_max: integer
        }

  defstruct [:sentiment_max]

  field :sentiment_max, 1, type: :int32, json_name: "sentimentMax"

  def transform_module(), do: nil
end
