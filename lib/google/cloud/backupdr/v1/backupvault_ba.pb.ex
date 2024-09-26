defmodule Google.Cloud.Backupdr.V1.BackupApplianceBackupProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :generation_id, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "generationId",
    deprecated: false

  field :finalize_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "finalizeTime",
    deprecated: false

  field :recovery_range_start_time, 3,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "recoveryRangeStartTime",
    deprecated: false

  field :recovery_range_end_time, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "recoveryRangeEndTime",
    deprecated: false
end