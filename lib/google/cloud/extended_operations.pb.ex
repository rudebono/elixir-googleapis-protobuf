defmodule Google.Cloud.OperationResponseMapping do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNDEFINED | :NAME | :STATUS | :ERROR_CODE | :ERROR_MESSAGE

  field :UNDEFINED, 0

  field :NAME, 1

  field :STATUS, 2

  field :ERROR_CODE, 3

  field :ERROR_MESSAGE, 4
end
