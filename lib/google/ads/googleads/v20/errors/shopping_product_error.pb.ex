defmodule Google.Ads.Googleads.V20.Errors.ShoppingProductErrorEnum.ShoppingProductError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MISSING_CAMPAIGN_FILTER, 2
  field :MISSING_AD_GROUP_FILTER, 3
  field :UNSUPPORTED_DATE_SEGMENTATION, 4
end

defmodule Google.Ads.Googleads.V20.Errors.ShoppingProductErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
