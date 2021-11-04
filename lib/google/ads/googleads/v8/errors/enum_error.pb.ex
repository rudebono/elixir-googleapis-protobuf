defmodule Google.Ads.Googleads.V8.Errors.EnumErrorEnum.EnumError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ENUM_VALUE_NOT_PERMITTED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENUM_VALUE_NOT_PERMITTED, 3
end

defmodule Google.Ads.Googleads.V8.Errors.EnumErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
