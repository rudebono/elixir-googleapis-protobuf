defmodule Google.Api.FieldBehavior do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FIELD_BEHAVIOR_UNSPECIFIED
          | :OPTIONAL
          | :REQUIRED
          | :OUTPUT_ONLY
          | :INPUT_ONLY
          | :IMMUTABLE
          | :UNORDERED_LIST

  field :FIELD_BEHAVIOR_UNSPECIFIED, 0

  field :OPTIONAL, 1

  field :REQUIRED, 2

  field :OUTPUT_ONLY, 3

  field :INPUT_ONLY, 4

  field :IMMUTABLE, 5

  field :UNORDERED_LIST, 6
end
