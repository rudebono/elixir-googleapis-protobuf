defmodule Google.Cloud.OperationResponseMapping do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNDEFINED, 0
  field :NAME, 1
  field :STATUS, 2
  field :ERROR_CODE, 3
  field :ERROR_MESSAGE, 4
end