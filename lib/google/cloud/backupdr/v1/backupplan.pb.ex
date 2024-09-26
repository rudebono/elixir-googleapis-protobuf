defmodule Google.Cloud.Backupdr.V1.BackupPlan.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :INACTIVE, 4
end

defmodule Google.Cloud.Backupdr.V1.StandardSchedule.RecurrenceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :RECURRENCE_TYPE_UNSPECIFIED, 0
  field :HOURLY, 1
  field :DAILY, 2
  field :WEEKLY, 3
  field :MONTHLY, 4
  field :YEARLY, 5
end

defmodule Google.Cloud.Backupdr.V1.WeekDayOfMonth.WeekOfMonth do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :WEEK_OF_MONTH_UNSPECIFIED, 0
  field :FIRST, 1
  field :SECOND, 2
  field :THIRD, 3
  field :FOURTH, 4
  field :LAST, 5
end

defmodule Google.Cloud.Backupdr.V1.BackupPlan.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.BackupPlan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupPlan.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :backup_rules, 6,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupRule,
    json_name: "backupRules",
    deprecated: false

  field :state, 7, type: Google.Cloud.Backupdr.V1.BackupPlan.State, enum: true, deprecated: false
  field :resource_type, 8, type: :string, json_name: "resourceType", deprecated: false
  field :etag, 9, type: :string, deprecated: false
  field :backup_vault, 10, type: :string, json_name: "backupVault", deprecated: false

  field :backup_vault_service_account, 11,
    type: :string,
    json_name: "backupVaultServiceAccount",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.BackupRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :backup_schedule_oneof, 0

  field :rule_id, 1, type: :string, json_name: "ruleId", deprecated: false

  field :backup_retention_days, 4,
    type: :int32,
    json_name: "backupRetentionDays",
    deprecated: false

  field :standard_schedule, 5,
    type: Google.Cloud.Backupdr.V1.StandardSchedule,
    json_name: "standardSchedule",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.StandardSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :recurrence_type, 1,
    type: Google.Cloud.Backupdr.V1.StandardSchedule.RecurrenceType,
    json_name: "recurrenceType",
    enum: true,
    deprecated: false

  field :hourly_frequency, 2, type: :int32, json_name: "hourlyFrequency", deprecated: false

  field :days_of_week, 3,
    repeated: true,
    type: Google.Type.DayOfWeek,
    json_name: "daysOfWeek",
    enum: true,
    deprecated: false

  field :days_of_month, 4,
    repeated: true,
    type: :int32,
    json_name: "daysOfMonth",
    deprecated: false

  field :week_day_of_month, 5,
    type: Google.Cloud.Backupdr.V1.WeekDayOfMonth,
    json_name: "weekDayOfMonth",
    deprecated: false

  field :months, 6, repeated: true, type: Google.Type.Month, enum: true, deprecated: false

  field :backup_window, 7,
    type: Google.Cloud.Backupdr.V1.BackupWindow,
    json_name: "backupWindow",
    deprecated: false

  field :time_zone, 8, type: :string, json_name: "timeZone", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.BackupWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :start_hour_of_day, 1, type: :int32, json_name: "startHourOfDay", deprecated: false
  field :end_hour_of_day, 2, type: :int32, json_name: "endHourOfDay", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.WeekDayOfMonth do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :week_of_month, 1,
    type: Google.Cloud.Backupdr.V1.WeekDayOfMonth.WeekOfMonth,
    json_name: "weekOfMonth",
    enum: true,
    deprecated: false

  field :day_of_week, 2,
    type: Google.Type.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.CreateBackupPlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_plan_id, 2, type: :string, json_name: "backupPlanId", deprecated: false

  field :backup_plan, 3,
    type: Google.Cloud.Backupdr.V1.BackupPlan,
    json_name: "backupPlan",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListBackupPlansRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListBackupPlansResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backup_plans, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupPlan,
    json_name: "backupPlans"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Backupdr.V1.GetBackupPlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DeleteBackupPlanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end