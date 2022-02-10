defmodule Google.Ads.Googleads.V10.Enums.AssetSetTypeEnum.AssetSetType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PAGE_FEED
          | :DYNAMIC_EDUCATION
          | :MERCHANT_CENTER_FEED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PAGE_FEED, 2
  field :DYNAMIC_EDUCATION, 3
  field :MERCHANT_CENTER_FEED, 4
end
defmodule Google.Ads.Googleads.V10.Enums.AssetSetTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
