defmodule Google.Compute.Logging.Gdnsusage.V1.GdnsVmUsagePlatformLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source_vm, 1,
    proto3_optional: true,
    type: Google.Compute.Logging.Gdnsusage.V1.VmInfo,
    json_name: "sourceVm"

  field :destination_vm, 2,
    proto3_optional: true,
    type: Google.Compute.Logging.Gdnsusage.V1.VmInfo,
    json_name: "destinationVm"

  field :debug_message, 3, proto3_optional: true, type: :string, json_name: "debugMessage"
  field :query_count, 5, proto3_optional: true, type: :int32, json_name: "queryCount"
end

defmodule Google.Compute.Logging.Gdnsusage.V1.VmInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, proto3_optional: true, type: :string, json_name: "projectId"
  field :vm, 2, proto3_optional: true, type: :string
  field :zone, 3, proto3_optional: true, type: :string
end