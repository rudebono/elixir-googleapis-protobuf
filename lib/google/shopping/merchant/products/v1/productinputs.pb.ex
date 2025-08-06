defmodule Google.Shopping.Merchant.Products.V1.ProductInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :product, 2, type: :string, deprecated: false
  field :legacy_local, 10, type: :bool, json_name: "legacyLocal", deprecated: false
  field :offer_id, 4, type: :string, json_name: "offerId", deprecated: false
  field :content_language, 5, type: :string, json_name: "contentLanguage", deprecated: false
  field :feed_label, 6, type: :string, json_name: "feedLabel", deprecated: false

  field :version_number, 7,
    proto3_optional: true,
    type: :int64,
    json_name: "versionNumber",
    deprecated: false

  field :product_attributes, 11,
    type: Google.Shopping.Merchant.Products.V1.ProductAttributes,
    json_name: "productAttributes",
    deprecated: false

  field :custom_attributes, 9,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "customAttributes",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1.InsertProductInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :product_input, 2,
    type: Google.Shopping.Merchant.Products.V1.ProductInput,
    json_name: "productInput",
    deprecated: false

  field :data_source, 3, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1.UpdateProductInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :product_input, 1,
    type: Google.Shopping.Merchant.Products.V1.ProductInput,
    json_name: "productInput",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :data_source, 3, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1.DeleteProductInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :data_source, 2, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1.ProductInputsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.products.v1.ProductInputsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :InsertProductInput,
      Google.Shopping.Merchant.Products.V1.InsertProductInputRequest,
      Google.Shopping.Merchant.Products.V1.ProductInput

  rpc :UpdateProductInput,
      Google.Shopping.Merchant.Products.V1.UpdateProductInputRequest,
      Google.Shopping.Merchant.Products.V1.ProductInput

  rpc :DeleteProductInput,
      Google.Shopping.Merchant.Products.V1.DeleteProductInputRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Products.V1.ProductInputsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Products.V1.ProductInputsService.Service
end
