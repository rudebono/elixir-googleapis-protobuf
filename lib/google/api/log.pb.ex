defmodule Google.Api.LogDescriptor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :labels, 2, repeated: true, type: Google.Api.LabelDescriptor
  field :description, 3, type: :string
  field :display_name, 4, type: :string, json_name: "displayName"
end