defmodule Google.Cloud.Retail.V2alpha.UserEvent.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Retail.V2alpha.CustomAttribute.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2alpha.CustomAttribute
end
defmodule Google.Cloud.Retail.V2alpha.UserEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_type: String.t(),
          visitor_id: String.t(),
          session_id: String.t(),
          event_time: Google.Protobuf.Timestamp.t() | nil,
          experiment_ids: [String.t()],
          attribution_token: String.t(),
          product_details: [Google.Cloud.Retail.V2alpha.ProductDetail.t()],
          completion_detail: Google.Cloud.Retail.V2alpha.CompletionDetail.t() | nil,
          attributes: %{String.t() => Google.Cloud.Retail.V2alpha.CustomAttribute.t() | nil},
          cart_id: String.t(),
          purchase_transaction: Google.Cloud.Retail.V2alpha.PurchaseTransaction.t() | nil,
          search_query: String.t(),
          filter: String.t(),
          order_by: String.t(),
          offset: integer,
          page_categories: [String.t()],
          user_info: Google.Cloud.Retail.V2alpha.UserInfo.t() | nil,
          uri: String.t(),
          referrer_uri: String.t(),
          page_view_id: String.t()
        }

  defstruct event_type: "",
            visitor_id: "",
            session_id: "",
            event_time: nil,
            experiment_ids: [],
            attribution_token: "",
            product_details: [],
            completion_detail: nil,
            attributes: %{},
            cart_id: "",
            purchase_transaction: nil,
            search_query: "",
            filter: "",
            order_by: "",
            offset: 0,
            page_categories: [],
            user_info: nil,
            uri: "",
            referrer_uri: "",
            page_view_id: ""

  field :event_type, 1, type: :string, json_name: "eventType", deprecated: false
  field :visitor_id, 2, type: :string, json_name: "visitorId", deprecated: false
  field :session_id, 21, type: :string, json_name: "sessionId"
  field :event_time, 3, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :experiment_ids, 4, repeated: true, type: :string, json_name: "experimentIds"
  field :attribution_token, 5, type: :string, json_name: "attributionToken"

  field :product_details, 6,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.ProductDetail,
    json_name: "productDetails"

  field :completion_detail, 22,
    type: Google.Cloud.Retail.V2alpha.CompletionDetail,
    json_name: "completionDetail"

  field :attributes, 7,
    repeated: true,
    type: Google.Cloud.Retail.V2alpha.UserEvent.AttributesEntry,
    map: true

  field :cart_id, 8, type: :string, json_name: "cartId"

  field :purchase_transaction, 9,
    type: Google.Cloud.Retail.V2alpha.PurchaseTransaction,
    json_name: "purchaseTransaction"

  field :search_query, 10, type: :string, json_name: "searchQuery"
  field :filter, 16, type: :string
  field :order_by, 17, type: :string, json_name: "orderBy"
  field :offset, 18, type: :int32
  field :page_categories, 11, repeated: true, type: :string, json_name: "pageCategories"
  field :user_info, 12, type: Google.Cloud.Retail.V2alpha.UserInfo, json_name: "userInfo"
  field :uri, 13, type: :string
  field :referrer_uri, 14, type: :string, json_name: "referrerUri"
  field :page_view_id, 15, type: :string, json_name: "pageViewId"
end
defmodule Google.Cloud.Retail.V2alpha.ProductDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: Google.Cloud.Retail.V2alpha.Product.t() | nil,
          quantity: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct product: nil,
            quantity: nil

  field :product, 1, type: Google.Cloud.Retail.V2alpha.Product, deprecated: false
  field :quantity, 2, type: Google.Protobuf.Int32Value
end
defmodule Google.Cloud.Retail.V2alpha.CompletionDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          completion_attribution_token: String.t(),
          selected_suggestion: String.t(),
          selected_position: integer
        }

  defstruct completion_attribution_token: "",
            selected_suggestion: "",
            selected_position: 0

  field :completion_attribution_token, 1, type: :string, json_name: "completionAttributionToken"
  field :selected_suggestion, 2, type: :string, json_name: "selectedSuggestion"
  field :selected_position, 3, type: :int32, json_name: "selectedPosition"
end
defmodule Google.Cloud.Retail.V2alpha.PurchaseTransaction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          revenue: float | :infinity | :negative_infinity | :nan,
          tax: float | :infinity | :negative_infinity | :nan,
          cost: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t()
        }

  defstruct id: "",
            revenue: 0.0,
            tax: 0.0,
            cost: 0.0,
            currency_code: ""

  field :id, 1, type: :string
  field :revenue, 2, type: :float, deprecated: false
  field :tax, 3, type: :float
  field :cost, 4, type: :float
  field :currency_code, 5, type: :string, json_name: "currencyCode", deprecated: false
end
