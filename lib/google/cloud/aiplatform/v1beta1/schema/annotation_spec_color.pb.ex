defmodule Google.Cloud.Aiplatform.V1beta1.Schema.AnnotationSpecColor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :color, 1, type: Google.Type.Color
  field :display_name, 2, type: :string, json_name: "displayName"
  field :id, 3, type: :string
end
