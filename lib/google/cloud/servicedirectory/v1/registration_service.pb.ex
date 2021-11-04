defmodule Google.Cloud.Servicedirectory.V1.CreateNamespaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          namespace_id: String.t(),
          namespace: Google.Cloud.Servicedirectory.V1.Namespace.t() | nil
        }

  defstruct [:parent, :namespace_id, :namespace]

  field :parent, 1, type: :string
  field :namespace_id, 2, type: :string, json_name: "namespaceId"
  field :namespace, 3, type: Google.Cloud.Servicedirectory.V1.Namespace

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.ListNamespacesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.ListNamespacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespaces: [Google.Cloud.Servicedirectory.V1.Namespace.t()],
          next_page_token: String.t()
        }

  defstruct [:namespaces, :next_page_token]

  field :namespaces, 1, repeated: true, type: Google.Cloud.Servicedirectory.V1.Namespace
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.GetNamespaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.UpdateNamespaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespace: Google.Cloud.Servicedirectory.V1.Namespace.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:namespace, :update_mask]

  field :namespace, 1, type: Google.Cloud.Servicedirectory.V1.Namespace
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.DeleteNamespaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.CreateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_id: String.t(),
          service: Google.Cloud.Servicedirectory.V1.Service.t() | nil
        }

  defstruct [:parent, :service_id, :service]

  field :parent, 1, type: :string
  field :service_id, 2, type: :string, json_name: "serviceId"
  field :service, 3, type: Google.Cloud.Servicedirectory.V1.Service

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.ListServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Cloud.Servicedirectory.V1.Service.t()],
          next_page_token: String.t()
        }

  defstruct [:services, :next_page_token]

  field :services, 1, repeated: true, type: Google.Cloud.Servicedirectory.V1.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.UpdateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Cloud.Servicedirectory.V1.Service.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:service, :update_mask]

  field :service, 1, type: Google.Cloud.Servicedirectory.V1.Service
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.DeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.CreateEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          endpoint_id: String.t(),
          endpoint: Google.Cloud.Servicedirectory.V1.Endpoint.t() | nil
        }

  defstruct [:parent, :endpoint_id, :endpoint]

  field :parent, 1, type: :string
  field :endpoint_id, 2, type: :string, json_name: "endpointId"
  field :endpoint, 3, type: Google.Cloud.Servicedirectory.V1.Endpoint

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.ListEndpointsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.ListEndpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoints: [Google.Cloud.Servicedirectory.V1.Endpoint.t()],
          next_page_token: String.t()
        }

  defstruct [:endpoints, :next_page_token]

  field :endpoints, 1, repeated: true, type: Google.Cloud.Servicedirectory.V1.Endpoint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.GetEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.UpdateEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: Google.Cloud.Servicedirectory.V1.Endpoint.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:endpoint, :update_mask]

  field :endpoint, 1, type: Google.Cloud.Servicedirectory.V1.Endpoint
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.DeleteEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Servicedirectory.V1.RegistrationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.servicedirectory.v1.RegistrationService"

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
