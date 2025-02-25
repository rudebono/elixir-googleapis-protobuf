defmodule Google.Cloud.Apigateway.V1.ApiGatewayService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apigateway.v1.ApiGatewayService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListGateways,
      Google.Cloud.Apigateway.V1.ListGatewaysRequest,
      Google.Cloud.Apigateway.V1.ListGatewaysResponse

  rpc :GetGateway,
      Google.Cloud.Apigateway.V1.GetGatewayRequest,
      Google.Cloud.Apigateway.V1.Gateway

  rpc :CreateGateway,
      Google.Cloud.Apigateway.V1.CreateGatewayRequest,
      Google.Longrunning.Operation

  rpc :UpdateGateway,
      Google.Cloud.Apigateway.V1.UpdateGatewayRequest,
      Google.Longrunning.Operation

  rpc :DeleteGateway,
      Google.Cloud.Apigateway.V1.DeleteGatewayRequest,
      Google.Longrunning.Operation

  rpc :ListApis,
      Google.Cloud.Apigateway.V1.ListApisRequest,
      Google.Cloud.Apigateway.V1.ListApisResponse

  rpc :GetApi, Google.Cloud.Apigateway.V1.GetApiRequest, Google.Cloud.Apigateway.V1.Api

  rpc :CreateApi, Google.Cloud.Apigateway.V1.CreateApiRequest, Google.Longrunning.Operation

  rpc :UpdateApi, Google.Cloud.Apigateway.V1.UpdateApiRequest, Google.Longrunning.Operation

  rpc :DeleteApi, Google.Cloud.Apigateway.V1.DeleteApiRequest, Google.Longrunning.Operation

  rpc :ListApiConfigs,
      Google.Cloud.Apigateway.V1.ListApiConfigsRequest,
      Google.Cloud.Apigateway.V1.ListApiConfigsResponse

  rpc :GetApiConfig,
      Google.Cloud.Apigateway.V1.GetApiConfigRequest,
      Google.Cloud.Apigateway.V1.ApiConfig

  rpc :CreateApiConfig,
      Google.Cloud.Apigateway.V1.CreateApiConfigRequest,
      Google.Longrunning.Operation

  rpc :UpdateApiConfig,
      Google.Cloud.Apigateway.V1.UpdateApiConfigRequest,
      Google.Longrunning.Operation

  rpc :DeleteApiConfig,
      Google.Cloud.Apigateway.V1.DeleteApiConfigRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Apigateway.V1.ApiGatewayService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apigateway.V1.ApiGatewayService.Service
end
