defmodule Google.Ads.Googleads.V8.Services.GetDomainCategoryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.DomainCategoryService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.DomainCategoryService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetDomainCategory,
      Google.Ads.Googleads.V8.Services.GetDomainCategoryRequest,
      Google.Ads.Googleads.V8.Resources.DomainCategory
end

defmodule Google.Ads.Googleads.V8.Services.DomainCategoryService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.DomainCategoryService.Service
end
