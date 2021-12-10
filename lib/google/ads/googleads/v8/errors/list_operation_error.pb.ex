defmodule Google.Ads.Googleads.V8.Errors.ListOperationErrorEnum.ListOperationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :REQUIRED_FIELD_MISSING | :DUPLICATE_VALUES

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :REQUIRED_FIELD_MISSING, 7
  field :DUPLICATE_VALUES, 8
end
defmodule Google.Ads.Googleads.V8.Errors.ListOperationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
