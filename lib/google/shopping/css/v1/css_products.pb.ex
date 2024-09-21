defmodule Google.Shopping.Css.V1.GetCssProductRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Css.V1.CssProduct do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :raw_provided_id, 2, type: :string, json_name: "rawProvidedId", deprecated: false
  field :content_language, 3, type: :string, json_name: "contentLanguage", deprecated: false
  field :feed_label, 4, type: :string, json_name: "feedLabel", deprecated: false
  field :attributes, 5, type: Google.Shopping.Css.V1.Attributes, deprecated: false

  field :custom_attributes, 6,
    repeated: true,
    type: Google.Shopping.Type.CustomAttribute,
    json_name: "customAttributes",
    deprecated: false

  field :css_product_status, 8,
    type: Google.Shopping.Css.V1.CssProductStatus,
    json_name: "cssProductStatus",
    deprecated: false
end

defmodule Google.Shopping.Css.V1.ListCssProductsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Css.V1.ListCssProductsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :css_products, 1,
    repeated: true,
    type: Google.Shopping.Css.V1.CssProduct,
    json_name: "cssProducts"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Css.V1.CssProductsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.css.v1.CssProductsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetCssProduct,
      Google.Shopping.Css.V1.GetCssProductRequest,
      Google.Shopping.Css.V1.CssProduct

  rpc :ListCssProducts,
      Google.Shopping.Css.V1.ListCssProductsRequest,
      Google.Shopping.Css.V1.ListCssProductsResponse
end

defmodule Google.Shopping.Css.V1.CssProductsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Css.V1.CssProductsService.Service
end