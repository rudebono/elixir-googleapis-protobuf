defmodule Google.Ads.Googleads.V7.Services.GetUserInterestRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.UserInterestService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.UserInterestService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetUserInterest,
      Google.Ads.Googleads.V7.Services.GetUserInterestRequest,
      Google.Ads.Googleads.V7.Resources.UserInterest
end

defmodule Google.Ads.Googleads.V7.Services.UserInterestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.UserInterestService.Service
end
