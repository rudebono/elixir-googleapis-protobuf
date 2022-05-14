defmodule Google.Ads.Googleads.V9.Errors.FieldErrorEnum.FieldError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :REQUIRED, 2
  field :IMMUTABLE_FIELD, 3
  field :INVALID_VALUE, 4
  field :VALUE_MUST_BE_UNSET, 5
  field :REQUIRED_NONEMPTY_LIST, 6
  field :FIELD_CANNOT_BE_CLEARED, 7
  field :BLOCKED_VALUE, 9
end
defmodule Google.Ads.Googleads.V9.Errors.FieldErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
