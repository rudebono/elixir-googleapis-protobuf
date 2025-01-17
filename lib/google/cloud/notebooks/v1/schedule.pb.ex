defmodule Google.Cloud.Notebooks.V1.Schedule.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string
  field :state, 4, type: Google.Cloud.Notebooks.V1.Schedule.State, enum: true
  field :cron_schedule, 5, type: :string, json_name: "cronSchedule"
  field :time_zone, 6, type: :string, json_name: "timeZone"

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :execution_template, 9,
    type: Google.Cloud.Notebooks.V1.ExecutionTemplate,
    json_name: "executionTemplate"

  field :recent_executions, 10,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Execution,
    json_name: "recentExecutions",
    deprecated: false
end
