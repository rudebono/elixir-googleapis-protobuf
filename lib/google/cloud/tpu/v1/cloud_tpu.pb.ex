defmodule Google.Cloud.Tpu.V1.Node.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :READY
          | :RESTARTING
          | :REIMAGING
          | :DELETING
          | :REPAIRING
          | :STOPPED
          | :STOPPING
          | :STARTING
          | :PREEMPTED
          | :TERMINATED
          | :HIDING
          | :HIDDEN
          | :UNHIDING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :RESTARTING, 3
  field :REIMAGING, 4
  field :DELETING, 5
  field :REPAIRING, 6
  field :STOPPED, 8
  field :STOPPING, 9
  field :STARTING, 10
  field :PREEMPTED, 11
  field :TERMINATED, 12
  field :HIDING, 13
  field :HIDDEN, 14
  field :UNHIDING, 15
end
defmodule Google.Cloud.Tpu.V1.Node.Health do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :HEALTH_UNSPECIFIED
          | :HEALTHY
          | :DEPRECATED_UNHEALTHY
          | :TIMEOUT
          | :UNHEALTHY_TENSORFLOW
          | :UNHEALTHY_MAINTENANCE

  field :HEALTH_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :DEPRECATED_UNHEALTHY, 2
  field :TIMEOUT, 3
  field :UNHEALTHY_TENSORFLOW, 4
  field :UNHEALTHY_MAINTENANCE, 5
end
defmodule Google.Cloud.Tpu.V1.Node.ApiVersion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :API_VERSION_UNSPECIFIED | :V1_ALPHA1 | :V1 | :V2_ALPHA1

  field :API_VERSION_UNSPECIFIED, 0
  field :V1_ALPHA1, 1
  field :V1, 2
  field :V2_ALPHA1, 3
end
defmodule Google.Cloud.Tpu.V1.Symptom.SymptomType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SYMPTOM_TYPE_UNSPECIFIED
          | :LOW_MEMORY
          | :OUT_OF_MEMORY
          | :EXECUTE_TIMED_OUT
          | :MESH_BUILD_FAIL
          | :HBM_OUT_OF_MEMORY
          | :PROJECT_ABUSE

  field :SYMPTOM_TYPE_UNSPECIFIED, 0
  field :LOW_MEMORY, 1
  field :OUT_OF_MEMORY, 2
  field :EXECUTE_TIMED_OUT, 3
  field :MESH_BUILD_FAIL, 4
  field :HBM_OUT_OF_MEMORY, 5
  field :PROJECT_ABUSE, 6
end
defmodule Google.Cloud.Tpu.V1.SchedulingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          preemptible: boolean,
          reserved: boolean
        }

  defstruct preemptible: false,
            reserved: false

  field :preemptible, 1, type: :bool
  field :reserved, 2, type: :bool
end
defmodule Google.Cloud.Tpu.V1.NetworkEndpoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_address: String.t(),
          port: integer
        }

  defstruct ip_address: "",
            port: 0

  field :ip_address, 1, type: :string, json_name: "ipAddress"
  field :port, 2, type: :int32
