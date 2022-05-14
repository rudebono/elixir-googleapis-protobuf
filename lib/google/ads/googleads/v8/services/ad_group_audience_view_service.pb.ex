defmodule Google.Ads.Googleads.V8.Services.GetAdGroupAudienceViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.AdGroupAudienceViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.AdGroupAudienceViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetAdGroupAudienceView,
      Google.Ads.Googleads.V8.Services.GetAdGroupAudienceViewRequest,
      Google.Ads.Googleads.V8.Resources.AdGroupAudienceView
end

defmodule Google.Ads.Googleads.V8.Services.AdGroupAudienceViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.AdGroupAudienceViewService.Service
end
