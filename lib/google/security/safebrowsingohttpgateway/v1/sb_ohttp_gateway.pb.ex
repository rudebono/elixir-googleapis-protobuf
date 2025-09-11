defmodule Google.Security.Safebrowsingohttpgateway.V1.SafeBrowsingOhttpGateway.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.security.safebrowsingohttpgateway.v1.SafeBrowsingOhttpGateway",
    protoc_gen_elixir_version: "0.15.0"

  rpc :HandleOhttpEncapsulatedRequest, Google.Api.HttpBody, Google.Api.HttpBody

  rpc :GetHpkeKeyConfig, Google.Api.HttpBody, Google.Api.HttpBody
end

defmodule Google.Security.Safebrowsingohttpgateway.V1.SafeBrowsingOhttpGateway.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Security.Safebrowsingohttpgateway.V1.SafeBrowsingOhttpGateway.Service
end
