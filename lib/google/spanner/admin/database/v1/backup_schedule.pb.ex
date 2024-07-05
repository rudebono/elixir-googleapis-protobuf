defmodule Google.Spanner.Admin.Database.V1.BackupScheduleSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :schedule_spec, 0

  field :cron_spec, 1,
    type: Google.Spanner.Admin.Database.V1.CrontabSpec,
    json_name: "cronSpec",
    oneof: 0
end

defmodule Google.Spanner.Admin.Database.V1.BackupSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :backup_type_spec, 0

  field :name, 1, type: :string, deprecated: false
  field :spec, 6, type: Google.Spanner.Admin.Database.V1.BackupScheduleSpec, deprecated: false

  field :retention_duration, 3,
    type: Google.Protobuf.Duration,
    json_name: "retentionDuration",
    deprecated: false

  field :encryption_config, 4,
    type: Google.Spanner.Admin.Database.V1.CreateBackupEncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :full_backup_spec, 7,
    type: Google.Spanner.Admin.Database.V1.FullBackupSpec,
    json_name: "fullBackupSpec",
    oneof: 0

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.CrontabSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string, deprecated: false
  field :time_zone, 2, type: :string, json_name: "timeZone", deprecated: false

  field :creation_window, 3,
    type: Google.Protobuf.Duration,
    json_name: "creationWindow",
    deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.CreateBackupScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_schedule_id, 2, type: :string, json_name: "backupScheduleId", deprecated: false

  field :backup_schedule, 3,
    type: Google.Spanner.Admin.Database.V1.BackupSchedule,
    json_name: "backupSchedule",
    deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.GetBackupScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.DeleteBackupScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.ListBackupSchedulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Spanner.Admin.Database.V1.ListBackupSchedulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_schedules, 1,
    repeated: true,
    type: Google.Spanner.Admin.Database.V1.BackupSchedule,
    json_name: "backupSchedules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Spanner.Admin.Database.V1.UpdateBackupScheduleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :backup_schedule, 1,
    type: Google.Spanner.Admin.Database.V1.BackupSchedule,
    json_name: "backupSchedule",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end