defmodule Google.Spanner.Admin.Instance.V1.ReplicaInfo.ReplicaType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :READ_WRITE | :READ_ONLY | :WITNESS

  field :TYPE_UNSPECIFIED, 0
  field :READ_WRITE, 1
  field :READ_ONLY, 2
  field :WITNESS, 3
end

defmodule Google.Spanner.Admin.Instance.V1.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :READY

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
end

defmodule Google.Spanner.Admin.Instance.V1.ReplicaInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          type: Google.Spanner.Admin.Instance.V1.ReplicaInfo.ReplicaType.t(),
          default_leader_location: boolean
        }

  defstruct [:location, :type, :default_leader_location]

  field :location, 1, type: :string
  field :type, 2, type: Google.Spanner.Admin.Instance.V1.ReplicaInfo.ReplicaType, enum: true
  field :default_leader_location, 3, type: :bool, json_name: "defaultLeaderLocation"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          replicas: [Google.Spanner.Admin.Instance.V1.ReplicaInfo.t()],
          leader_options: [String.t()]
        }

  defstruct [:name, :display_name, :replicas, :leader_options]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :replicas, 3, repeated: true, type: Google.Spanner.Admin.Instance.V1.ReplicaInfo
  field :leader_options, 4, repeated: true, type: :string, json_name: "leaderOptions"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.Instance.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: String.t(),
          display_name: String.t(),
          node_count: integer,
          processing_units: integer,
          state: Google.Spanner.Admin.Instance.V1.Instance.State.t(),
          labels: %{String.t() => String.t()},
          endpoint_uris: [String.t()]
        }

  defstruct [
    :name,
    :config,
    :display_name,
    :node_count,
    :processing_units,
    :state,
    :labels,
    :endpoint_uris
  ]

  field :name, 1, type: :string
  field :config, 2, type: :string
  field :display_name, 3, type: :string, json_name: "displayName"
  field :node_count, 5, type: :int32, json_name: "nodeCount"
  field :processing_units, 9, type: :int32, json_name: "processingUnits"
  field :state, 6, type: Google.Spanner.Admin.Instance.V1.Instance.State, enum: true

  field :labels, 7,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.Instance.LabelsEntry,
    map: true

  field :endpoint_uris, 8, repeated: true, type: :string, json_name: "endpointUris"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstanceConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstanceConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_configs: [Google.Spanner.Admin.Instance.V1.InstanceConfig.t()],
          next_page_token: String.t()
        }

  defstruct [:instance_configs, :next_page_token]

  field :instance_configs, 1,
    repeated: true,
    type: Google.Spanner.Admin.Instance.V1.InstanceConfig,
    json_name: "instanceConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.GetInstanceConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          field_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :field_mask]

  field :name, 1, type: :string
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Spanner.Admin.Instance.V1.Instance.t() | nil
        }

  defstruct [:parent, :instance_id, :instance]

  field :parent, 1, type: :string
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :instance, 3, type: Google.Spanner.Admin.Instance.V1.Instance

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Spanner.Admin.Instance.V1.Instance.t()],
          next_page_token: String.t()
        }

  defstruct [:instances, :next_page_token]

  field :instances, 1, repeated: true, type: Google.Spanner.Admin.Instance.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: Google.Spanner.Admin.Instance.V1.Instance.t() | nil,
          field_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:instance, :field_mask]

  field :instance, 1, type: Google.Spanner.Admin.Instance.V1.Instance
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.CreateInstanceMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: Google.Spanner.Admin.Instance.V1.Instance.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          cancel_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:instance, :start_time, :cancel_time, :end_time]

  field :instance, 1, type: Google.Spanner.Admin.Instance.V1.Instance
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.UpdateInstanceMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: Google.Spanner.Admin.Instance.V1.Instance.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          cancel_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:instance, :start_time, :cancel_time, :end_time]

  field :instance, 1, type: Google.Spanner.Admin.Instance.V1.Instance
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :cancel_time, 3, type: Google.Protobuf.Timestamp, json_name: "cancelTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Spanner.Admin.Instance.V1.InstanceAdmin.Service do
  @moduledoc false
  use GRPC.Service, name: "google.spanner.admin.instance.v1.InstanceAdmin"

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
