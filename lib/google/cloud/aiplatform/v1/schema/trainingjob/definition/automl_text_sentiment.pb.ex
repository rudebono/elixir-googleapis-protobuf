defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTextSentiment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTextSentimentInputs
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTextSentimentInputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sentiment_max, 1, type: :int32, json_name: "sentimentMax"
end
