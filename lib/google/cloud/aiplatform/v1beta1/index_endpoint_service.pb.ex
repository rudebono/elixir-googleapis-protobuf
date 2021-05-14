defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          index_endpoint: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint.t() | nil
        }

  defstruct [:parent, :index_endpoint]

  field :parent, 1, type: :string
  field :index_endpoint, 2, type: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexEndpointOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetIndexEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexEndpointsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexEndpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoints: [Google.Cloud.Aiplatform.V1beta1.IndexEndpoint.t()],
          next_page_token: String.t()
        }

  defstruct [:index_endpoints, :next_page_token]

  field :index_endpoints, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateIndexEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoint: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:index_endpoint, :update_mask]

  field :index_endpoint, 1, type: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteIndexEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoint: String.t(),
          deployed_index: Google.Cloud.Aiplatform.V1beta1.DeployedIndex.t() | nil
        }

  defstruct [:index_endpoint, :deployed_index]

  field :index_endpoint, 1, type: :string
  field :deployed_index, 2, type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployIndexResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployed_index: Google.Cloud.Aiplatform.V1beta1.DeployedIndex.t() | nil
        }

  defstruct [:deployed_index]

  field :deployed_index, 1, type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeployIndexOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoint: String.t(),
          deployed_index_id: String.t()
        }

  defstruct [:index_endpoint, :deployed_index_id]

  field :index_endpoint, 1, type: :string
  field :deployed_index_id, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployIndexResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Aiplatform.V1beta1.UndeployIndexOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end

defmodule Google.Cloud.Aiplatform.V1beta1.IndexEndpointService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.IndexEndpointService"

  rpc :CreateIndexEndpoint,
      Google.Cloud.Aiplatform.V1beta1.CreateIndexEndpointRequest,
      Google.Longrunning.Operation

  rpc :GetIndexEndpoint,
      Google.Cloud.Aiplatform.V1beta1.GetIndexEndpointRequest,
      Google.Cloud.Aiplatform.V1beta1.IndexEndpoint

  rpc :ListIndexEndpoints,
      Google.Cloud.Aiplatform.V1beta1.ListIndexEndpointsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListIndexEndpointsResponse

  rpc :UpdateIndexEndpoint,
      Google.Cloud.Aiplatform.V1beta1.UpdateIndexEndpointRequest,
      Google.Cloud.Aiplatform.V1beta1.IndexEndpoint

  rpc :DeleteIndexEndpoint,
      Google.Cloud.Aiplatform.V1beta1.DeleteIndexEndpointRequest,
      Google.Longrunning.Operation

  rpc :DeployIndex,
      Google.Cloud.Aiplatform.V1beta1.DeployIndexRequest,
      Google.Longrunning.Operation

  rpc :UndeployIndex,
      Google.Cloud.Aiplatform.V1beta1.UndeployIndexRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.IndexEndpointService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.IndexEndpointService.Service
end
