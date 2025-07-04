defmodule Google.Ads.Googleads.V20.Services.CreateProductLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :product_link, 2,
    type: Google.Ads.Googleads.V20.Resources.ProductLink,
    json_name: "productLink",
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.CreateProductLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.RemoveProductLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :resource_name, 2, type: :string, json_name: "resourceName", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V20.Services.RemoveProductLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Services.ProductLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.ProductLinkService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateProductLink,
      Google.Ads.Googleads.V20.Services.CreateProductLinkRequest,
      Google.Ads.Googleads.V20.Services.CreateProductLinkResponse

  rpc :RemoveProductLink,
      Google.Ads.Googleads.V20.Services.RemoveProductLinkRequest,
      Google.Ads.Googleads.V20.Services.RemoveProductLinkResponse
end

defmodule Google.Ads.Googleads.V20.Services.ProductLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.ProductLinkService.Service
end
