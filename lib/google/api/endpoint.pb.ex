defmodule Google.Api.Endpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :aliases, 2, repeated: true, type: :string
  field :target, 101, type: :string
  field :allow_cors, 5, type: :bool, json_name: "allowCors"
end
