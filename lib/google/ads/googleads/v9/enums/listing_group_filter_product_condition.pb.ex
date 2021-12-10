defmodule Google.Ads.Googleads.V9.Enums.ListingGroupFilterProductConditionEnum.ListingGroupFilterProductCondition do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :NEW | :REFURBISHED | :USED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NEW, 2
  field :REFURBISHED, 3
  field :USED, 4
end
defmodule Google.Ads.Googleads.V9.Enums.ListingGroupFilterProductConditionEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
