defmodule Google.Ads.Googleads.V9.Enums.CustomizerAttributeTypeEnum.CustomizerAttributeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :TEXT | :NUMBER | :PRICE | :PERCENT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :TEXT, 2
  field :NUMBER, 3
  field :PRICE, 4
  field :PERCENT, 5
end
defmodule Google.Ads.Googleads.V9.Enums.CustomizerAttributeTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
