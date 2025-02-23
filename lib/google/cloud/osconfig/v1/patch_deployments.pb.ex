defmodule Google.Cloud.Osconfig.V1.PatchDeployment.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :PAUSED, 2
end

defmodule Google.Cloud.Osconfig.V1.RecurringSchedule.Frequency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FREQUENCY_UNSPECIFIED, 0
  field :WEEKLY, 1
  field :MONTHLY, 2
  field :DAILY, 3
end

defmodule Google.Cloud.Osconfig.V1.PatchDeployment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :schedule, 0

  field :name, 1, type: :string
  field :description, 2, type: :string, deprecated: false

  field :instance_filter, 3,
    type: Google.Cloud.Osconfig.V1.PatchInstanceFilter,
    json_name: "instanceFilter",
    deprecated: false

  field :patch_config, 4,
    type: Google.Cloud.Osconfig.V1.PatchConfig,
    json_name: "patchConfig",
    deprecated: false

  field :duration, 5, type: Google.Protobuf.Duration, deprecated: false

  field :one_time_schedule, 6,
    type: Google.Cloud.Osconfig.V1.OneTimeSchedule,
    json_name: "oneTimeSchedule",
    oneof: 0,
    deprecated: false

  field :recurring_schedule, 7,
    type: Google.Cloud.Osconfig.V1.RecurringSchedule,
    json_name: "recurringSchedule",
    oneof: 0,
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :last_execute_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "lastExecuteTime",
    deprecated: false

  field :rollout, 11, type: Google.Cloud.Osconfig.V1.PatchRollout, deprecated: false

  field :state, 12,
    type: Google.Cloud.Osconfig.V1.PatchDeployment.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.OneTimeSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :execute_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "executeTime",
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.RecurringSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :schedule_config, 0

  field :time_zone, 1, type: Google.Type.TimeZone, json_name: "timeZone", deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :time_of_day, 4, type: Google.Type.TimeOfDay, json_name: "timeOfDay", deprecated: false

  field :frequency, 5,
    type: Google.Cloud.Osconfig.V1.RecurringSchedule.Frequency,
    enum: true,
    deprecated: false

  field :weekly, 6, type: Google.Cloud.Osconfig.V1.WeeklySchedule, oneof: 0, deprecated: false
  field :monthly, 7, type: Google.Cloud.Osconfig.V1.MonthlySchedule, oneof: 0, deprecated: false

  field :last_execute_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "lastExecuteTime",
    deprecated: false

  field :next_execute_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "nextExecuteTime",
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.WeeklySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :day_of_week, 1,
    type: Google.Type.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.MonthlySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :day_of_month, 0

  field :week_day_of_month, 1,
    type: Google.Cloud.Osconfig.V1.WeekDayOfMonth,
    json_name: "weekDayOfMonth",
    oneof: 0,
    deprecated: false

  field :month_day, 2, type: :int32, json_name: "monthDay", oneof: 0, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.WeekDayOfMonth do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :week_ordinal, 1, type: :int32, json_name: "weekOrdinal", deprecated: false

  field :day_of_week, 2,
    type: Google.Type.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true,
    deprecated: false

  field :day_offset, 3, type: :int32, json_name: "dayOffset", deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.CreatePatchDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :patch_deployment_id, 2, type: :string, json_name: "patchDeploymentId", deprecated: false

  field :patch_deployment, 3,
    type: Google.Cloud.Osconfig.V1.PatchDeployment,
    json_name: "patchDeployment",
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.GetPatchDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.ListPatchDeploymentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.ListPatchDeploymentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :patch_deployments, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.PatchDeployment,
    json_name: "patchDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Osconfig.V1.DeletePatchDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.UpdatePatchDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :patch_deployment, 1,
    type: Google.Cloud.Osconfig.V1.PatchDeployment,
    json_name: "patchDeployment",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.PausePatchDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Osconfig.V1.ResumePatchDeploymentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
