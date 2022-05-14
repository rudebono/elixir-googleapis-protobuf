defmodule Google.Ads.Googleads.V9.Services.GetDetailedDemographicRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.DetailedDemographicService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.DetailedDemographicService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetDetailedDemographic,
      Google.Ads.Googleads.V9.Services.GetDetailedDemographicRequest,
      Google.Ads.Googleads.V9.Resources.DetailedDemographic
end

defmodule Google.Ads.Googleads.V9.Services.DetailedDemographicService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.DetailedDemographicService.Service
end
