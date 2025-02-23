defmodule Google.Cloud.Tpu.V1.Node.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
  field :UNKNOWN, 16
end

defmodule Google.Cloud.Tpu.V1.Node.Health do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HEALTH_UNSPECIFIED, 0
  field :HEALTHY, 1
  field :DEPRECATED_UNHEALTHY, 2
  field :TIMEOUT, 3
  field :UNHEALTHY_TENSORFLOW, 4
  field :UNHEALTHY_MAINTENANCE, 5
end

defmodule Google.Cloud.Tpu.V1.Node.ApiVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :API_VERSION_UNSPECIFIED, 0
  field :V1_ALPHA1, 1
  field :V1, 2
  field :V2_ALPHA1, 3
end

defmodule Google.Cloud.Tpu.V1.Symptom.SymptomType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :preemptible, 1, type: :bool
  field :reserved, 2, type: :bool
end

defmodule Google.Cloud.Tpu.V1.NetworkEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ip_address, 1, type: :string, json_name: "ipAddress"
  field :port, 2, type: :int32
end

defmodule Google.Cloud.Tpu.V1.Node.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Tpu.V1.Node do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Tpu.V1.ListNodesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :nodes, 1, repeated: true, type: Google.Cloud.Tpu.V1.Node
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Tpu.V1.GetNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tpu.V1.CreateNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :node_id, 2, type: :string, json_name: "nodeId"
  field :node, 3, type: Google.Cloud.Tpu.V1.Node, deprecated: false
end

defmodule Google.Cloud.Tpu.V1.DeleteNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tpu.V1.ReimageNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :tensorflow_version, 2, type: :string, json_name: "tensorflowVersion"
end

defmodule Google.Cloud.Tpu.V1.StopNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tpu.V1.StartNodeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Tpu.V1.TensorFlowVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :version, 2, type: :string
end

defmodule Google.Cloud.Tpu.V1.GetTensorFlowVersionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tpu.V1.ListTensorFlowVersionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Tpu.V1.ListTensorFlowVersionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorflow_versions, 1,
    repeated: true,
    type: Google.Cloud.Tpu.V1.TensorFlowVersion,
    json_name: "tensorflowVersions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Tpu.V1.AcceleratorType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
end

defmodule Google.Cloud.Tpu.V1.GetAcceleratorTypeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Tpu.V1.ListAcceleratorTypesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 5, type: :string
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Tpu.V1.ListAcceleratorTypesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :accelerator_types, 1,
    repeated: true,
    type: Google.Cloud.Tpu.V1.AcceleratorType,
    json_name: "acceleratorTypes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Tpu.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use GRPC.Service, name: "google.cloud.tpu.v1.Tpu", protoc_gen_elixir_version: "0.14.1"

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
