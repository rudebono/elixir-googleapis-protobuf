defmodule Google.Cloud.Servicedirectory.V1beta1.CreateNamespaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          namespace_id: String.t(),
          namespace: Google.Cloud.Servicedirectory.V1beta1.Namespace.t() | nil
        }

  defstruct [:parent, :namespace_id, :namespace]

  field :parent, 1, type: :string
  field :namespace_id, 2, type: :string
  field :namespace, 3, type: Google.Cloud.Servicedirectory.V1beta1.Namespace
end

defmodule Google.Cloud.Servicedirectory.V1beta1.ListNamespacesRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.ListNamespacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespaces: [Google.Cloud.Servicedirectory.V1beta1.Namespace.t()],
          next_page_token: String.t()
        }

  defstruct [:namespaces, :next_page_token]

  field :namespaces, 1, repeated: true, type: Google.Cloud.Servicedirectory.V1beta1.Namespace
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.GetNamespaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.UpdateNamespaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespace: Google.Cloud.Servicedirectory.V1beta1.Namespace.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:namespace, :update_mask]

  field :namespace, 1, type: Google.Cloud.Servicedirectory.V1beta1.Namespace
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Servicedirectory.V1beta1.DeleteNamespaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.CreateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_id: String.t(),
          service: Google.Cloud.Servicedirectory.V1beta1.Service.t() | nil
        }

  defstruct [:parent, :service_id, :service]

  field :parent, 1, type: :string
  field :service_id, 2, type: :string
  field :service, 3, type: Google.Cloud.Servicedirectory.V1beta1.Service
end

defmodule Google.Cloud.Servicedirectory.V1beta1.ListServicesRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Cloud.Servicedirectory.V1beta1.Service.t()],
          next_page_token: String.t()
        }

  defstruct [:services, :next_page_token]

  field :services, 1, repeated: true, type: Google.Cloud.Servicedirectory.V1beta1.Service
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.UpdateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: Google.Cloud.Servicedirectory.V1beta1.Service.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:service, :update_mask]

  field :service, 1, type: Google.Cloud.Servicedirectory.V1beta1.Service
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Servicedirectory.V1beta1.DeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.CreateEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          endpoint_id: String.t(),
          endpoint: Google.Cloud.Servicedirectory.V1beta1.Endpoint.t() | nil
        }

  defstruct [:parent, :endpoint_id, :endpoint]

  field :parent, 1, type: :string
  field :endpoint_id, 2, type: :string
  field :endpoint, 3, type: Google.Cloud.Servicedirectory.V1beta1.Endpoint
end

defmodule Google.Cloud.Servicedirectory.V1beta1.ListEndpointsRequest do
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
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.ListEndpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoints: [Google.Cloud.Servicedirectory.V1beta1.Endpoint.t()],
          next_page_token: String.t()
        }

  defstruct [:endpoints, :next_page_token]

  field :endpoints, 1, repeated: true, type: Google.Cloud.Servicedirectory.V1beta1.Endpoint
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.GetEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Servicedirectory.V1beta1.UpdateEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: Google.Cloud.Servicedirectory.V1beta1.Endpoint.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:endpoint, :update_mask]

  field :endpoint, 1, type: Google.Cloud.Servicedirectory.V1beta1.Endpoint
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Servicedirectory.V1beta1.DeleteEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
