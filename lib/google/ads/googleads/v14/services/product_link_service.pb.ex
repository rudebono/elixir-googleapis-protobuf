defmodule Google.Ads.Googleads.V14.Services.CreateProductLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :product_link, 2,
    type: Google.Ads.Googleads.V14.Resources.ProductLink,
    json_name: "productLink",
    deprecated: false
end

defmodule Google.Ads.Googleads.V14.Services.CreateProductLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Services.RemoveProductLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :resource_name, 2, type: :string, json_name: "resourceName", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V14.Services.RemoveProductLinkResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V14.Services.ProductLinkService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v14.services.ProductLinkService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateProductLink,
      Google.Ads.Googleads.V14.Services.CreateProductLinkRequest,
      Google.Ads.Googleads.V14.Services.CreateProductLinkResponse

  rpc :RemoveProductLink,
      Google.Ads.Googleads.V14.Services.RemoveProductLinkRequest,
      Google.Ads.Googleads.V14.Services.RemoveProductLinkResponse
end

defmodule Google.Ads.Googleads.V14.Services.ProductLinkService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V14.Services.ProductLinkService.Service
end