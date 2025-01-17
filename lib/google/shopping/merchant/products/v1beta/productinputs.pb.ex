defmodule Google.Shopping.Merchant.Products.V1beta.ProductInput do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :product, 2, type: :string, deprecated: false
  field :channel, 3, type: Google.Shopping.Type.Channel.ChannelEnum, enum: true, deprecated: false
  field :offer_id, 4, type: :string, json_name: "offerId", deprecated: false
  field :content_language, 5, type: :string, json_name: "contentLanguage", deprecated: false
  field :feed_label, 6, type: :string, json_name: "feedLabel", deprecated: false

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
end

defmodule Google.Shopping.Merchant.Products.V1beta.InsertProductInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :product_input, 2,
    type: Google.Shopping.Merchant.Products.V1beta.ProductInput,
    json_name: "productInput",
    deprecated: false

  field :data_source, 3, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1beta.DeleteProductInputRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :data_source, 2, type: :string, json_name: "dataSource", deprecated: false
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductInputsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.products.v1beta.ProductInputsService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :InsertProductInput,
      Google.Shopping.Merchant.Products.V1beta.InsertProductInputRequest,
      Google.Shopping.Merchant.Products.V1beta.ProductInput

  rpc :DeleteProductInput,
      Google.Shopping.Merchant.Products.V1beta.DeleteProductInputRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Products.V1beta.ProductInputsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Products.V1beta.ProductInputsService.Service
end
