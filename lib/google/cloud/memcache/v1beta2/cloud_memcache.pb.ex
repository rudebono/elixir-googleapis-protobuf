defmodule Google.Cloud.Memcache.V1beta2.MemcacheVersion do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MEMCACHE_VERSION_UNSPECIFIED | :MEMCACHE_1_5

  field :MEMCACHE_VERSION_UNSPECIFIED, 0

  field :MEMCACHE_1_5, 1
end

defmodule Google.Cloud.Memcache.V1beta2.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :STATE_UNSPECIFIED | :CREATING | :READY | :DELETING | :PERFORMING_MAINTENANCE

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :READY, 2

  field :DELETING, 4

  field :PERFORMING_MAINTENANCE, 5
end

defmodule Google.Cloud.Memcache.V1beta2.Instance.Node.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :READY | :DELETING | :UPDATING

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :READY, 2

  field :DELETING, 3

  field :UPDATING, 4
end

defmodule Google.Cloud.Memcache.V1beta2.Instance.InstanceMessage.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CODE_UNSPECIFIED | :ZONE_DISTRIBUTION_UNBALANCED

  field :CODE_UNSPECIFIED, 0

  field :ZONE_DISTRIBUTION_UNBALANCED, 1
end

defmodule Google.Cloud.Memcache.V1beta2.Instance.NodeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu_count: integer,
          memory_size_mb: integer
        }

  defstruct [:cpu_count, :memory_size_mb]

  field :cpu_count, 1, type: :int32
  field :memory_size_mb, 2, type: :int32
end

defmodule Google.Cloud.Memcache.V1beta2.Instance.Node do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_id: String.t(),
          zone: String.t(),
          state: Google.Cloud.Memcache.V1beta2.Instance.Node.State.t(),
          host: String.t(),
          port: integer,
          parameters: Google.Cloud.Memcache.V1beta2.MemcacheParameters.t() | nil,
          update_available: boolean
        }

  defstruct [:node_id, :zone, :state, :host, :port, :parameters, :update_available]

  field :node_id, 1, type: :string
  field :zone, 2, type: :string
  field :state, 3, type: Google.Cloud.Memcache.V1beta2.Instance.Node.State, enum: true
  field :host, 4, type: :string
  field :port, 5, type: :int32
  field :parameters, 6, type: Google.Cloud.Memcache.V1beta2.MemcacheParameters
  field :update_available, 7, type: :bool
end

defmodule Google.Cloud.Memcache.V1beta2.Instance.InstanceMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Cloud.Memcache.V1beta2.Instance.InstanceMessage.Code.t(),
          message: String.t()
        }

  defstruct [:code, :message]

  field :code, 1, type: Google.Cloud.Memcache.V1beta2.Instance.InstanceMessage.Code, enum: true
  field :message, 2, type: :string
end

defmodule Google.Cloud.Memcache.V1beta2.Instance.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Memcache.V1beta2.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          labels: %{String.t() => String.t()},
          authorized_network: String.t(),
          zones: [String.t()],
          node_count: integer,
          node_config: Google.Cloud.Memcache.V1beta2.Instance.NodeConfig.t() | nil,
          memcache_version: Google.Cloud.Memcache.V1beta2.MemcacheVersion.t(),
          parameters: Google.Cloud.Memcache.V1beta2.MemcacheParameters.t() | nil,
          memcache_nodes: [Google.Cloud.Memcache.V1beta2.Instance.Node.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Memcache.V1beta2.Instance.State.t(),
          memcache_full_version: String.t(),
          instance_messages: [Google.Cloud.Memcache.V1beta2.Instance.InstanceMessage.t()],
          discovery_endpoint: String.t(),
          update_available: boolean
        }

  defstruct [
    :name,
    :display_name,
    :labels,
    :authorized_network,
    :zones,
    :node_count,
    :node_config,
    :memcache_version,
    :parameters,
    :memcache_nodes,
    :create_time,
    :update_time,
    :state,
    :memcache_full_version,
    :instance_messages,
    :discovery_endpoint,
    :update_available
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Memcache.V1beta2.Instance.LabelsEntry,
    map: true

  field :authorized_network, 4, type: :string
  field :zones, 5, repeated: true, type: :string
  field :node_count, 6, type: :int32
  field :node_config, 7, type: Google.Cloud.Memcache.V1beta2.Instance.NodeConfig
  field :memcache_version, 9, type: Google.Cloud.Memcache.V1beta2.MemcacheVersion, enum: true
  field :parameters, 11, type: Google.Cloud.Memcache.V1beta2.MemcacheParameters
  field :memcache_nodes, 12, repeated: true, type: Google.Cloud.Memcache.V1beta2.Instance.Node
  field :create_time, 13, type: Google.Protobuf.Timestamp
  field :update_time, 14, type: Google.Protobuf.Timestamp
  field :state, 15, type: Google.Cloud.Memcache.V1beta2.Instance.State, enum: true
  field :memcache_full_version, 18, type: :string

  field :instance_messages, 19,
    repeated: true,
    type: Google.Cloud.Memcache.V1beta2.Instance.InstanceMessage

  field :discovery_endpoint, 20, type: :string
  field :update_available, 21, type: :bool
end

defmodule Google.Cloud.Memcache.V1beta2.ListInstancesRequest do
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

defmodule Google.Cloud.Memcache.V1beta2.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [Google.Cloud.Memcache.V1beta2.Instance.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:resources, :next_page_token, :unreachable]

  field :resources, 1, repeated: true, type: Google.Cloud.Memcache.V1beta2.Instance
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Memcache.V1beta2.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Memcache.V1beta2.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          resource: Google.Cloud.Memcache.V1beta2.Instance.t() | nil
        }

  defstruct [:parent, :instance_id, :resource]

  field :parent, 1, type: :string
  field :instance_id, 2, type: :string
  field :resource, 3, type: Google.Cloud.Memcache.V1beta2.Instance
