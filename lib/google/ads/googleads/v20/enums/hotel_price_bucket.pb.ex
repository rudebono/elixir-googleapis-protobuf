defmodule Google.Ads.Googleads.V20.Enums.HotelPriceBucketEnum.HotelPriceBucket do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :LOWEST_UNIQUE, 2
  field :LOWEST_TIED, 3
  field :NOT_LOWEST, 4
  field :ONLY_PARTNER_SHOWN, 5
end

defmodule Google.Ads.Googleads.V20.Enums.HotelPriceBucketEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
