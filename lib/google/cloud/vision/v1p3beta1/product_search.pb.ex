defmodule Google.Cloud.Vision.V1p3beta1.ProductSearchCategory do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PRODUCT_SEARCH_CATEGORY_UNSPECIFIED | :SHOES | :BAGS

  field :PRODUCT_SEARCH_CATEGORY_UNSPECIFIED, 0
  field :SHOES, 1
  field :BAGS, 2
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSearchResultsView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIC | :FULL

  field :BASIC, 0
  field :FULL, 1
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSearchParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog_name: String.t(),
          category: Google.Cloud.Vision.V1p3beta1.ProductSearchCategory.t(),
          product_category: String.t(),
          normalized_bounding_poly:
            Google.Cloud.Vision.V1p3beta1.NormalizedBoundingPoly.t() | nil,
          bounding_poly: Google.Cloud.Vision.V1p3beta1.BoundingPoly.t() | nil,
          view: Google.Cloud.Vision.V1p3beta1.ProductSearchResultsView.t(),
          product_set: String.t(),
          product_categories: [String.t()],
          filter: String.t()
        }

  defstruct [
    :catalog_name,
    :category,
    :product_category,
    :normalized_bounding_poly,
    :bounding_poly,
    :view,
    :product_set,
    :product_categories,
    :filter
  ]

  field :catalog_name, 1, type: :string, json_name: "catalogName"
  field :category, 2, type: Google.Cloud.Vision.V1p3beta1.ProductSearchCategory, enum: true
  field :product_category, 5, type: :string, json_name: "productCategory"

  field :normalized_bounding_poly, 3,
    type: Google.Cloud.Vision.V1p3beta1.NormalizedBoundingPoly,
    json_name: "normalizedBoundingPoly"

  field :bounding_poly, 9,
    type: Google.Cloud.Vision.V1p3beta1.BoundingPoly,
    json_name: "boundingPoly"

  field :view, 4, type: Google.Cloud.Vision.V1p3beta1.ProductSearchResultsView, enum: true
  field :product_set, 6, type: :string, json_name: "productSet"
  field :product_categories, 7, repeated: true, type: :string, json_name: "productCategories"
  field :filter, 8, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSearchResults.ProductInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product_id: String.t(),
          image_uri: String.t(),
          score: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:product_id, :image_uri, :score]

  field :product_id, 1, type: :string, json_name: "productId"
  field :image_uri, 2, type: :string, json_name: "imageUri"
  field :score, 3, type: :float

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSearchResults.Result do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          product: Google.Cloud.Vision.V1p3beta1.Product.t() | nil,
          score: float | :infinity | :negative_infinity | :nan,
          image: String.t()
        }

  defstruct [:product, :score, :image]

  field :product, 1, type: Google.Cloud.Vision.V1p3beta1.Product
  field :score, 2, type: :float
  field :image, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Vision.V1p3beta1.ProductSearchResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category: Google.Cloud.Vision.V1p3beta1.ProductSearchCategory.t(),
          product_category: String.t(),
          index_time: Google.Protobuf.Timestamp.t() | nil,
          products: [Google.Cloud.Vision.V1p3beta1.ProductSearchResults.ProductInfo.t()],
          results: [Google.Cloud.Vision.V1p3beta1.ProductSearchResults.Result.t()]
        }

  defstruct [:category, :product_category, :index_time, :products, :results]

  field :category, 1, type: Google.Cloud.Vision.V1p3beta1.ProductSearchCategory, enum: true
  field :product_category, 4, type: :string, json_name: "productCategory"
  field :index_time, 2, type: Google.Protobuf.Timestamp, json_name: "indexTime"

  field :products, 3,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.ProductSearchResults.ProductInfo

  field :results, 5,
    repeated: true,
    type: Google.Cloud.Vision.V1p3beta1.ProductSearchResults.Result

  def transform_module(), do: nil
end