end
defmodule Google.Cloud.Tpu.V1.Node.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Tpu.V1.Node do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          accelerator_type: String.t(),
          ip_address: String.t(),
          port: String.t(),
          state: Google.Cloud.Tpu.V1.Node.State.t(),
          health_description: String.t(),
          tensorflow_version: String.t(),
          network: String.t(),
          cidr_block: String.t(),
          service_account: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          scheduling_config: Google.Cloud.Tpu.V1.SchedulingConfig.t() | nil,
          network_endpoints: [Google.Cloud.Tpu.V1.NetworkEndpoint.t()],
          health: Google.Cloud.Tpu.V1.Node.Health.t(),
          labels: %{String.t() => String.t()},
          use_service_networking: boolean,
          api_version: Google.Cloud.Tpu.V1.Node.ApiVersion.t(),
          symptoms: [Google.Cloud.Tpu.V1.Symptom.t()]
        }

  defstruct name: "",
            description: "",
            accelerator_type: "",
            ip_address: "",
            port: "",
            state: :STATE_UNSPECIFIED,
            health_description: "",
            tensorflow_version: "",
            network: "",
            cidr_block: "",
            service_account: "",
            create_time: nil,
            scheduling_config: nil,
            network_endpoints: [],
            health: :HEALTH_UNSPECIFIED,
            labels: %{},
            use_service_networking: false,
            api_version: :API_VERSION_UNSPECIFIED,
            symptoms: []

  field :name, 1, type: :string, deprecated: false
  field :description, 3, type: :string
  field :accelerator_type, 5, type: :string, json_name: "acceleratorType", deprecated: false
  field :ip_address, 8, type: :string, json_name: "ipAddress", deprecated: true
  field :port, 14, type: :string, deprecated: true
  field :state, 9, type: Google.Cloud.Tpu.V1.Node.State, enum: true, deprecated: false
  field :health_description, 10, type: :string, json_name: "healthDescription", deprecated: false
  field :tensorflow_version, 11, type: :string, json_name: "tensorflowVersion", deprecated: false
  field :network, 12, type: :string
  field :cidr_block, 13, type: :string, json_name: "cidrBlock"
  field :service_account, 15, type: :string, json_name: "serviceAccount", deprecated: false

  field :create_time, 16,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :scheduling_config, 17,
    type: Google.Cloud.Tpu.V1.SchedulingConfig,
    json_name: "schedulingConfig"

  field :network_endpoints, 21,
    repeated: true,
    type: Google.Cloud.Tpu.V1.NetworkEndpoint,
    json_name: "networkEndpoints",
    deprecated: false

  field :health, 22, type: Google.Cloud.Tpu.V1.Node.Health, enum: true
  field :labels, 24, repeated: true, type: Google.Cloud.Tpu.V1.Node.LabelsEntry, map: true
  field :use_service_networking, 27, type: :bool, json_name: "useServiceNetworking"

  field :api_version, 38,
    type: Google.Cloud.Tpu.V1.Node.ApiVersion,
    json_name: "apiVersion",
    enum: true,
    deprecated: false

  field :symptoms, 39, repeated: true, type: Google.Cloud.Tpu.V1.Symptom, deprecated: false
end
defmodule Google.Cloud.Tpu.V1.ListNodesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Tpu.V1.ListNodesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          nodes: [Google.Cloud.Tpu.V1.Node.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct nodes: [],
            next_page_token: "",
            unreachable: []

  field :nodes, 1, repeated: true, type: Google.Cloud.Tpu.V1.Node
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Tpu.V1.GetNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tpu.V1.CreateNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          node_id: String.t(),
          node: Google.Cloud.Tpu.V1.Node.t() | nil
        }

  defstruct parent: "",
            node_id: "",
            node: nil

  field :parent, 1, type: :string, deprecated: false
  field :node_id, 2, type: :string, json_name: "nodeId"
  field :node, 3, type: Google.Cloud.Tpu.V1.Node, deprecated: false
end
defmodule Google.Cloud.Tpu.V1.DeleteNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tpu.V1.ReimageNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          tensorflow_version: String.t()
        }

  defstruct name: "",
            tensorflow_version: ""

  field :name, 1, type: :string
  field :tensorflow_version, 2, type: :string, json_name: "tensorflowVersion"
end
defmodule Google.Cloud.Tpu.V1.StopNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Tpu.V1.StartNodeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Cloud.Tpu.V1.TensorFlowVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: String.t()
        }

  defstruct name: "",
            version: ""

  field :name, 1, type: :string
  field :version, 2, type: :string
