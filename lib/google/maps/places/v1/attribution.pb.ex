defmodule Google.Maps.Places.V1.AuthorAttribution do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :uri, 2, type: :string, deprecated: false
  field :photo_uri, 3, type: :string, json_name: "photoUri", deprecated: false
end