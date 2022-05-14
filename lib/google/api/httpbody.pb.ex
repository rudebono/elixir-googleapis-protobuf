defmodule Google.Api.HttpBody do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :content_type, 1, type: :string, json_name: "contentType"
  field :data, 2, type: :bytes
  field :extensions, 3, repeated: true, type: Google.Protobuf.Any
end
