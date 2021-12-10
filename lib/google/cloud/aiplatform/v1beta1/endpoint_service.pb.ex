defmodule Google.Cloud.Aiplatform.V1beta1.CreateEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          endpoint: Google.Cloud.Aiplatform.V1beta1.Endpoint.t() | nil,
          endpoint_id: String.t()
        }

  defstruct parent: "",
            endpoint: nil,
            endpoint_id: ""

  field :parent, 1, type: :string, deprecated: false
  field :endpoint, 2, type: Google.Cloud.Aiplatform.V1beta1.Endpoint, deprecated: false
  field :endpoint_id, 4, type: :string, json_name: "endpointId", deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.CreateEndpointOperationMetadata do
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
defmodule Google.Cloud.Aiplatform.V1beta1.GetEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.ListEndpointsRequest do
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
defmodule Google.Cloud.Aiplatform.V1beta1.ListEndpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoints: [Google.Cloud.Aiplatform.V1beta1.Endpoint.t()],
          next_page_token: String.t()
        }

  defstruct endpoints: [],
            next_page_token: ""

  field :endpoints, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Endpoint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1beta1.UpdateEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: Google.Cloud.Aiplatform.V1beta1.Endpoint.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct endpoint: nil,
            update_mask: nil

  field :endpoint, 1, type: Google.Cloud.Aiplatform.V1beta1.Endpoint, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeleteEndpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeployModelRequest.TrafficSplitEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct key: "",
            value: 0

  field :key, 1, type: :string
  field :value, 2, type: :int32
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeployModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          deployed_model: Google.Cloud.Aiplatform.V1beta1.DeployedModel.t() | nil,
          traffic_split: %{String.t() => integer}
        }

  defstruct endpoint: "",
            deployed_model: nil,
            traffic_split: %{}

  field :endpoint, 1, type: :string, deprecated: false

  field :deployed_model, 2,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedModel,
    json_name: "deployedModel",
    deprecated: false

  field :traffic_split, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DeployModelRequest.TrafficSplitEntry,
    json_name: "trafficSplit",
    map: true
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeployModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployed_model: Google.Cloud.Aiplatform.V1beta1.DeployedModel.t() | nil
        }

  defstruct deployed_model: nil

  field :deployed_model, 1,
    type: Google.Cloud.Aiplatform.V1beta1.DeployedModel,
    json_name: "deployedModel"
end
defmodule Google.Cloud.Aiplatform.V1beta1.DeployModelOperationMetadata do
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
defmodule Google.Cloud.Aiplatform.V1beta1.UndeployModelRequest.TrafficSplitEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct key: "",
            value: 0

  field :key, 1, type: :string
  field :value, 2, type: :int32
end
defmodule Google.Cloud.Aiplatform.V1beta1.UndeployModelRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          endpoint: String.t(),
          deployed_model_id: String.t(),
          traffic_split: %{String.t() => integer}
        }

  defstruct endpoint: "",
            deployed_model_id: "",
            traffic_split: %{}

  field :endpoint, 1, type: :string, deprecated: false
  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId", deprecated: false

  field :traffic_split, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.UndeployModelRequest.TrafficSplitEntry,
    json_name: "trafficSplit",
    map: true
end
defmodule Google.Cloud.Aiplatform.V1beta1.UndeployModelResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Aiplatform.V1beta1.UndeployModelOperationMetadata do
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
defmodule Google.Cloud.Aiplatform.V1beta1.EndpointService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1beta1.EndpointService"

  rpc :CreateEndpoint,
      Google.Cloud.Aiplatform.V1beta1.CreateEndpointRequest,
      Google.Longrunning.Operation

  rpc :GetEndpoint,
      Google.Cloud.Aiplatform.V1beta1.GetEndpointRequest,
      Google.Cloud.Aiplatform.V1beta1.Endpoint

  rpc :ListEndpoints,
      Google.Cloud.Aiplatform.V1beta1.ListEndpointsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListEndpointsResponse

  rpc :UpdateEndpoint,
      Google.Cloud.Aiplatform.V1beta1.UpdateEndpointRequest,
      Google.Cloud.Aiplatform.V1beta1.Endpoint

  rpc :DeleteEndpoint,
      Google.Cloud.Aiplatform.V1beta1.DeleteEndpointRequest,
      Google.Longrunning.Operation

  rpc :DeployModel,
      Google.Cloud.Aiplatform.V1beta1.DeployModelRequest,
      Google.Longrunning.Operation

  rpc :UndeployModel,
      Google.Cloud.Aiplatform.V1beta1.UndeployModelRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Aiplatform.V1beta1.EndpointService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.EndpointService.Service
end
