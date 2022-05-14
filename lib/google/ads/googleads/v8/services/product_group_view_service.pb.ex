defmodule Google.Ads.Googleads.V8.Services.GetProductGroupViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.ProductGroupViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.ProductGroupViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetProductGroupView,
      Google.Ads.Googleads.V8.Services.GetProductGroupViewRequest,
      Google.Ads.Googleads.V8.Resources.ProductGroupView
end

defmodule Google.Ads.Googleads.V8.Services.ProductGroupViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.ProductGroupViewService.Service
end
