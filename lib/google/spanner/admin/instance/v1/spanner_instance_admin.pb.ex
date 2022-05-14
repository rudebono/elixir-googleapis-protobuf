defmodule Google.Spanner.Admin.Instance.V1.ReplicaInfo.ReplicaType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :READ_WRITE, 1
  field :READ_ONLY, 2
  field :WITNESS, 3
end
defmodule Google.Spanner.Admin.Instance.V1.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
end
defmodule Google.Spanner.Admin.Instance.V1.ReplicaInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :location, 1, type: :string
  field :type, 2, type: Google.Spanner.Admin.Instance.V1.ReplicaInfo.ReplicaType, enum: true
  field :default_leader_location, 3, type: :bool, json_name: "defaultLeaderLocation"
end
defmodule Google.Spanner.Admin.Instance.V1.InstanceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :replicas, 3, repeated: true, type: Google.Spanner.Admin.Instance.V1.ReplicaInfo
  field :leader_options, 4, repeated: true, type: :string, json_name: "leaderOptions"
end
defmodule Google.Spanner.Admin.Instance.V1.Instance.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Spanner.Admin.Instance.V1.Instance do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :config, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :node_count, 5, type: :int32, json_name: "nodeCount"
  field :processing_units, 9, type: :int32, json_name: "processingUnits"

  field :state, 6,
    type: Google.Spanner.Admin.Instance.V1.Instance.State,
    enum: true,
    deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.Instance.LabelsEntry,
    map: true

  field :endpoint_uris, 8, repeated: true, type: :string, json_name: "endpointUris"
end
defmodule Google.Spanner.Admin.Instance.V1.ListInstanceConfigsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Spanner.Admin.Instance.V1.ListInstanceConfigsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :instance_configs, 1,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig,
    json_name: "instanceConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Spanner.Admin.Instance.V1.GetInstanceConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.Admin.Instance.V1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
end
defmodule Google.Spanner.Admin.Instance.V1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Spanner.Admin.Instance.V1.Instance, deprecated: false
end
defmodule Google.Spanner.Admin.Instance.V1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Spanner.Admin.Instance.V1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Spanner.Admin.Instance.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Spanner.Admin.Instance.V1.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :instance, 1, type: Google.Spanner.Admin.Instance.V1.Instance, deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask", deprecated: false
end
defmodule Google.Spanner.Admin.Instance.V1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Spanner.Admin.Instance.V1.CreateInstanceMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :instance, 1, type: Google.Spanner.Admin.Instance.V1.Instance
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Spanner.Admin.Instance.V1.UpdateInstanceMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :instance, 1, type: Google.Spanner.Admin.Instance.V1.Instance
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Spanner.Admin.Instance.V1.InstanceAdmin.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.spanner.admin.instance.v1.InstanceAdmin",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListInstanceConfigs,
      Google.Spanner.Admin.Instance.V1.ListInstanceConfigsRequest,
      Google.Spanner.Admin.Instance.V1.ListInstanceConfigsResponse

  rpc :GetInstanceConfig,
      Google.Spanner.Admin.Instance.V1.GetInstanceConfigRequest,
      Google.Spanner.Admin.Instance.V1.InstanceConfig

  rpc :ListInstances,
      Google.Spanner.Admin.Instance.V1.ListInstancesRequest,
      Google.Spanner.Admin.Instance.V1.ListInstancesResponse

  rpc :GetInstance,
      Google.Spanner.Admin.Instance.V1.GetInstanceRequest,
      Google.Spanner.Admin.Instance.V1.Instance

  rpc :CreateInstance,
      Google.Spanner.Admin.Instance.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Spanner.Admin.Instance.V1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Spanner.Admin.Instance.V1.DeleteInstanceRequest,
      Google.Protobuf.Empty

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceAdmin.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Spanner.Admin.Instance.V1.InstanceAdmin.Service
end
