defmodule Google.Maps.Places.V1.AuthorAttribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :uri, 2, type: :string
  field :photo_uri, 3, type: :string, json_name: "photoUri"
end
