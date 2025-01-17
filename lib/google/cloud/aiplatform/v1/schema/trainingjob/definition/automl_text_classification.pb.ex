defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTextClassification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :inputs, 1,
    type: Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTextClassificationInputs
end

defmodule Google.Cloud.Aiplatform.V1.Schema.Trainingjob.Definition.AutoMlTextClassificationInputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :multi_label, 1, type: :bool, json_name: "multiLabel"
end
