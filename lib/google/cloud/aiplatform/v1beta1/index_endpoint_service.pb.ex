defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          index_endpoint: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint.t() | nil
        }

  defstruct parent: "",
            index_endpoint: nil

  field :parent, 1, type: :string, deprecated: false

  field :index_endpoint, 2,
    type: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint,
    json_name: "indexEndpoint",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.CreateIndexEndpointOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1beta1.GetIndexEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListIndexEndpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoints: [Google.Cloud.Aiplatform.V1beta1.IndexEndpoint.t()],
          next_page_token: String.t()
        }

  defstruct index_endpoints: [],
            next_page_token: ""

  field :index_endpoints, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint,
    json_name: "indexEndpoints"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UpdateIndexEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoint: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct index_endpoint: nil,
            update_mask: nil

  field :index_endpoint, 1,
    type: Google.Cloud.Aiplatform.V1beta1.IndexEndpoint,
    json_name: "indexEndpoint",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeleteIndexEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeployIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoint: String.t(),
          deployed_index: Google.Cloud.Aiplatform.V1beta1.DeployedIndex.t() | nil
        }

  defstruct index_endpoint: "",
            deployed_index: nil

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false

  field :deployed_index, 2,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex,
    json_name: "deployedIndex",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeployIndexResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployed_index: Google.Cloud.Aiplatform.V1beta1.DeployedIndex.t() | nil
        }

  defstruct deployed_index: nil

  field :deployed_index, 1,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex,
    json_name: "deployedIndex"
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeployIndexOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil,
          deployed_index_id: String.t()
        }

  defstruct generic_metadata: nil,
            deployed_index_id: ""

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UndeployIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoint: String.t(),
          deployed_index_id: String.t()
        }

  defstruct index_endpoint: "",
            deployed_index_id: ""

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false
  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId", deprecated: false
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

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1beta1.MutateDeployedIndexRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          index_endpoint: String.t(),
          deployed_index: Google.Cloud.Aiplatform.V1beta1.DeployedIndex.t() | nil
        }

  defstruct index_endpoint: "",
            deployed_index: nil

  field :index_endpoint, 1, type: :string, json_name: "indexEndpoint", deprecated: false

  field :deployed_index, 2,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex,
    json_name: "deployedIndex",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.MutateDeployedIndexResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployed_index: Google.Cloud.Aiplatform.V1beta1.DeployedIndex.t() | nil
        }

  defstruct deployed_index: nil

  field :deployed_index, 1,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedIndex,
    json_name: "deployedIndex"
end
defmodule Google.Cloud.Aiplatform.V1beta1.MutateDeployedIndexOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil,
          deployed_index_id: String.t()
        }

  defstruct generic_metadata: nil,
            deployed_index_id: ""

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"

  field :deployed_index_id, 2, type: :string, json_name: "deployedIndexId"
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

  rpc :MutateDeployedIndex,
      Google.Cloud.Aiplatform.V1beta1.MutateDeployedIndexRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.IndexEndpointService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.IndexEndpointService.Service
end
