defmodule Google.Ads.Googleads.V8.Services.GetOperatingSystemVersionConstantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.OperatingSystemVersionConstantService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.OperatingSystemVersionConstantService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetOperatingSystemVersionConstant,
      Google.Ads.Googleads.V8.Services.GetOperatingSystemVersionConstantRequest,
      Google.Ads.Googleads.V8.Resources.OperatingSystemVersionConstant
end

defmodule Google.Ads.Googleads.V8.Services.OperatingSystemVersionConstantService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Ads.Googleads.V8.Services.OperatingSystemVersionConstantService.Service
end
