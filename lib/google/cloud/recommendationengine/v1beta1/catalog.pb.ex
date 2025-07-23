defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.StockState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STOCK_STATE_UNSPECIFIED, 0
  field :IN_STOCK, 0
  field :OUT_OF_STOCK, 1
  field :PREORDER, 2
  field :BACKORDER, 3
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogItem.CategoryHierarchy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :categories, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :recommendation_type, 0

  field :id, 1, type: :string, deprecated: false

  field :category_hierarchies, 2,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem.CategoryHierarchy,
    json_name: "categoryHierarchies",
    deprecated: false

  field :title, 3, type: :string, deprecated: false
  field :description, 4, type: :string, deprecated: false

  field :item_attributes, 5,
    type: Google.Cloud.Recommendationengine.V1beta1.FeatureMap,
    json_name: "itemAttributes",
    deprecated: false

  field :language_code, 6, type: :string, json_name: "languageCode", deprecated: false
  field :tags, 8, repeated: true, type: :string, deprecated: false
  field :item_group_id, 9, type: :string, json_name: "itemGroupId", deprecated: false

  field :product_metadata, 10,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem,
    json_name: "productMetadata",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.ExactPrice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_price, 1, type: :float, json_name: "displayPrice", deprecated: false
  field :original_price, 2, type: :float, json_name: "originalPrice", deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.PriceRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min, 1, type: :float, deprecated: false
  field :max, 2, type: :float, deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.CostsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :price, 0

  field :exact_price, 1,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.ExactPrice,
    json_name: "exactPrice",
    oneof: 0,
    deprecated: false

  field :price_range, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.PriceRange,
    json_name: "priceRange",
    oneof: 0,
    deprecated: false

  field :costs, 3,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.CostsEntry,
    map: true,
    deprecated: false

  field :currency_code, 4, type: :string, json_name: "currencyCode", deprecated: false

  field :stock_state, 5,
    type: Google.Cloud.Recommendationengine.V1beta1.ProductCatalogItem.StockState,
    json_name: "stockState",
    enum: true,
    deprecated: false

  field :available_quantity, 6, type: :int64, json_name: "availableQuantity", deprecated: false

  field :canonical_product_uri, 7,
    type: :string,
    json_name: "canonicalProductUri",
    deprecated: false

  field :images, 8,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.Image,
    deprecated: false
end

defmodule Google.Cloud.Recommendationengine.V1beta1.Image do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :height, 2, type: :int32, deprecated: false
  field :width, 3, type: :int32, deprecated: false
end
