defmodule Google.Cloud.Redis.V1beta1.Instance.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :READY
          | :UPDATING
          | :DELETING
          | :REPAIRING
          | :MAINTENANCE
          | :IMPORTING
          | :FAILING_OVER

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :READY, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :REPAIRING, 5
  field :MAINTENANCE, 6
  field :IMPORTING, 8
  field :FAILING_OVER, 10
end
defmodule Google.Cloud.Redis.V1beta1.Instance.Tier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :TIER_UNSPECIFIED | :BASIC | :STANDARD_HA

  field :TIER_UNSPECIFIED, 0
  field :BASIC, 1
  field :STANDARD_HA, 3
end
defmodule Google.Cloud.Redis.V1beta1.Instance.ConnectMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :CONNECT_MODE_UNSPECIFIED | :DIRECT_PEERING | :PRIVATE_SERVICE_ACCESS

  field :CONNECT_MODE_UNSPECIFIED, 0
  field :DIRECT_PEERING, 1
  field :PRIVATE_SERVICE_ACCESS, 2
end
defmodule Google.Cloud.Redis.V1beta1.Instance.ReadReplicasMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :READ_REPLICAS_MODE_UNSPECIFIED
          | :READ_REPLICAS_DISABLED
          | :READ_REPLICAS_ENABLED

  field :READ_REPLICAS_MODE_UNSPECIFIED, 0
  field :READ_REPLICAS_DISABLED, 1
  field :READ_REPLICAS_ENABLED, 2
end
defmodule Google.Cloud.Redis.V1beta1.FailoverInstanceRequest.DataProtectionMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :DATA_PROTECTION_MODE_UNSPECIFIED | :LIMITED_DATA_LOSS | :FORCE_DATA_LOSS

  field :DATA_PROTECTION_MODE_UNSPECIFIED, 0
  field :LIMITED_DATA_LOSS, 1
  field :FORCE_DATA_LOSS, 2
end
defmodule Google.Cloud.Redis.V1beta1.NodeInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          zone: String.t()
        }

  defstruct id: "",
            zone: ""

  field :id, 1, type: :string, deprecated: false
  field :zone, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.Instance.LabelsEntry do
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
defmodule Google.Cloud.Redis.V1beta1.Instance.RedisConfigsEntry do
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
defmodule Google.Cloud.Redis.V1beta1.Instance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          labels: %{String.t() => String.t()},
          location_id: String.t(),
          alternative_location_id: String.t(),
          redis_version: String.t(),
          reserved_ip_range: String.t(),
          host: String.t(),
          port: integer,
          current_location_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Redis.V1beta1.Instance.State.t(),
          status_message: String.t(),
          redis_configs: %{String.t() => String.t()},
          tier: Google.Cloud.Redis.V1beta1.Instance.Tier.t(),
          memory_size_gb: integer,
          authorized_network: String.t(),
          persistence_iam_identity: String.t(),
          connect_mode: Google.Cloud.Redis.V1beta1.Instance.ConnectMode.t(),
          replica_count: integer,
          nodes: [Google.Cloud.Redis.V1beta1.NodeInfo.t()],
          read_endpoint: String.t(),
          read_endpoint_port: integer,
          read_replicas_mode: Google.Cloud.Redis.V1beta1.Instance.ReadReplicasMode.t()
        }

  defstruct name: "",
            display_name: "",
            labels: %{},
            location_id: "",
            alternative_location_id: "",
            redis_version: "",
            reserved_ip_range: "",
            host: "",
            port: 0,
            current_location_id: "",
            create_time: nil,
            state: :STATE_UNSPECIFIED,
            status_message: "",
            redis_configs: %{},
            tier: :TIER_UNSPECIFIED,
            memory_size_gb: 0,
            authorized_network: "",
            persistence_iam_identity: "",
            connect_mode: :CONNECT_MODE_UNSPECIFIED,
            replica_count: 0,
            nodes: [],
            read_endpoint: "",
            read_endpoint_port: 0,
            read_replicas_mode: :READ_REPLICAS_MODE_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.Instance.LabelsEntry,
    map: true

  field :location_id, 4, type: :string, json_name: "locationId", deprecated: false

  field :alternative_location_id, 5,
    type: :string,
    json_name: "alternativeLocationId",
    deprecated: false

  field :redis_version, 7, type: :string, json_name: "redisVersion", deprecated: false
  field :reserved_ip_range, 9, type: :string, json_name: "reservedIpRange", deprecated: false
  field :host, 10, type: :string, deprecated: false
  field :port, 11, type: :int32, deprecated: false
  field :current_location_id, 12, type: :string, json_name: "currentLocationId", deprecated: false

  field :create_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :state, 14, type: Google.Cloud.Redis.V1beta1.Instance.State, enum: true, deprecated: false
  field :status_message, 15, type: :string, json_name: "statusMessage", deprecated: false

  field :redis_configs, 16,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.Instance.RedisConfigsEntry,
    json_name: "redisConfigs",
    map: true,
    deprecated: false

  field :tier, 17, type: Google.Cloud.Redis.V1beta1.Instance.Tier, enum: true, deprecated: false
  field :memory_size_gb, 18, type: :int32, json_name: "memorySizeGb", deprecated: false
  field :authorized_network, 20, type: :string, json_name: "authorizedNetwork", deprecated: false

  field :persistence_iam_identity, 21,
    type: :string,
    json_name: "persistenceIamIdentity",
    deprecated: false

  field :connect_mode, 22,
    type: Google.Cloud.Redis.V1beta1.Instance.ConnectMode,
    json_name: "connectMode",
    enum: true,
    deprecated: false

  field :replica_count, 31, type: :int32, json_name: "replicaCount", deprecated: false
  field :nodes, 32, repeated: true, type: Google.Cloud.Redis.V1beta1.NodeInfo, deprecated: false
  field :read_endpoint, 33, type: :string, json_name: "readEndpoint", deprecated: false
  field :read_endpoint_port, 34, type: :int32, json_name: "readEndpointPort", deprecated: false

  field :read_replicas_mode, 35,
    type: Google.Cloud.Redis.V1beta1.Instance.ReadReplicasMode,
    json_name: "readReplicasMode",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.ListInstancesRequest do
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
defmodule Google.Cloud.Redis.V1beta1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Cloud.Redis.V1beta1.Instance.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct instances: [],
            next_page_token: "",
            unreachable: []

  field :instances, 1, repeated: true, type: Google.Cloud.Redis.V1beta1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Redis.V1beta1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Cloud.Redis.V1beta1.Instance.t() | nil
        }

  defstruct parent: "",
            instance_id: "",
            instance: nil

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Redis.V1beta1.Instance, deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          instance: Google.Cloud.Redis.V1beta1.Instance.t() | nil
        }

  defstruct update_mask: nil,
            instance: nil

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :instance, 2, type: Google.Cloud.Redis.V1beta1.Instance, deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.UpgradeInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          redis_version: String.t()
        }

  defstruct name: "",
            redis_version: ""

  field :name, 1, type: :string, deprecated: false
  field :redis_version, 2, type: :string, json_name: "redisVersion", deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Redis.V1beta1.GcsSource.t() | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Redis.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0
