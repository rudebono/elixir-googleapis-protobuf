defmodule Google.Cloud.Automl.V1beta1.AnnotationSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :example_count, 9, type: :int32, json_name: "exampleCount"
end
