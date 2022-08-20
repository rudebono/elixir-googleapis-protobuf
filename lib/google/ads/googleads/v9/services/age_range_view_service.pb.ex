defmodule Google.Ads.Googleads.V9.Services.GetAgeRangeViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.AgeRangeViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.AgeRangeViewService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetAgeRangeView,
      Google.Ads.Googleads.V9.Services.GetAgeRangeViewRequest,
      Google.Ads.Googleads.V9.Resources.AgeRangeView
end

defmodule Google.Ads.Googleads.V9.Services.AgeRangeViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AgeRangeViewService.Service
end