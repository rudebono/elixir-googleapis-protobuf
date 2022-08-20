defmodule Google.Ads.Googleads.V9.Services.GetCombinedAudienceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.CombinedAudienceService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.CombinedAudienceService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetCombinedAudience,
      Google.Ads.Googleads.V9.Services.GetCombinedAudienceRequest,
      Google.Ads.Googleads.V9.Resources.CombinedAudience
end

defmodule Google.Ads.Googleads.V9.Services.CombinedAudienceService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.CombinedAudienceService.Service
end