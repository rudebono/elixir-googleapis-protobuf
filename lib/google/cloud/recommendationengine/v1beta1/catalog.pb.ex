defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.StockState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :STOCK_STATE_UNSPECIFIED | :IN_STOCK | :OUT_OF_STOCK | :PREORDER | :BACKORDER

  field :STOCK_STATE_UNSPECIFIED, 0
  field :IN_STOCK, 0
  field :OUT_OF_STOCK, 1
  field :PREORDER, 2
  field :BACKORDER, 3
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogItem.CategoryHierarchy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          categories: [String.t()]
        }

  defstruct [:categories]

  field :categories, 1, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          recommendation_type:
            {:product_metadata,
             Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.t() | nil},
          id: String.t(),
          category_hierarchies: [
            Google.Cloud.Recommendationengine.V1beta1.CatalogItem.CategoryHierarchy.t()
          ],
          title: String.t(),
          description: String.t(),
          item_attributes: Google.Cloud.Recommendationengine.V1beta1.FeatureMap.t() | nil,
          language_code: String.t(),
          tags: [String.t()],
          item_group_id: String.t()
        }

  defstruct [
    :recommendation_type,
    :id,
    :category_hierarchies,
    :title,
    :description,
    :item_attributes,
    :language_code,
    :tags,
    :item_group_id
  ]

  oneof :recommendation_type, 0

  field :id, 1, type: :string

  field :category_hierarchies, 2,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem.CategoryHierarchy,
    json_name: "categoryHierarchies"

  field :title, 3, type: :string
  field :description, 4, type: :string

  field :item_attributes, 5,
    type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap,
    json_name: "itemAttributes"

  field :language_code, 6, type: :string, json_name: "languageCode"
  field :tags, 8, repeated: true, type: :string
  field :item_group_id, 9, type: :string, json_name: "itemGroupId"

  field :product_metadata, 10,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem,
    json_name: "productMetadata",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.ExactPrice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_price: float | :infinity | :negative_infinity | :nan,
          original_price: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:display_price, :original_price]

  field :display_price, 1, type: :float, json_name: "displayPrice"
  field :original_price, 2, type: :float, json_name: "originalPrice"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.PriceRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min: float | :infinity | :negative_infinity | :nan,
          max: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:min, :max]

  field :min, 1, type: :float
  field :max, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.CostsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          price:
            {:exact_price,
             Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.ExactPrice.t() | nil}
            | {:price_range,
               Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.PriceRange.t() | nil},
          costs: %{String.t() => float | :infinity | :negative_infinity | :nan},
          currency_code: String.t(),
          stock_state:
            Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.StockState.t(),
          available_quantity: integer,
          canonical_product_uri: String.t(),
          images: [Google.Cloud.Recommendationengine.V1beta1.Image.t()]
        }

  defstruct [
    :price,
    :costs,
    :currency_code,
    :stock_state,
    :available_quantity,
    :canonical_product_uri,
    :images
  ]

  oneof :price, 0

  field :exact_price, 1,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.ExactPrice,
    json_name: "exactPrice",
    oneof: 0

  field :price_range, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.PriceRange,
    json_name: "priceRange",
    oneof: 0

  field :costs, 3,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.CostsEntry,
    map: true

  field :currency_code, 4, type: :string, json_name: "currencyCode"

  field :stock_state, 5,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.StockState,
    enum: true,
    json_name: "stockState"

  field :available_quantity, 6, type: :int64, json_name: "availableQuantity"
  field :canonical_product_uri, 7, type: :string, json_name: "canonicalProductUri"
  field :images, 8, repeated: true, type: Google.Cloud.Recommendationengine.V1beta1.Image

  def transform_module(), do: nil
end

defmodule Google.Cloud.Recommendationengine.V1beta1.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          height: integer,
          width: integer
        }

  defstruct [:uri, :height, :width]

  field :uri, 1, type: :string
  field :height, 2, type: :int32
  field :width, 3, type: :int32

  def transform_module(), do: nil
end
