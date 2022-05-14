defmodule Google.Cloud.Gkeconnect.Gateway.V1alpha1.GatewayService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.gkeconnect.gateway.v1alpha1.GatewayService",
    protoc_gen_elixir_version: "0.10.0"
end

defmodule Google.Cloud.Gkeconnect.Gateway.V1alpha1.GatewayService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Gkeconnect.Gateway.V1alpha1.GatewayService.Service
end
