defmodule Google.Dataflow.V1beta3.TopologyConfig.UserStageToComputationNameMapEntry do
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

defmodule Google.Dataflow.V1beta3.TopologyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          computations: [Google.Dataflow.V1beta3.ComputationTopology.t()],
          data_disk_assignments: [Google.Dataflow.V1beta3.DataDiskAssignment.t()],
          user_stage_to_computation_name_map: %{String.t() => String.t()},
          forwarding_key_bits: integer,
          persistent_state_version: integer
        }

  defstruct [
    :computations,
    :data_disk_assignments,
    :user_stage_to_computation_name_map,
    :forwarding_key_bits,
    :persistent_state_version
  ]

  field :computations, 1, repeated: true, type: Google.Dataflow.V1beta3.ComputationTopology

  field :data_disk_assignments, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.DataDiskAssignment,
    json_name: "dataDiskAssignments"

  field :user_stage_to_computation_name_map, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.TopologyConfig.UserStageToComputationNameMapEntry,
    json_name: "userStageToComputationNameMap",
    map: true

  field :forwarding_key_bits, 4, type: :int32, json_name: "forwardingKeyBits"
  field :persistent_state_version, 5, type: :int32, json_name: "persistentStateVersion"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.PubsubLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          subscription: String.t(),
          timestamp_label: String.t(),
          id_label: String.t(),
          drop_late_data: boolean,
          tracking_subscription: String.t(),
          with_attributes: boolean
        }

  defstruct [
    :topic,
    :subscription,
    :timestamp_label,
    :id_label,
    :drop_late_data,
    :tracking_subscription,
    :with_attributes
  ]

  field :topic, 1, type: :string
  field :subscription, 2, type: :string
  field :timestamp_label, 3, type: :string, json_name: "timestampLabel"
  field :id_label, 4, type: :string, json_name: "idLabel"
  field :drop_late_data, 5, type: :bool, json_name: "dropLateData"
  field :tracking_subscription, 6, type: :string, json_name: "trackingSubscription"
  field :with_attributes, 7, type: :bool, json_name: "withAttributes"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StreamingStageLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stream_id: String.t()
        }

  defstruct [:stream_id]

  field :stream_id, 1, type: :string, json_name: "streamId"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StreamingSideInputLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tag: String.t(),
          state_family: String.t()
        }

  defstruct [:tag, :state_family]

  field :tag, 1, type: :string
  field :state_family, 2, type: :string, json_name: "stateFamily"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.CustomSourceLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stateful: boolean
        }

  defstruct [:stateful]

  field :stateful, 1, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StreamLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location:
            {:streaming_stage_location, Google.Dataflow.V1beta3.StreamingStageLocation.t() | nil}
            | {:pubsub_location, Google.Dataflow.V1beta3.PubsubLocation.t() | nil}
            | {:side_input_location, Google.Dataflow.V1beta3.StreamingSideInputLocation.t() | nil}
            | {:custom_source_location, Google.Dataflow.V1beta3.CustomSourceLocation.t() | nil}
        }

  defstruct [:location]

  oneof :location, 0

  field :streaming_stage_location, 1,
    type: Google.Dataflow.V1beta3.StreamingStageLocation,
    json_name: "streamingStageLocation",
    oneof: 0

  field :pubsub_location, 2,
    type: Google.Dataflow.V1beta3.PubsubLocation,
    json_name: "pubsubLocation",
    oneof: 0

  field :side_input_location, 3,
    type: Google.Dataflow.V1beta3.StreamingSideInputLocation,
    json_name: "sideInputLocation",
    oneof: 0

  field :custom_source_location, 4,
    type: Google.Dataflow.V1beta3.CustomSourceLocation,
    json_name: "customSourceLocation",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StateFamilyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state_family: String.t(),
          is_read: boolean
        }

  defstruct [:state_family, :is_read]

  field :state_family, 1, type: :string, json_name: "stateFamily"
  field :is_read, 2, type: :bool, json_name: "isRead"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.ComputationTopology do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          system_stage_name: String.t(),
          computation_id: String.t(),
          key_ranges: [Google.Dataflow.V1beta3.KeyRangeLocation.t()],
          inputs: [Google.Dataflow.V1beta3.StreamLocation.t()],
          outputs: [Google.Dataflow.V1beta3.StreamLocation.t()],
          state_families: [Google.Dataflow.V1beta3.StateFamilyConfig.t()]
        }

  defstruct [:system_stage_name, :computation_id, :key_ranges, :inputs, :outputs, :state_families]

  field :system_stage_name, 1, type: :string, json_name: "systemStageName"
  field :computation_id, 5, type: :string, json_name: "computationId"

  field :key_ranges, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.KeyRangeLocation,
    json_name: "keyRanges"

  field :inputs, 3, repeated: true, type: Google.Dataflow.V1beta3.StreamLocation
  field :outputs, 4, repeated: true, type: Google.Dataflow.V1beta3.StreamLocation

  field :state_families, 7,
    repeated: true,
    type: Google.Dataflow.V1beta3.StateFamilyConfig,
    json_name: "stateFamilies"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.KeyRangeLocation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: String.t(),
          end: String.t(),
          delivery_endpoint: String.t(),
          data_disk: String.t(),
          deprecated_persistent_directory: String.t()
        }

  defstruct [:start, :end, :delivery_endpoint, :data_disk, :deprecated_persistent_directory]

  field :start, 1, type: :string
  field :end, 2, type: :string
  field :delivery_endpoint, 3, type: :string, json_name: "deliveryEndpoint"
  field :data_disk, 5, type: :string, json_name: "dataDisk"

  field :deprecated_persistent_directory, 4,
    type: :string,
    deprecated: true,
    json_name: "deprecatedPersistentDirectory"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.MountedDataDisk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_disk: String.t()
        }

  defstruct [:data_disk]

  field :data_disk, 1, type: :string, json_name: "dataDisk"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.DataDiskAssignment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_instance: String.t(),
          data_disks: [String.t()]
        }

  defstruct [:vm_instance, :data_disks]

  field :vm_instance, 1, type: :string, json_name: "vmInstance"
  field :data_disks, 2, repeated: true, type: :string, json_name: "dataDisks"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.KeyRangeDataDiskAssignment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start: String.t(),
          end: String.t(),
          data_disk: String.t()
        }

  defstruct [:start, :end, :data_disk]

  field :start, 1, type: :string
  field :end, 2, type: :string
  field :data_disk, 3, type: :string, json_name: "dataDisk"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StreamingComputationRanges do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          computation_id: String.t(),
          range_assignments: [Google.Dataflow.V1beta3.KeyRangeDataDiskAssignment.t()]
        }

  defstruct [:computation_id, :range_assignments]

  field :computation_id, 1, type: :string, json_name: "computationId"

  field :range_assignments, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.KeyRangeDataDiskAssignment,
    json_name: "rangeAssignments"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StreamingApplianceSnapshotConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot_id: String.t(),
          import_state_endpoint: String.t()
        }

  defstruct [:snapshot_id, :import_state_endpoint]

  field :snapshot_id, 1, type: :string, json_name: "snapshotId"
  field :import_state_endpoint, 2, type: :string, json_name: "importStateEndpoint"

  def transform_module(), do: nil
end
