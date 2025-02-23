defmodule Google.Firestore.Admin.V1.BackupSchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :recurrence, 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :retention, 6, type: Google.Protobuf.Duration

  field :daily_recurrence, 7,
    type: Google.Firestore.Admin.V1.DailyRecurrence,
    json_name: "dailyRecurrence",
    oneof: 0

  field :weekly_recurrence, 8,
    type: Google.Firestore.Admin.V1.WeeklyRecurrence,
    json_name: "weeklyRecurrence",
    oneof: 0
end

defmodule Google.Firestore.Admin.V1.DailyRecurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Firestore.Admin.V1.WeeklyRecurrence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :day, 2, type: Google.Type.DayOfWeek, enum: true
end
