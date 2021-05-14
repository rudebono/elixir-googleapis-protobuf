defmodule Google.Ads.Googleads.V7.Errors.FieldErrorEnum.FieldError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :REQUIRED
          | :IMMUTABLE_FIELD
          | :INVALID_VALUE
          | :VALUE_MUST_BE_UNSET
          | :REQUIRED_NONEMPTY_LIST
          | :FIELD_CANNOT_BE_CLEARED
          | :BLOCKED_VALUE

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

defmodule Google.Ads.Googleads.V7.Errors.FieldErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
