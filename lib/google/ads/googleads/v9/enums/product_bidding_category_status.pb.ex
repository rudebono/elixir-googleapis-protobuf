defmodule Google.Ads.Googleads.V9.Enums.ProductBiddingCategoryStatusEnum.ProductBiddingCategoryStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ACTIVE | :OBSOLETE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ACTIVE, 2
  field :OBSOLETE, 3
end

defmodule Google.Ads.Googleads.V9.Enums.ProductBiddingCategoryStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
