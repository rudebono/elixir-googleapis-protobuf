defmodule Google.Cloud.Networkservices.V1.NetworkServices.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networkservices.v1.NetworkServices",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListEndpointPolicies,
      Google.Cloud.Networkservices.V1.ListEndpointPoliciesRequest,
      Google.Cloud.Networkservices.V1.ListEndpointPoliciesResponse

  rpc :GetEndpointPolicy,
      Google.Cloud.Networkservices.V1.GetEndpointPolicyRequest,
      Google.Cloud.Networkservices.V1.EndpointPolicy

  rpc :CreateEndpointPolicy,
      Google.Cloud.Networkservices.V1.CreateEndpointPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateEndpointPolicy,
      Google.Cloud.Networkservices.V1.UpdateEndpointPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteEndpointPolicy,
      Google.Cloud.Networkservices.V1.DeleteEndpointPolicyRequest,
      Google.Longrunning.Operation

  rpc :ListGateways,
      Google.Cloud.Networkservices.V1.ListGatewaysRequest,
      Google.Cloud.Networkservices.V1.ListGatewaysResponse

  rpc :GetGateway,
      Google.Cloud.Networkservices.V1.GetGatewayRequest,
      Google.Cloud.Networkservices.V1.Gateway

  rpc :CreateGateway,
      Google.Cloud.Networkservices.V1.CreateGatewayRequest,
      Google.Longrunning.Operation

  rpc :UpdateGateway,
      Google.Cloud.Networkservices.V1.UpdateGatewayRequest,
      Google.Longrunning.Operation

  rpc :DeleteGateway,
      Google.Cloud.Networkservices.V1.DeleteGatewayRequest,
      Google.Longrunning.Operation

  rpc :ListGrpcRoutes,
      Google.Cloud.Networkservices.V1.ListGrpcRoutesRequest,
      Google.Cloud.Networkservices.V1.ListGrpcRoutesResponse

  rpc :GetGrpcRoute,
      Google.Cloud.Networkservices.V1.GetGrpcRouteRequest,
      Google.Cloud.Networkservices.V1.GrpcRoute

  rpc :CreateGrpcRoute,
      Google.Cloud.Networkservices.V1.CreateGrpcRouteRequest,
      Google.Longrunning.Operation

  rpc :UpdateGrpcRoute,
      Google.Cloud.Networkservices.V1.UpdateGrpcRouteRequest,
      Google.Longrunning.Operation

  rpc :DeleteGrpcRoute,
      Google.Cloud.Networkservices.V1.DeleteGrpcRouteRequest,
      Google.Longrunning.Operation

  rpc :ListHttpRoutes,
      Google.Cloud.Networkservices.V1.ListHttpRoutesRequest,
      Google.Cloud.Networkservices.V1.ListHttpRoutesResponse

  rpc :GetHttpRoute,
      Google.Cloud.Networkservices.V1.GetHttpRouteRequest,
      Google.Cloud.Networkservices.V1.HttpRoute

  rpc :CreateHttpRoute,
      Google.Cloud.Networkservices.V1.CreateHttpRouteRequest,
      Google.Longrunning.Operation

  rpc :UpdateHttpRoute,
      Google.Cloud.Networkservices.V1.UpdateHttpRouteRequest,
      Google.Longrunning.Operation

  rpc :DeleteHttpRoute,
      Google.Cloud.Networkservices.V1.DeleteHttpRouteRequest,
      Google.Longrunning.Operation

  rpc :ListTcpRoutes,
      Google.Cloud.Networkservices.V1.ListTcpRoutesRequest,
      Google.Cloud.Networkservices.V1.ListTcpRoutesResponse

  rpc :GetTcpRoute,
      Google.Cloud.Networkservices.V1.GetTcpRouteRequest,
      Google.Cloud.Networkservices.V1.TcpRoute

  rpc :CreateTcpRoute,
      Google.Cloud.Networkservices.V1.CreateTcpRouteRequest,
      Google.Longrunning.Operation

  rpc :UpdateTcpRoute,
      Google.Cloud.Networkservices.V1.UpdateTcpRouteRequest,
      Google.Longrunning.Operation

  rpc :DeleteTcpRoute,
      Google.Cloud.Networkservices.V1.DeleteTcpRouteRequest,
      Google.Longrunning.Operation

  rpc :ListTlsRoutes,
      Google.Cloud.Networkservices.V1.ListTlsRoutesRequest,
      Google.Cloud.Networkservices.V1.ListTlsRoutesResponse

  rpc :GetTlsRoute,
      Google.Cloud.Networkservices.V1.GetTlsRouteRequest,
      Google.Cloud.Networkservices.V1.TlsRoute

  rpc :CreateTlsRoute,
      Google.Cloud.Networkservices.V1.CreateTlsRouteRequest,
      Google.Longrunning.Operation

  rpc :UpdateTlsRoute,
      Google.Cloud.Networkservices.V1.UpdateTlsRouteRequest,
      Google.Longrunning.Operation

  rpc :DeleteTlsRoute,
      Google.Cloud.Networkservices.V1.DeleteTlsRouteRequest,
      Google.Longrunning.Operation

  rpc :ListServiceBindings,
      Google.Cloud.Networkservices.V1.ListServiceBindingsRequest,
      Google.Cloud.Networkservices.V1.ListServiceBindingsResponse

  rpc :GetServiceBinding,
      Google.Cloud.Networkservices.V1.GetServiceBindingRequest,
      Google.Cloud.Networkservices.V1.ServiceBinding

  rpc :CreateServiceBinding,
      Google.Cloud.Networkservices.V1.CreateServiceBindingRequest,
      Google.Longrunning.Operation

  rpc :UpdateServiceBinding,
      Google.Cloud.Networkservices.V1.UpdateServiceBindingRequest,
      Google.Longrunning.Operation

  rpc :DeleteServiceBinding,
      Google.Cloud.Networkservices.V1.DeleteServiceBindingRequest,
      Google.Longrunning.Operation

  rpc :ListMeshes,
      Google.Cloud.Networkservices.V1.ListMeshesRequest,
      Google.Cloud.Networkservices.V1.ListMeshesResponse

  rpc :GetMesh,
      Google.Cloud.Networkservices.V1.GetMeshRequest,
      Google.Cloud.Networkservices.V1.Mesh

  rpc :CreateMesh, Google.Cloud.Networkservices.V1.CreateMeshRequest, Google.Longrunning.Operation

  rpc :UpdateMesh, Google.Cloud.Networkservices.V1.UpdateMeshRequest, Google.Longrunning.Operation

  rpc :DeleteMesh, Google.Cloud.Networkservices.V1.DeleteMeshRequest, Google.Longrunning.Operation

  rpc :ListServiceLbPolicies,
      Google.Cloud.Networkservices.V1.ListServiceLbPoliciesRequest,
      Google.Cloud.Networkservices.V1.ListServiceLbPoliciesResponse

  rpc :GetServiceLbPolicy,
      Google.Cloud.Networkservices.V1.GetServiceLbPolicyRequest,
      Google.Cloud.Networkservices.V1.ServiceLbPolicy

  rpc :CreateServiceLbPolicy,
      Google.Cloud.Networkservices.V1.CreateServiceLbPolicyRequest,
      Google.Longrunning.Operation

  rpc :UpdateServiceLbPolicy,
      Google.Cloud.Networkservices.V1.UpdateServiceLbPolicyRequest,
      Google.Longrunning.Operation

  rpc :DeleteServiceLbPolicy,
      Google.Cloud.Networkservices.V1.DeleteServiceLbPolicyRequest,
      Google.Longrunning.Operation

  rpc :GetGatewayRouteView,
      Google.Cloud.Networkservices.V1.GetGatewayRouteViewRequest,
      Google.Cloud.Networkservices.V1.GatewayRouteView

  rpc :GetMeshRouteView,
      Google.Cloud.Networkservices.V1.GetMeshRouteViewRequest,
      Google.Cloud.Networkservices.V1.MeshRouteView

  rpc :ListGatewayRouteViews,
      Google.Cloud.Networkservices.V1.ListGatewayRouteViewsRequest,
      Google.Cloud.Networkservices.V1.ListGatewayRouteViewsResponse

  rpc :ListMeshRouteViews,
      Google.Cloud.Networkservices.V1.ListMeshRouteViewsRequest,
      Google.Cloud.Networkservices.V1.ListMeshRouteViewsResponse
end

defmodule Google.Cloud.Networkservices.V1.NetworkServices.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networkservices.V1.NetworkServices.Service
end
