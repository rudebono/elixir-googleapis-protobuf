defmodule Google.Cloud.Notebooks.V1.Schedule.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :ENABLED
          | :PAUSED
          | :DISABLED
          | :UPDATE_FAILED
          | :INITIALIZING
          | :DELETING

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :PAUSED, 2
  field :DISABLED, 3
  field :UPDATE_FAILED, 4
  field :INITIALIZING, 5
  field :DELETING, 6
end

defmodule Google.Cloud.Notebooks.V1.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          state: Google.Cloud.Notebooks.V1.Schedule.State.t(),
          cron_schedule: String.t(),
          time_zone: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          execution_template: Google.Cloud.Notebooks.V1.ExecutionTemplate.t() | nil,
          recent_executions: [Google.Cloud.Notebooks.V1.Execution.t()]
        }

  defstruct [
    :name,
    :display_name,
    :description,
    :state,
    :cron_schedule,
    :time_zone,
    :create_time,
    :update_time,
    :execution_template,
    :recent_executions
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :state, 4, type: Google.Cloud.Notebooks.V1.Schedule.State, enum: true
  field :cron_schedule, 5, type: :string, json_name: "cronSchedule"
  field :time_zone, 6, type: :string, json_name: "timeZone"
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 8, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :execution_template, 9,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate,
    json_name: "executionTemplate"

  field :recent_executions, 10,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Execution,
    json_name: "recentExecutions"

  def transform_module(), do: nil
end
