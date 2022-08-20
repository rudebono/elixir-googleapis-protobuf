defmodule Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult.Error do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Code, enum: true
  field :message, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :input, 0

  field :instance, 1, type: Google.Protobuf.Struct, oneof: 0
  field :key, 2, type: :string, oneof: 0
  field :prediction, 3, type: Google.Protobuf.Value
  field :error, 4, type: Google.Cloud.Aiplatform.V1beta1.Schema.PredictionResult.Error
end