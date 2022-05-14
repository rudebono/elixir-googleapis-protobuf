defmodule Google.Cloud.Recommendationengine.V1beta1.UserEvent.EventSource do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :EVENT_SOURCE_UNSPECIFIED, 0
  field :AUTOML, 1
  field :ECOMMERCE, 2
  field :BATCH_UPLOAD, 3
end
defmodule Google.Cloud.Recommendationengine.V1beta1.UserEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :event_type, 1, type: :string, json_name: "eventType", deprecated: false

  field :user_info, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.UserInfo,
    json_name: "userInfo",
    deprecated: false

  field :event_detail, 3,
    type: Google.Cloud.Recommendationengine.V1beta1.EventDetail,
    json_name: "eventDetail",
    deprecated: false

  field :product_event_detail, 4,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductEventDetail,
    json_name: "productEventDetail",
    deprecated: false

  field :event_time, 5, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false

  field :event_source, 6,
    type: Google.Cloud.Recommendationengine.V1beta1.UserEvent.EventSource,
    json_name: "eventSource",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.UserInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :visitor_id, 1, type: :string, json_name: "visitorId", deprecated: false
  field :user_id, 2, type: :string, json_name: "userId", deprecated: false
  field :ip_address, 3, type: :string, json_name: "ipAddress", deprecated: false
  field :user_agent, 4, type: :string, json_name: "userAgent", deprecated: false
  field :direct_user_request, 5, type: :bool, json_name: "directUserRequest", deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.EventDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :referrer_uri, 6, type: :string, json_name: "referrerUri", deprecated: false
  field :page_view_id, 2, type: :string, json_name: "pageViewId", deprecated: false

  field :experiment_ids, 3,
    repeated: true,
    type: :string,
    json_name: "experimentIds",
    deprecated: false

  field :recommendation_token, 4,
    type: :string,
    json_name: "recommendationToken",
    deprecated: false

  field :event_attributes, 5,
    type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap,
    json_name: "eventAttributes",
    deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.ProductEventDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :search_query, 1, type: :string, json_name: "searchQuery"

  field :page_categories, 2,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem.CategoryHierarchy,
    json_name: "pageCategories"

  field :product_details, 3,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductDetail,
    json_name: "productDetails"

  field :list_id, 4, type: :string, json_name: "listId"
  field :cart_id, 5, type: :string, json_name: "cartId", deprecated: false

  field :purchase_transaction, 6,
    type: Google.Cloud.Recommendationengine.V1beta1.PurchaseTransaction,
    json_name: "purchaseTransaction",
    deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.PurchaseTransaction.TaxesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :float
end
defmodule Google.Cloud.Recommendationengine.V1beta1.PurchaseTransaction.CostsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :float
end
defmodule Google.Cloud.Recommendationengine.V1beta1.PurchaseTransaction do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :revenue, 2, type: :float, deprecated: false

  field :taxes, 3,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.PurchaseTransaction.TaxesEntry,
    map: true,
    deprecated: false

  field :costs, 4,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.PurchaseTransaction.CostsEntry,
    map: true,
    deprecated: false

  field :currency_code, 6, type: :string, json_name: "currencyCode", deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.ProductDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :currency_code, 2, type: :string, json_name: "currencyCode", deprecated: false
  field :original_price, 3, type: :float, json_name: "originalPrice", deprecated: false
  field :display_price, 4, type: :float, json_name: "displayPrice", deprecated: false

  field :stock_state, 5,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.StockState,
    json_name: "stockState",
    enum: true,
    deprecated: false

  field :quantity, 6, type: :int32, deprecated: false
  field :available_quantity, 7, type: :int32, json_name: "availableQuantity", deprecated: false

  field :item_attributes, 8,
    type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap,
    json_name: "itemAttributes",
    deprecated: false
end
