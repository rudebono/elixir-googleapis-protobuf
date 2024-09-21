defmodule Google.Genomics.V1.Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :reference_name, 1, type: :string, json_name: "referenceName"
  field :start, 2, type: :int64
  field :end, 3, type: :int64
end