end
defmodule Google.Cloud.Redis.V1beta1.ImportInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_config: Google.Cloud.Redis.V1beta1.InputConfig.t() | nil
        }

  defstruct name: "",
            input_config: nil

  field :name, 1, type: :string, deprecated: false

  field :input_config, 3,
    type: Google.Cloud.Redis.V1beta1.InputConfig,
    json_name: "inputConfig",
    deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:gcs_destination, Google.Cloud.Redis.V1beta1.GcsDestination.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Redis.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0
end
defmodule Google.Cloud.Redis.V1beta1.ExportInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          output_config: Google.Cloud.Redis.V1beta1.OutputConfig.t() | nil
        }

  defstruct name: "",
            output_config: nil

  field :name, 1, type: :string, deprecated: false

  field :output_config, 3,
    type: Google.Cloud.Redis.V1beta1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.FailoverInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          data_protection_mode:
            Google.Cloud.Redis.V1beta1.FailoverInstanceRequest.DataProtectionMode.t()
        }

  defstruct name: "",
            data_protection_mode: :DATA_PROTECTION_MODE_UNSPECIFIED

  field :name, 1, type: :string, deprecated: false

  field :data_protection_mode, 2,
    type: Google.Cloud.Redis.V1beta1.FailoverInstanceRequest.DataProtectionMode,
    json_name: "dataProtectionMode",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.LocationMetadata.AvailableZonesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Redis.V1beta1.ZoneMetadata.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Redis.V1beta1.ZoneMetadata
end
defmodule Google.Cloud.Redis.V1beta1.LocationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          available_zones: %{String.t() => Google.Cloud.Redis.V1beta1.ZoneMetadata.t() | nil}
        }

  defstruct available_zones: %{}

  field :available_zones, 1,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.LocationMetadata.AvailableZonesEntry,
    json_name: "availableZones",
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Redis.V1beta1.ZoneMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Redis.V1beta1.CloudRedis.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.redis.v1beta1.CloudRedis"

  rpc :ListInstances,
      Google.Cloud.Redis.V1beta1.ListInstancesRequest,
      Google.Cloud.Redis.V1beta1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Redis.V1beta1.GetInstanceRequest,
      Google.Cloud.Redis.V1beta1.Instance

  rpc :CreateInstance,
      Google.Cloud.Redis.V1beta1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Redis.V1beta1.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpgradeInstance,
      Google.Cloud.Redis.V1beta1.UpgradeInstanceRequest,
      Google.Longrunning.Operation

  rpc :ImportInstance,
      Google.Cloud.Redis.V1beta1.ImportInstanceRequest,
      Google.Longrunning.Operation

  rpc :ExportInstance,
      Google.Cloud.Redis.V1beta1.ExportInstanceRequest,
      Google.Longrunning.Operation

  rpc :FailoverInstance,
      Google.Cloud.Redis.V1beta1.FailoverInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Redis.V1beta1.DeleteInstanceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Redis.V1beta1.CloudRedis.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Redis.V1beta1.CloudRedis.Service
end
