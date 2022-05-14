defmodule Google.Ads.Googleads.V8.Services.GetSmartCampaignSearchTermViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSearchTermViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.SmartCampaignSearchTermViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetSmartCampaignSearchTermView,
      Google.Ads.Googleads.V8.Services.GetSmartCampaignSearchTermViewRequest,
      Google.Ads.Googleads.V8.Resources.SmartCampaignSearchTermView
end

defmodule Google.Ads.Googleads.V8.Services.SmartCampaignSearchTermViewService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.SmartCampaignSearchTermViewService.Service
end
