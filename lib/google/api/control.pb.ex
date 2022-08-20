defmodule Google.Api.Control do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :environment, 1, type: :string
end