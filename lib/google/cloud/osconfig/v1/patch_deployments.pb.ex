defmodule Google.Cloud.Osconfig.V1.RecurringSchedule.Frequency do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FREQUENCY_UNSPECIFIED | :WEEKLY | :MONTHLY | :DAILY

  field :FREQUENCY_UNSPECIFIED, 0

  field :WEEKLY, 1

  field :MONTHLY, 2

  field :DAILY, 3
end

defmodule Google.Cloud.Osconfig.V1.PatchDeployment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule: {atom, any},
          name: String.t(),
          description: String.t(),
          instance_filter: Google.Cloud.Osconfig.V1.PatchInstanceFilter.t() | nil,
          patch_config: Google.Cloud.Osconfig.V1.PatchConfig.t() | nil,
          duration: Google.Protobuf.Duration.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          last_execute_time: Google.Protobuf.Timestamp.t() | nil,
          rollout: Google.Cloud.Osconfig.V1.PatchRollout.t() | nil
        }

  defstruct [
    :schedule,
    :name,
    :description,
    :instance_filter,
    :patch_config,
    :duration,
    :create_time,
    :update_time,
    :last_execute_time,
    :rollout
  ]

  oneof :schedule, 0
  field :name, 1, type: :string
  field :description, 2, type: :string
  field :instance_filter, 3, type: Google.Cloud.Osconfig.V1.PatchInstanceFilter
  field :patch_config, 4, type: Google.Cloud.Osconfig.V1.PatchConfig
  field :duration, 5, type: Google.Protobuf.Duration
  field :one_time_schedule, 6, type: Google.Cloud.Osconfig.V1.OneTimeSchedule, oneof: 0
  field :recurring_schedule, 7, type: Google.Cloud.Osconfig.V1.RecurringSchedule, oneof: 0
  field :create_time, 8, type: Google.Protobuf.Timestamp
  field :update_time, 9, type: Google.Protobuf.Timestamp
  field :last_execute_time, 10, type: Google.Protobuf.Timestamp
  field :rollout, 11, type: Google.Cloud.Osconfig.V1.PatchRollout
end

defmodule Google.Cloud.Osconfig.V1.OneTimeSchedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          execute_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:execute_time]

  field :execute_time, 1, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Osconfig.V1.RecurringSchedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule_config: {atom, any},
          time_zone: Google.Type.TimeZone.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          time_of_day: Google.Type.TimeOfDay.t() | nil,
          frequency: Google.Cloud.Osconfig.V1.RecurringSchedule.Frequency.t(),
          last_execute_time: Google.Protobuf.Timestamp.t() | nil,
          next_execute_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :schedule_config,
    :time_zone,
    :start_time,
    :end_time,
    :time_of_day,
    :frequency,
    :last_execute_time,
    :next_execute_time
  ]

  oneof :schedule_config, 0
  field :time_zone, 1, type: Google.Type.TimeZone
  field :start_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
  field :time_of_day, 4, type: Google.Type.TimeOfDay
  field :frequency, 5, type: Google.Cloud.Osconfig.V1.RecurringSchedule.Frequency, enum: true
  field :weekly, 6, type: Google.Cloud.Osconfig.V1.WeeklySchedule, oneof: 0
  field :monthly, 7, type: Google.Cloud.Osconfig.V1.MonthlySchedule, oneof: 0
  field :last_execute_time, 9, type: Google.Protobuf.Timestamp
  field :next_execute_time, 10, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Osconfig.V1.WeeklySchedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          day_of_week: Google.Type.DayOfWeek.t()
        }

  defstruct [:day_of_week]

  field :day_of_week, 1, type: Google.Type.DayOfWeek, enum: true
end

defmodule Google.Cloud.Osconfig.V1.MonthlySchedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          day_of_month: {atom, any}
        }

  defstruct [:day_of_month]

  oneof :day_of_month, 0
  field :week_day_of_month, 1, type: Google.Cloud.Osconfig.V1.WeekDayOfMonth, oneof: 0
  field :month_day, 2, type: :int32, oneof: 0
end

defmodule Google.Cloud.Osconfig.V1.WeekDayOfMonth do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          week_ordinal: integer,
          day_of_week: Google.Type.DayOfWeek.t()
        }

  defstruct [:week_ordinal, :day_of_week]

  field :week_ordinal, 1, type: :int32
  field :day_of_week, 2, type: Google.Type.DayOfWeek, enum: true
end

defmodule Google.Cloud.Osconfig.V1.CreatePatchDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          patch_deployment_id: String.t(),
          patch_deployment: Google.Cloud.Osconfig.V1.PatchDeployment.t() | nil
        }

  defstruct [:parent, :patch_deployment_id, :patch_deployment]

  field :parent, 1, type: :string
  field :patch_deployment_id, 2, type: :string
  field :patch_deployment, 3, type: Google.Cloud.Osconfig.V1.PatchDeployment
end

defmodule Google.Cloud.Osconfig.V1.GetPatchDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Osconfig.V1.ListPatchDeploymentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Osconfig.V1.ListPatchDeploymentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          patch_deployments: [Google.Cloud.Osconfig.V1.PatchDeployment.t()],
          next_page_token: String.t()
        }

  defstruct [:patch_deployments, :next_page_token]

  field :patch_deployments, 1, repeated: true, type: Google.Cloud.Osconfig.V1.PatchDeployment
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Osconfig.V1.DeletePatchDeploymentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
