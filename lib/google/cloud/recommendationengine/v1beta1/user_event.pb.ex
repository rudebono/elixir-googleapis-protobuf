defmodule Google.Cloud.Recommendationengine.V1beta1.UserEvent.EventSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :EVENT_SOURCE_UNSPECIFIED | :AUTOML | :ECOMMERCE | :BATCH_UPLOAD

  field :EVENT_SOURCE_UNSPECIFIED, 0
  field :AUTOML, 1
  field :ECOMMERCE, 2
  field :BATCH_UPLOAD, 3
end
defmodule Google.Cloud.Recommendationengine.V1beta1.UserEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_type: String.t(),
          user_info: Google.Cloud.Recommendationengine.V1beta1.UserInfo.t() | nil,
          event_detail: Google.Cloud.Recommendationengine.V1beta1.EventDetail.t() | nil,
          product_event_detail:
            Google.Cloud.Recommendationengine.V1beta1.ProductEventDetail.t() | nil,
          event_time: Google.Protobuf.Timestamp.t() | nil,
          event_source: Google.Cloud.Recommendationengine.V1beta1.UserEvent.EventSource.t()
        }

  defstruct event_type: "",
            user_info: nil,
            event_detail: nil,
            product_event_detail: nil,
            event_time: nil,
            event_source: :EVENT_SOURCE_UNSPECIFIED

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          visitor_id: String.t(),
          user_id: String.t(),
          ip_address: String.t(),
          user_agent: String.t(),
          direct_user_request: boolean
        }

  defstruct visitor_id: "",
            user_id: "",
            ip_address: "",
            user_agent: "",
            direct_user_request: false

  field :visitor_id, 1, type: :string, json_name: "visitorId", deprecated: false
  field :user_id, 2, type: :string, json_name: "userId", deprecated: false
  field :ip_address, 3, type: :string, json_name: "ipAddress", deprecated: false
  field :user_agent, 4, type: :string, json_name: "userAgent", deprecated: false
  field :direct_user_request, 5, type: :bool, json_name: "directUserRequest", deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.EventDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          referrer_uri: String.t(),
          page_view_id: String.t(),
          experiment_ids: [String.t()],
          recommendation_token: String.t(),
          event_attributes: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.t() | nil
        }

  defstruct uri: "",
            referrer_uri: "",
            page_view_id: "",
            experiment_ids: [],
            recommendation_token: "",
            event_attributes: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          search_query: String.t(),
          page_categories: [
            Google.Cloud.Recommendationengine.V1beta1.CatalogItem.CategoryHierarchy.t()
          ],
          product_details: [Google.Cloud.Recommendationengine.V1beta1.ProductDetail.t()],
          list_id: String.t(),
          cart_id: String.t(),
          purchase_transaction:
            Google.Cloud.Recommendationengine.V1beta1.PurchaseTransaction.t() | nil
        }

  defstruct search_query: "",
            page_categories: [],
            product_details: [],
            list_id: "",
            cart_id: "",
            purchase_transaction: nil

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
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct key: "",
            value: 0.0

  field :key, 1, type: :string
  field :value, 2, type: :float
end
defmodule Google.Cloud.Recommendationengine.V1beta1.PurchaseTransaction.CostsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct key: "",
            value: 0.0

  field :key, 1, type: :string
  field :value, 2, type: :float
end
defmodule Google.Cloud.Recommendationengine.V1beta1.PurchaseTransaction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          revenue: float | :infinity | :negative_infinity | :nan,
          taxes: %{String.t() => float | :infinity | :negative_infinity | :nan},
          costs: %{String.t() => float | :infinity | :negative_infinity | :nan},
          currency_code: String.t()
        }

  defstruct id: "",
            revenue: 0.0,
            taxes: %{},
            costs: %{},
            currency_code: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          currency_code: String.t(),
          original_price: float | :infinity | :negative_infinity | :nan,
          display_price: float | :infinity | :negative_infinity | :nan,
          stock_state:
            Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.StockState.t(),
          quantity: integer,
          available_quantity: integer,
          item_attributes: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.t() | nil
        }

  defstruct id: "",
            currency_code: "",
            original_price: 0.0,
            display_price: 0.0,
            stock_state: :STOCK_STATE_UNSPECIFIED,
            quantity: 0,
            available_quantity: 0,
            item_attributes: nil

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
