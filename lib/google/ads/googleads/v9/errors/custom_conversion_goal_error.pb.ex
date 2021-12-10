defmodule Google.Ads.Googleads.V9.Errors.CustomConversionGoalErrorEnum.CustomConversionGoalError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :INVALID_CONVERSION_ACTION
          | :CONVERSION_ACTION_NOT_ENABLED
          | :CANNOT_REMOVE_LINKED_CUSTOM_CONVERSION_GOAL

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_CONVERSION_ACTION, 2
  field :CONVERSION_ACTION_NOT_ENABLED, 3
  field :CANNOT_REMOVE_LINKED_CUSTOM_CONVERSION_GOAL, 4
end
defmodule Google.Ads.Googleads.V9.Errors.CustomConversionGoalErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
