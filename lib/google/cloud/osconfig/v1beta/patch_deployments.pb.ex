defmodule Google.Cloud.Osconfig.V1beta.RecurringSchedule.Frequency do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FREQUENCY_UNSPECIFIED | :WEEKLY | :MONTHLY | :DAILY

  field :FREQUENCY_UNSPECIFIED, 0
  field :WEEKLY, 1
  field :MONTHLY, 2
  field :DAILY, 3
end
defmodule Google.Cloud.Osconfig.V1beta.PatchDeployment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule:
            {:one_time_schedule, Google.Cloud.Osconfig.V1beta.OneTimeSchedule.t() | nil}
            | {:recurring_schedule, Google.Cloud.Osconfig.V1beta.RecurringSchedule.t() | nil},
          name: String.t(),
          description: String.t(),
          instance_filter: Google.Cloud.Osconfig.V1beta.PatchInstanceFilter.t() | nil,
          patch_config: Google.Cloud.Osconfig.V1beta.PatchConfig.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          last_execute_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct schedule: nil,
            name: "",
            description: "",
            instance_filter: nil,
            patch_config: nil,
            duration: nil,
            create_time: nil,
            update_time: nil,
            last_execute_time: nil

  oneof :schedule, 0

  field :name, 1, type: :string
  field :description, 2, type: :string, deprecated: false

  field :instance_filter, 3,
    type: Google.Cloud.Osconfig.V1beta.PatchInstanceFilter,
    json_name: "instanceFilter",
    deprecated: false

  field :patch_config, 4,
    type: Google.Cloud.Osconfig.V1beta.PatchConfig,
    json_name: "patchConfig",
    deprecated: false

  field :duration, 5, type: Google.Protobuf.Duration, deprecated: false

  field :one_time_schedule, 6,
    type: Google.Cloud.Osconfig.V1beta.OneTimeSchedule,
    json_name: "oneTimeSchedule",
    oneof: 0,
    deprecated: false

  field :recurring_schedule, 7,
    type: Google.Cloud.Osconfig.V1beta.RecurringSchedule,
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
end
defmodule Google.Cloud.Osconfig.V1beta.OneTimeSchedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execute_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct execute_time: nil

  field :execute_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "executeTime",
    deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.RecurringSchedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule_config:
            {:weekly, Google.Cloud.Osconfig.V1beta.WeeklySchedule.t() | nil}
            | {:monthly, Google.Cloud.Osconfig.V1beta.MonthlySchedule.t() | nil},
          time_zone: Google.Type.TimeZone.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          time_of_day: Google.Type.TimeOfDay.t() | nil,
          frequency: Google.Cloud.Osconfig.V1beta.RecurringSchedule.Frequency.t(),
          last_execute_time: Google.Protobuf.Timestamp.t() | nil,
          next_execute_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct schedule_config: nil,
            time_zone: nil,
            start_time: nil,
            end_time: nil,
            time_of_day: nil,
            frequency: :FREQUENCY_UNSPECIFIED,
            last_execute_time: nil,
            next_execute_time: nil

  oneof :schedule_config, 0

  field :time_zone, 1, type: Google.Type.TimeZone, json_name: "timeZone", deprecated: false
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :time_of_day, 4, type: Google.Type.TimeOfDay, json_name: "timeOfDay", deprecated: false

  field :frequency, 5,
    type: Google.Cloud.Osconfig.V1beta.RecurringSchedule.Frequency,
    enum: true,
    deprecated: false

  field :weekly, 6, type: Google.Cloud.Osconfig.V1beta.WeeklySchedule, oneof: 0, deprecated: false

  field :monthly, 7,
    type: Google.Cloud.Osconfig.V1beta.MonthlySchedule,
    oneof: 0,
    deprecated: false

  field :last_execute_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "lastExecuteTime",
    deprecated: false

  field :next_execute_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "nextExecuteTime",
    deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.WeeklySchedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          day_of_week: Google.Type.DayOfWeek.t()
        }

  defstruct day_of_week: :DAY_OF_WEEK_UNSPECIFIED

  field :day_of_week, 1,
    type: Google.Type.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.MonthlySchedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          day_of_month:
            {:week_day_of_month, Google.Cloud.Osconfig.V1beta.WeekDayOfMonth.t() | nil}
            | {:month_day, integer}
        }

  defstruct day_of_month: nil

  oneof :day_of_month, 0

  field :week_day_of_month, 1,
    type: Google.Cloud.Osconfig.V1beta.WeekDayOfMonth,
    json_name: "weekDayOfMonth",
    oneof: 0,
    deprecated: false

  field :month_day, 2, type: :int32, json_name: "monthDay", oneof: 0, deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.WeekDayOfMonth do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          week_ordinal: integer,
          day_of_week: Google.Type.DayOfWeek.t()
        }

  defstruct week_ordinal: 0,
            day_of_week: :DAY_OF_WEEK_UNSPECIFIED

  field :week_ordinal, 1, type: :int32, json_name: "weekOrdinal", deprecated: false

  field :day_of_week, 2,
    type: Google.Type.DayOfWeek,
    json_name: "dayOfWeek",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.CreatePatchDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          patch_deployment_id: String.t(),
          patch_deployment: Google.Cloud.Osconfig.V1beta.PatchDeployment.t() | nil
        }

  defstruct parent: "",
            patch_deployment_id: "",
            patch_deployment: nil

  field :parent, 1, type: :string, deprecated: false
  field :patch_deployment_id, 2, type: :string, json_name: "patchDeploymentId", deprecated: false

  field :patch_deployment, 3,
    type: Google.Cloud.Osconfig.V1beta.PatchDeployment,
    json_name: "patchDeployment",
    deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.GetPatchDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.ListPatchDeploymentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Osconfig.V1beta.ListPatchDeploymentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_deployments: [Google.Cloud.Osconfig.V1beta.PatchDeployment.t()],
          next_page_token: String.t()
        }

  defstruct patch_deployments: [],
            next_page_token: ""

  field :patch_deployments, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1beta.PatchDeployment,
    json_name: "patchDeployments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Osconfig.V1beta.DeletePatchDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
