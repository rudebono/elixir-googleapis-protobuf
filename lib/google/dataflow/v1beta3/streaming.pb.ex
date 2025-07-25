defmodule Google.Dataflow.V1beta3.TopologyConfig.UserStageToComputationNameMapEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Dataflow.V1beta3.TopologyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
end

defmodule Google.Dataflow.V1beta3.PubsubLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :topic, 1, type: :string
  field :subscription, 2, type: :string
  field :timestamp_label, 3, type: :string, json_name: "timestampLabel"
  field :id_label, 4, type: :string, json_name: "idLabel"
  field :drop_late_data, 5, type: :bool, json_name: "dropLateData"
  field :tracking_subscription, 6, type: :string, json_name: "trackingSubscription"
  field :with_attributes, 7, type: :bool, json_name: "withAttributes"
  field :dynamic_destinations, 8, type: :bool, json_name: "dynamicDestinations"
end

defmodule Google.Dataflow.V1beta3.StreamingStageLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stream_id, 1, type: :string, json_name: "streamId"
end

defmodule Google.Dataflow.V1beta3.StreamingSideInputLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tag, 1, type: :string
  field :state_family, 2, type: :string, json_name: "stateFamily"
end

defmodule Google.Dataflow.V1beta3.CustomSourceLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stateful, 1, type: :bool
end

defmodule Google.Dataflow.V1beta3.StreamLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
end

defmodule Google.Dataflow.V1beta3.StateFamilyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state_family, 1, type: :string, json_name: "stateFamily"
  field :is_read, 2, type: :bool, json_name: "isRead"
end

defmodule Google.Dataflow.V1beta3.ComputationTopology do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
end

defmodule Google.Dataflow.V1beta3.KeyRangeLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start, 1, type: :string
  field :end, 2, type: :string
  field :delivery_endpoint, 3, type: :string, json_name: "deliveryEndpoint"
  field :data_disk, 5, type: :string, json_name: "dataDisk"

  field :deprecated_persistent_directory, 4,
    type: :string,
    json_name: "deprecatedPersistentDirectory",
    deprecated: true
end

defmodule Google.Dataflow.V1beta3.MountedDataDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_disk, 1, type: :string, json_name: "dataDisk"
end

defmodule Google.Dataflow.V1beta3.DataDiskAssignment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vm_instance, 1, type: :string, json_name: "vmInstance"
  field :data_disks, 2, repeated: true, type: :string, json_name: "dataDisks"
end

defmodule Google.Dataflow.V1beta3.KeyRangeDataDiskAssignment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start, 1, type: :string
  field :end, 2, type: :string
  field :data_disk, 3, type: :string, json_name: "dataDisk"
end

defmodule Google.Dataflow.V1beta3.StreamingComputationRanges do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :computation_id, 1, type: :string, json_name: "computationId"

  field :range_assignments, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.KeyRangeDataDiskAssignment,
    json_name: "rangeAssignments"
end

defmodule Google.Dataflow.V1beta3.StreamingApplianceSnapshotConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :snapshot_id, 1, type: :string, json_name: "snapshotId"
  field :import_state_endpoint, 2, type: :string, json_name: "importStateEndpoint"
end
