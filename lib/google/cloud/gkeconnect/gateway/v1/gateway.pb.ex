defmodule Google.Cloud.Gkeconnect.Gateway.V1.GatewayService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gkeconnect.gateway.v1.GatewayService",
    protoc_gen_elixir_version: "0.11.0"
end

defmodule Google.Cloud.Gkeconnect.Gateway.V1.GatewayService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkeconnect.Gateway.V1.GatewayService.Service
end