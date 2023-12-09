defmodule Google.Cloud.Metastore.Logging.V1.ScheduledBackupLogEntry.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Metastore.Logging.V1.ScheduledBackupLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_id, 1, type: :string, json_name: "backupId"
  field :service, 2, type: :string
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :state, 5,
    type: Google.Cloud.Metastore.Logging.V1.ScheduledBackupLogEntry.State,
    enum: true,
    deprecated: false

  field :backup_size_bytes, 6, type: :int64, json_name: "backupSizeBytes"
  field :backup_location, 7, type: :string, json_name: "backupLocation"
  field :message, 8, type: :string
end