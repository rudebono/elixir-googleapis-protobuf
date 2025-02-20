defmodule Google.Type.Expr do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :expression, 1, type: :string
  field :title, 2, type: :string
  field :description, 3, type: :string
  field :location, 4, type: :string
end