end
defmodule Google.Cloud.Tpu.V1.GetTensorFlowVersionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tpu.V1.ListTensorFlowVersionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
  field :order_by, 6, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Tpu.V1.ListTensorFlowVersionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tensorflow_versions: [Google.Cloud.Tpu.V1.TensorFlowVersion.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct tensorflow_versions: [],
            next_page_token: "",
            unreachable: []

  field :tensorflow_versions, 1,
    repeated: true,
    type: Google.Cloud.Tpu.V1.TensorFlowVersion,
    json_name: "tensorflowVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Tpu.V1.AcceleratorType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: String.t()
        }

  defstruct name: "",
            type: ""

  field :name, 1, type: :string
  field :type, 2, type: :string
end
defmodule Google.Cloud.Tpu.V1.GetAcceleratorTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Tpu.V1.ListAcceleratorTypesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
  field :order_by, 6, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Tpu.V1.ListAcceleratorTypesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accelerator_types: [Google.Cloud.Tpu.V1.AcceleratorType.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct accelerator_types: [],
            next_page_token: "",
            unreachable: []

  field :accelerator_types, 1,
    repeated: true,
    type: Google.Cloud.Tpu.V1.AcceleratorType,
    json_name: "acceleratorTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Tpu.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_detail: String.t(),
          cancel_requested: boolean,
          api_version: String.t()
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_detail: "",
            cancel_requested: false,
            api_version: ""

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string, json_name: "statusDetail"
  field :cancel_requested, 6, type: :bool, json_name: "cancelRequested"
  field :api_version, 7, type: :string, json_name: "apiVersion"
end
defmodule Google.Cloud.Tpu.V1.Symptom do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          symptom_type: Google.Cloud.Tpu.V1.Symptom.SymptomType.t(),
          details: String.t(),
          worker_id: String.t()
        }

  defstruct create_time: nil,
            symptom_type: :SYMPTOM_TYPE_UNSPECIFIED,
            details: "",
            worker_id: ""

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :symptom_type, 2,
    type: Google.Cloud.Tpu.V1.Symptom.SymptomType,
    json_name: "symptomType",
    enum: true

  field :details, 3, type: :string
  field :worker_id, 4, type: :string, json_name: "workerId"
end
defmodule Google.Cloud.Tpu.V1.Tpu.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.tpu.v1.Tpu"

  rpc :ListNodes, Google.Cloud.Tpu.V1.ListNodesRequest, Google.Cloud.Tpu.V1.ListNodesResponse

  rpc :GetNode, Google.Cloud.Tpu.V1.GetNodeRequest, Google.Cloud.Tpu.V1.Node

  rpc :CreateNode, Google.Cloud.Tpu.V1.CreateNodeRequest, Google.Longrunning.Operation

  rpc :DeleteNode, Google.Cloud.Tpu.V1.DeleteNodeRequest, Google.Longrunning.Operation

  rpc :ReimageNode, Google.Cloud.Tpu.V1.ReimageNodeRequest, Google.Longrunning.Operation

  rpc :StopNode, Google.Cloud.Tpu.V1.StopNodeRequest, Google.Longrunning.Operation

  rpc :StartNode, Google.Cloud.Tpu.V1.StartNodeRequest, Google.Longrunning.Operation

  rpc :ListTensorFlowVersions,
      Google.Cloud.Tpu.V1.ListTensorFlowVersionsRequest,
      Google.Cloud.Tpu.V1.ListTensorFlowVersionsResponse

  rpc :GetTensorFlowVersion,
      Google.Cloud.Tpu.V1.GetTensorFlowVersionRequest,
      Google.Cloud.Tpu.V1.TensorFlowVersion

  rpc :ListAcceleratorTypes,
      Google.Cloud.Tpu.V1.ListAcceleratorTypesRequest,
      Google.Cloud.Tpu.V1.ListAcceleratorTypesResponse

  rpc :GetAcceleratorType,
      Google.Cloud.Tpu.V1.GetAcceleratorTypeRequest,
      Google.Cloud.Tpu.V1.AcceleratorType
end

defmodule Google.Cloud.Tpu.V1.Tpu.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Tpu.V1.Tpu.Service
end
