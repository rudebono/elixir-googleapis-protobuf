defmodule Google.Ads.Googleads.V8.Services.GetAssetFieldTypeViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.AssetFieldTypeViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.AssetFieldTypeViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetAssetFieldTypeView,
      Google.Ads.Googleads.V8.Services.GetAssetFieldTypeViewRequest,
      Google.Ads.Googleads.V8.Resources.AssetFieldTypeView
end

defmodule Google.Ads.Googleads.V8.Services.AssetFieldTypeViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AssetFieldTypeViewService.Service
end
