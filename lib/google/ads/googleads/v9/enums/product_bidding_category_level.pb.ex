defmodule Google.Ads.Googleads.V9.Enums.ProductBiddingCategoryLevelEnum.ProductBiddingCategoryLevel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :LEVEL1 | :LEVEL2 | :LEVEL3 | :LEVEL4 | :LEVEL5

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :LEVEL1, 2
  field :LEVEL2, 3
  field :LEVEL3, 4
  field :LEVEL4, 5
  field :LEVEL5, 6
end

defmodule Google.Ads.Googleads.V9.Enums.ProductBiddingCategoryLevelEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
