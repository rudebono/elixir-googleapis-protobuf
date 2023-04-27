defmodule Google.Cloud.Retail.V2.UserEvent.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2.CustomAttribute
end

defmodule Google.Cloud.Retail.V2.UserEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :event_type, 1, type: :string, json_name: "eventType", deprecated: false
  field :visitor_id, 2, type: :string, json_name: "visitorId", deprecated: false
  field :session_id, 21, type: :string, json_name: "sessionId"
  field :event_time, 3, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :experiment_ids, 4, repeated: true, type: :string, json_name: "experimentIds"
  field :attribution_token, 5, type: :string, json_name: "attributionToken"

  field :product_details, 6,
    repeated: true,
    type: Google.Cloud.Retail.V2.ProductDetail,
    json_name: "productDetails"

  field :completion_detail, 22,
    type: Google.Cloud.Retail.V2.CompletionDetail,
    json_name: "completionDetail"

  field :attributes, 7,
    repeated: true,
    type: Google.Cloud.Retail.V2.UserEvent.AttributesEntry,
    map: true

  field :cart_id, 8, type: :string, json_name: "cartId"

  field :purchase_transaction, 9,
    type: Google.Cloud.Retail.V2.PurchaseTransaction,
    json_name: "purchaseTransaction"

  field :search_query, 10, type: :string, json_name: "searchQuery"
  field :filter, 16, type: :string
  field :order_by, 17, type: :string, json_name: "orderBy"
  field :offset, 18, type: :int32
  field :page_categories, 11, repeated: true, type: :string, json_name: "pageCategories"
  field :user_info, 12, type: Google.Cloud.Retail.V2.UserInfo, json_name: "userInfo"
  field :uri, 13, type: :string
  field :referrer_uri, 14, type: :string, json_name: "referrerUri"
  field :page_view_id, 15, type: :string, json_name: "pageViewId"
  field :entity, 23, type: :string
end

defmodule Google.Cloud.Retail.V2.ProductDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :product, 1, type: Google.Cloud.Retail.V2.Product, deprecated: false
  field :quantity, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Cloud.Retail.V2.CompletionDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :completion_attribution_token, 1, type: :string, json_name: "completionAttributionToken"
  field :selected_suggestion, 2, type: :string, json_name: "selectedSuggestion"
  field :selected_position, 3, type: :int32, json_name: "selectedPosition"
end

defmodule Google.Cloud.Retail.V2.PurchaseTransaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :revenue, 2, type: :float, deprecated: false
  field :tax, 3, type: :float
  field :cost, 4, type: :float
  field :currency_code, 5, type: :string, json_name: "currencyCode", deprecated: false
end