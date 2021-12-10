defmodule Google.Ads.Googleads.V9.Errors.RangeErrorEnum.RangeError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :TOO_LOW | :TOO_HIGH

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TOO_LOW, 2
  field :TOO_HIGH, 3
end
defmodule Google.Ads.Googleads.V9.Errors.RangeErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
