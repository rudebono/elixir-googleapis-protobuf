defmodule Google.Cloud.Workstations.Logging.V1.WorkstationEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :event_type, 0

  field :vm_assignment_event, 1,
    type: Google.Cloud.Workstations.Logging.V1.VmAssignmentEvent,
    json_name: "vmAssignmentEvent",
    oneof: 0

  field :disk_assignment_event, 2,
    type: Google.Cloud.Workstations.Logging.V1.DiskAssignmentEvent,
    json_name: "diskAssignmentEvent",
    oneof: 0
end

defmodule Google.Cloud.Workstations.Logging.V1.VmAssignmentEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :vm, 1, type: :string
end

defmodule Google.Cloud.Workstations.Logging.V1.DiskAssignmentEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :disk, 1, type: :string
end