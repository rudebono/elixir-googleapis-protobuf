defmodule Google.Shopping.Merchant.Products.V1beta.Product do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :channel, 2, type: Google.Shopping.Type.Channel.ChannelEnum, enum: true, deprecated: false
  field :offer_id, 3, type: :string, json_name: "offerId", deprecated: false
  field :content_language, 4, type: :string, json_name: "contentLanguage", deprecated: false
  field :feed_label, 5, type: :string, json_name: "feedLabel", deprecated: false
  field :data_source, 6, type: :string, json_name: "dataSource", deprecated: false

  field :version_number, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "versionNumber",
    deprecated: false

  field :attributes, 8,
    type: Google.Shopping.Merchant.Products.V1beta.Attributes,
    deprecated: false

  field :custom_attributes, 9,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "customAttributes",
    deprecated: false

  field :product_status, 10,
    type: Google.Shopping.Merchant.Products.V1beta.ProductStatus,
    json_name: "productStatus",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1beta.GetProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1beta.ListProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Merchant.Products.V1beta.ListProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :products, 1, repeated: true, type: Google.Shopping.Merchant.Products.V1beta.Product
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.products.v1beta.ProductsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetProduct,
      Google.Shopping.Merchant.Products.V1beta.GetProductRequest,
      Google.Shopping.Merchant.Products.V1beta.Product

  rpc :ListProducts,
      Google.Shopping.Merchant.Products.V1beta.ListProductsRequest,
      Google.Shopping.Merchant.Products.V1beta.ListProductsResponse
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Products.V1beta.ProductsService.Service
end