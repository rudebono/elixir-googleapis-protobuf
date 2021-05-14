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

defmodule Google.Cloud.Redis.V1beta1.FailoverInstanceRequest.DataProtectionMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATA_PROTECTION_MODE_UNSPECIFIED | :LIMITED_DATA_LOSS | :FORCE_DATA_LOSS

  field :DATA_PROTECTION_MODE_UNSPECIFIED, 0

  field :LIMITED_DATA_LOSS, 1

  field :FORCE_DATA_LOSS, 2
end

defmodule Google.Cloud.Redis.V1beta1.Instance.LabelsEntry do
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

defmodule Google.Cloud.Redis.V1beta1.Instance.RedisConfigsEntry do
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
          connect_mode: Google.Cloud.Redis.V1beta1.Instance.ConnectMode.t()
        }

  defstruct [
    :name,
    :display_name,
    :labels,
    :location_id,
    :alternative_location_id,
    :redis_version,
    :reserved_ip_range,
    :host,
    :port,
    :current_location_id,
    :create_time,
    :state,
    :status_message,
    :redis_configs,
    :tier,
    :memory_size_gb,
    :authorized_network,
    :persistence_iam_identity,
    :connect_mode
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.Instance.LabelsEntry,
    map: true

  field :location_id, 4, type: :string
  field :alternative_location_id, 5, type: :string
  field :redis_version, 7, type: :string
  field :reserved_ip_range, 9, type: :string
  field :host, 10, type: :string
  field :port, 11, type: :int32
  field :current_location_id, 12, type: :string
  field :create_time, 13, type: Google.Protobuf.Timestamp
  field :state, 14, type: Google.Cloud.Redis.V1beta1.Instance.State, enum: true
  field :status_message, 15, type: :string

  field :redis_configs, 16,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.Instance.RedisConfigsEntry,
    map: true

  field :tier, 17, type: Google.Cloud.Redis.V1beta1.Instance.Tier, enum: true
  field :memory_size_gb, 18, type: :int32
  field :authorized_network, 20, type: :string
  field :persistence_iam_identity, 21, type: :string
  field :connect_mode, 22, type: Google.Cloud.Redis.V1beta1.Instance.ConnectMode, enum: true
end

defmodule Google.Cloud.Redis.V1beta1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Cloud.Redis.V1beta1.Instance.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:instances, :next_page_token, :unreachable]

  field :instances, 1, repeated: true, type: Google.Cloud.Redis.V1beta1.Instance
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Cloud.Redis.V1beta1.Instance.t() | nil
        }

  defstruct [:parent, :instance_id, :instance]

  field :parent, 1, type: :string
  field :instance_id, 2, type: :string
  field :instance, 3, type: Google.Cloud.Redis.V1beta1.Instance
end

defmodule Google.Cloud.Redis.V1beta1.UpdateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          instance: Google.Cloud.Redis.V1beta1.Instance.t() | nil
        }

  defstruct [:update_mask, :instance]

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :instance, 2, type: Google.Cloud.Redis.V1beta1.Instance
end

defmodule Google.Cloud.Redis.V1beta1.UpgradeInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          redis_version: String.t()
        }

  defstruct [:name, :redis_version]

  field :name, 1, type: :string
  field :redis_version, 2, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any}
        }

  defstruct [:source]

  oneof :source, 0
  field :gcs_source, 1, type: Google.Cloud.Redis.V1beta1.GcsSource, oneof: 0
end

defmodule Google.Cloud.Redis.V1beta1.ImportInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_config: Google.Cloud.Redis.V1beta1.InputConfig.t() | nil
        }

  defstruct [:name, :input_config]

  field :name, 1, type: :string
  field :input_config, 3, type: Google.Cloud.Redis.V1beta1.InputConfig
end

defmodule Google.Cloud.Redis.V1beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Redis.V1beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any}
        }

  defstruct [:destination]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Redis.V1beta1.GcsDestination, oneof: 0
end

defmodule Google.Cloud.Redis.V1beta1.ExportInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          output_config: Google.Cloud.Redis.V1beta1.OutputConfig.t() | nil
        }

  defstruct [:name, :output_config]

  field :name, 1, type: :string
  field :output_config, 3, type: Google.Cloud.Redis.V1beta1.OutputConfig
end

defmodule Google.Cloud.Redis.V1beta1.FailoverInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          data_protection_mode:
            Google.Cloud.Redis.V1beta1.FailoverInstanceRequest.DataProtectionMode.t()
        }

  defstruct [:name, :data_protection_mode]

  field :name, 1, type: :string

  field :data_protection_mode, 2,
    type: Google.Cloud.Redis.V1beta1.FailoverInstanceRequest.DataProtectionMode,
    enum: true
end

defmodule Google.Cloud.Redis.V1beta1.LocationMetadata.AvailableZonesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Redis.V1beta1.ZoneMetadata.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Redis.V1beta1.ZoneMetadata
end

defmodule Google.Cloud.Redis.V1beta1.LocationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          available_zones: %{String.t() => Google.Cloud.Redis.V1beta1.ZoneMetadata.t() | nil}
        }

  defstruct [:available_zones]

  field :available_zones, 1,
    repeated: true,
    type: Google.Cloud.Redis.V1beta1.LocationMetadata.AvailableZonesEntry,
    map: true
end

defmodule Google.Cloud.Redis.V1beta1.ZoneMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
