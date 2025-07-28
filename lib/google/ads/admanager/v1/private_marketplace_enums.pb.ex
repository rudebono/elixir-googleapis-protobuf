defmodule Google.Ads.Admanager.V1.PrivateMarketplaceDealStatusEnum.PrivateMarketplaceDealStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PRIVATE_MARKETPLACE_DEAL_STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
  field :CANCELED, 3
  field :SELLER_PAUSED, 4
  field :BUYER_PAUSED, 5
end

defmodule Google.Ads.Admanager.V1.PrivateMarketplaceDealStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