end

defmodule Google.Cloud.Memcache.V1beta2.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          resource: Google.Cloud.Memcache.V1beta2.Instance.t() | nil
        }

  defstruct [:update_mask, :resource]

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :resource, 2, type: Google.Cloud.Memcache.V1beta2.Instance
end

defmodule Google.Cloud.Memcache.V1beta2.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Memcache.V1beta2.ApplyParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          node_ids: [String.t()],
          apply_all: boolean
        }

  defstruct [:name, :node_ids, :apply_all]

  field :name, 1, type: :string
  field :node_ids, 2, repeated: true, type: :string
  field :apply_all, 3, type: :bool
end

defmodule Google.Cloud.Memcache.V1beta2.UpdateParametersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          parameters: Google.Cloud.Memcache.V1beta2.MemcacheParameters.t() | nil
        }

  defstruct [:name, :update_mask, :parameters]

  field :name, 1, type: :string
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :parameters, 3, type: Google.Cloud.Memcache.V1beta2.MemcacheParameters
end

defmodule Google.Cloud.Memcache.V1beta2.ApplySoftwareUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          node_ids: [String.t()],
          apply_all: boolean
        }

  defstruct [:instance, :node_ids, :apply_all]

  field :instance, 1, type: :string
  field :node_ids, 2, repeated: true, type: :string
  field :apply_all, 3, type: :bool
end

defmodule Google.Cloud.Memcache.V1beta2.MemcacheParameters.ParamsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Memcache.V1beta2.MemcacheParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          params: %{String.t() => String.t()}
        }

  defstruct [:id, :params]

  field :id, 1, type: :string

  field :params, 3,
    repeated: true,
    type: Google.Cloud.Memcache.V1beta2.MemcacheParameters.ParamsEntry,
    map: true
end

defmodule Google.Cloud.Memcache.V1beta2.OperationMetadata do
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

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_detail,
    :cancel_requested,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_detail, 5, type: :string
  field :cancel_requested, 6, type: :bool
  field :api_version, 7, type: :string
end

defmodule Google.Cloud.Memcache.V1beta2.LocationMetadata.AvailableZonesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Memcache.V1beta2.ZoneMetadata.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Memcache.V1beta2.ZoneMetadata
end

defmodule Google.Cloud.Memcache.V1beta2.LocationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          available_zones: %{String.t() => Google.Cloud.Memcache.V1beta2.ZoneMetadata.t() | nil}
        }

  defstruct [:available_zones]

  field :available_zones, 1,
    repeated: true,
    type: Google.Cloud.Memcache.V1beta2.LocationMetadata.AvailableZonesEntry,
    map: true
end

defmodule Google.Cloud.Memcache.V1beta2.ZoneMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Memcache.V1beta2.CloudMemcache.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.memcache.v1beta2.CloudMemcache"

  rpc :ListInstances,
      Google.Cloud.Memcache.V1beta2.ListInstancesRequest,
      Google.Cloud.Memcache.V1beta2.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Memcache.V1beta2.GetInstanceRequest,
      Google.Cloud.Memcache.V1beta2.Instance

  rpc :CreateInstance,
      Google.Cloud.Memcache.V1beta2.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Memcache.V1beta2.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateParameters,
      Google.Cloud.Memcache.V1beta2.UpdateParametersRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Memcache.V1beta2.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :ApplyParameters,
      Google.Cloud.Memcache.V1beta2.ApplyParametersRequest,
      Google.Longrunning.Operation

  rpc :ApplySoftwareUpdate,
      Google.Cloud.Memcache.V1beta2.ApplySoftwareUpdateRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Memcache.V1beta2.CloudMemcache.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Memcache.V1beta2.CloudMemcache.Service
end
