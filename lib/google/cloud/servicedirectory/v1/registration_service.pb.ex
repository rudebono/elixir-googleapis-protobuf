defmodule Google.Cloud.Servicedirectory.V1.CreateNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :namespace_id, 2, type: :string, json_name: "namespaceId", deprecated: false
  field :namespace, 3, type: Google.Cloud.Servicedirectory.V1.Namespace, deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.ListNamespacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.ListNamespacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :namespaces, 1, repeated: true, type: Google.Cloud.Servicedirectory.V1.Namespace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Servicedirectory.V1.GetNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.UpdateNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :namespace, 1, type: Google.Cloud.Servicedirectory.V1.Namespace, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.DeleteNamespaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.CreateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :service_id, 2, type: :string, json_name: "serviceId", deprecated: false
  field :service, 3, type: Google.Cloud.Servicedirectory.V1.Service, deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.ListServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.ListServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Cloud.Servicedirectory.V1.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Servicedirectory.V1.GetServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.UpdateServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :service, 1, type: Google.Cloud.Servicedirectory.V1.Service, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.DeleteServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.CreateEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :endpoint_id, 2, type: :string, json_name: "endpointId", deprecated: false
  field :endpoint, 3, type: Google.Cloud.Servicedirectory.V1.Endpoint, deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.ListEndpointsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.ListEndpointsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :endpoints, 1, repeated: true, type: Google.Cloud.Servicedirectory.V1.Endpoint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Servicedirectory.V1.GetEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.UpdateEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :endpoint, 1, type: Google.Cloud.Servicedirectory.V1.Endpoint, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.DeleteEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Servicedirectory.V1.RegistrationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.servicedirectory.v1.RegistrationService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateNamespace,
      Google.Cloud.Servicedirectory.V1.CreateNamespaceRequest,
      Google.Cloud.Servicedirectory.V1.Namespace

  rpc :ListNamespaces,
      Google.Cloud.Servicedirectory.V1.ListNamespacesRequest,
      Google.Cloud.Servicedirectory.V1.ListNamespacesResponse

  rpc :GetNamespace,
      Google.Cloud.Servicedirectory.V1.GetNamespaceRequest,
      Google.Cloud.Servicedirectory.V1.Namespace

  rpc :UpdateNamespace,
      Google.Cloud.Servicedirectory.V1.UpdateNamespaceRequest,
      Google.Cloud.Servicedirectory.V1.Namespace

  rpc :DeleteNamespace,
      Google.Cloud.Servicedirectory.V1.DeleteNamespaceRequest,
      Google.Protobuf.Empty

  rpc :CreateService,
      Google.Cloud.Servicedirectory.V1.CreateServiceRequest,
      Google.Cloud.Servicedirectory.V1.Service

  rpc :ListServices,
      Google.Cloud.Servicedirectory.V1.ListServicesRequest,
      Google.Cloud.Servicedirectory.V1.ListServicesResponse

  rpc :GetService,
      Google.Cloud.Servicedirectory.V1.GetServiceRequest,
      Google.Cloud.Servicedirectory.V1.Service

  rpc :UpdateService,
      Google.Cloud.Servicedirectory.V1.UpdateServiceRequest,
      Google.Cloud.Servicedirectory.V1.Service

  rpc :DeleteService, Google.Cloud.Servicedirectory.V1.DeleteServiceRequest, Google.Protobuf.Empty

  rpc :CreateEndpoint,
      Google.Cloud.Servicedirectory.V1.CreateEndpointRequest,
      Google.Cloud.Servicedirectory.V1.Endpoint

  rpc :ListEndpoints,
      Google.Cloud.Servicedirectory.V1.ListEndpointsRequest,
      Google.Cloud.Servicedirectory.V1.ListEndpointsResponse

  rpc :GetEndpoint,
      Google.Cloud.Servicedirectory.V1.GetEndpointRequest,
      Google.Cloud.Servicedirectory.V1.Endpoint

  rpc :UpdateEndpoint,
      Google.Cloud.Servicedirectory.V1.UpdateEndpointRequest,
      Google.Cloud.Servicedirectory.V1.Endpoint

  rpc :DeleteEndpoint,
      Google.Cloud.Servicedirectory.V1.DeleteEndpointRequest,
      Google.Protobuf.Empty

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Servicedirectory.V1.RegistrationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Servicedirectory.V1.RegistrationService.Service
end
