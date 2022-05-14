defmodule Google.Ads.Googleads.V9.Services.GetParentalStatusViewRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.ParentalStatusViewService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.ParentalStatusViewService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetParentalStatusView,
      Google.Ads.Googleads.V9.Services.GetParentalStatusViewRequest,
      Google.Ads.Googleads.V9.Resources.ParentalStatusView
end

defmodule Google.Ads.Googleads.V9.Services.ParentalStatusViewService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.ParentalStatusViewService.Service
end
