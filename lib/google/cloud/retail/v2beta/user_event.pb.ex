defmodule Google.Cloud.Retail.V2beta.UserEvent.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Retail.V2beta.CustomAttribute.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Retail.V2beta.CustomAttribute
end

defmodule Google.Cloud.Retail.V2beta.UserEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event_type: String.t(),
          visitor_id: String.t(),
          event_time: Google.Protobuf.Timestamp.t() | nil,
          experiment_ids: [String.t()],
          attribution_token: String.t(),
          product_details: [Google.Cloud.Retail.V2beta.ProductDetail.t()],
          attributes: %{String.t() => Google.Cloud.Retail.V2beta.CustomAttribute.t() | nil},
          cart_id: String.t(),
          purchase_transaction: Google.Cloud.Retail.V2beta.PurchaseTransaction.t() | nil,
          search_query: String.t(),
          page_categories: [String.t()],
          user_info: Google.Cloud.Retail.V2beta.UserInfo.t() | nil,
          uri: String.t(),
          referrer_uri: String.t(),
          page_view_id: String.t()
        }

  defstruct [
    :event_type,
    :visitor_id,
    :event_time,
    :experiment_ids,
    :attribution_token,
    :product_details,
    :attributes,
    :cart_id,
    :purchase_transaction,
    :search_query,
    :page_categories,
    :user_info,
    :uri,
    :referrer_uri,
    :page_view_id
  ]

  field :event_type, 1, type: :string
  field :visitor_id, 2, type: :string
  field :event_time, 3, type: Google.Protobuf.Timestamp
  field :experiment_ids, 4, repeated: true, type: :string
  field :attribution_token, 5, type: :string
  field :product_details, 6, repeated: true, type: Google.Cloud.Retail.V2beta.ProductDetail

  field :attributes, 7,
    repeated: true,
    type: Google.Cloud.Retail.V2beta.UserEvent.AttributesEntry,
    map: true

  field :cart_id, 8, type: :string
  field :purchase_transaction, 9, type: Google.Cloud.Retail.V2beta.PurchaseTransaction
  field :search_query, 10, type: :string
  field :page_categories, 11, repeated: true, type: :string
  field :user_info, 12, type: Google.Cloud.Retail.V2beta.UserInfo
  field :uri, 13, type: :string
  field :referrer_uri, 14, type: :string
  field :page_view_id, 15, type: :string
end

defmodule Google.Cloud.Retail.V2beta.ProductDetail do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: Google.Cloud.Retail.V2beta.Product.t() | nil,
          quantity: Google.Protobuf.Int32Value.t() | nil
        }

  defstruct [:product, :quantity]

  field :product, 1, type: Google.Cloud.Retail.V2beta.Product
  field :quantity, 2, type: Google.Protobuf.Int32Value
end

defmodule Google.Cloud.Retail.V2beta.PurchaseTransaction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          revenue: float | :infinity | :negative_infinity | :nan,
          tax: float | :infinity | :negative_infinity | :nan,
          cost: float | :infinity | :negative_infinity | :nan,
          currency_code: String.t()
        }

  defstruct [:id, :revenue, :tax, :cost, :currency_code]

  field :id, 1, type: :string
  field :revenue, 2, type: :float
  field :tax, 3, type: :float
  field :cost, 4, type: :float
  field :currency_code, 5, type: :string
end
