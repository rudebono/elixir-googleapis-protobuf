defmodule Google.Ads.Googleads.V7.Services.GetChangeStatusRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.ChangeStatusService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v7.services.ChangeStatusService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetChangeStatus,
      Google.Ads.Googleads.V7.Services.GetChangeStatusRequest,
      Google.Ads.Googleads.V7.Resources.ChangeStatus
end

defmodule Google.Ads.Googleads.V7.Services.ChangeStatusService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.ChangeStatusService.Service
end
