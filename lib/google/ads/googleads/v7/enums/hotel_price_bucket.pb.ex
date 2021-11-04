defmodule Google.Ads.Googleads.V7.Enums.HotelPriceBucketEnum.HotelPriceBucket do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :LOWEST_UNIQUE
          | :LOWEST_TIED
          | :NOT_LOWEST
          | :ONLY_PARTNER_SHOWN

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :LOWEST_UNIQUE, 2
  field :LOWEST_TIED, 3
  field :NOT_LOWEST, 4
  field :ONLY_PARTNER_SHOWN, 5
end

defmodule Google.Ads.Googleads.V7.Enums.HotelPriceBucketEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
