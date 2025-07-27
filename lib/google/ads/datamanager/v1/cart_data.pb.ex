defmodule Google.Ads.Datamanager.V1.CartData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :merchant_id, 1, type: :string, json_name: "merchantId", deprecated: false
  field :merchant_feed_label, 2, type: :string, json_name: "merchantFeedLabel", deprecated: false

  field :merchant_feed_language_code, 3,
    type: :string,
    json_name: "merchantFeedLanguageCode",
    deprecated: false

  field :transaction_discount, 4,
    type: :double,
    json_name: "transactionDiscount",
    deprecated: false

  field :items, 5, repeated: true, type: Google.Ads.Datamanager.V1.Item, deprecated: false
end

defmodule Google.Ads.Datamanager.V1.Item do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :merchant_product_id, 1, type: :string, json_name: "merchantProductId", deprecated: false
  field :quantity, 2, type: :int64, deprecated: false
  field :unit_price, 3, type: :double, json_name: "unitPrice", deprecated: false
end
