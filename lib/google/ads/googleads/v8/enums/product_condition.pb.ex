defmodule Google.Ads.Googleads.V8.Enums.ProductConditionEnum.ProductCondition do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NEW | :REFURBISHED | :USED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NEW, 3
  field :REFURBISHED, 4
  field :USED, 5
end
defmodule Google.Ads.Googleads.V8.Enums.ProductConditionEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
