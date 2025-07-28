defmodule Google.Ai.Generativelanguage.V1beta3.Model do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :base_model_id, 2, type: :string, json_name: "baseModelId", deprecated: false
  field :version, 3, type: :string, deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName"
  field :description, 5, type: :string
  field :input_token_limit, 6, type: :int32, json_name: "inputTokenLimit"
  field :output_token_limit, 7, type: :int32, json_name: "outputTokenLimit"

  field :supported_generation_methods, 8,
    repeated: true,
    type: :string,
    json_name: "supportedGenerationMethods"

  field :temperature, 9, proto3_optional: true, type: :float
  field :top_p, 10, proto3_optional: true, type: :float, json_name: "topP"
  field :top_k, 11, proto3_optional: true, type: :int32, json_name: "topK"
end
