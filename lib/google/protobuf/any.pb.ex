defmodule Google.Protobuf.Any do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type_url, 1, type: :string, json_name: "typeUrl"
  field :value, 2, type: :bytes
end
