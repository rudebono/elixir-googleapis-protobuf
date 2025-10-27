defmodule Google.Ads.Admanager.V1.Report.Visibility do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HIDDEN, 0
  field :DRAFT, 1
  field :SAVED, 2
end

defmodule Google.Ads.Admanager.V1.ScheduleOptions.DeliveryCondition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NEVER, 0
  field :ALWAYS, 1
  field :WHEN_FLAG_CONDITIONS_MET, 2
end

defmodule Google.Ads.Admanager.V1.ScheduleOptions.Schedule.Frequency do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FREQUENCY_UNSPECIFIED, 0
  field :HOURLY, 1
  field :TWO_TIMES_DAILY, 2
  field :THREE_TIMES_DAILY, 3
  field :FOUR_TIMES_DAILY, 4
  field :DAILY, 5
  field :WEEKLY, 6
  field :MONTHLY, 7
end

defmodule Google.Ads.Admanager.V1.Report do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :report_id, 3, type: :int64, json_name: "reportId", deprecated: false

  field :visibility, 2,
    type: Google.Ads.Admanager.V1.Report.Visibility,
    enum: true,
    deprecated: false

  field :report_definition, 4,
    type: Google.Ads.Admanager.V1.ReportDefinition,
    json_name: "reportDefinition",
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :locale, 8, type: :string, deprecated: false

  field :schedule_options, 9,
    type: Google.Ads.Admanager.V1.ScheduleOptions,
    json_name: "scheduleOptions",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.ReportDataTable.Row do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimension_values, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.ReportValue,
    json_name: "dimensionValues"

  field :metric_value_groups, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.ReportDataTable.MetricValueGroup,
    json_name: "metricValueGroups"
end

defmodule Google.Ads.Admanager.V1.ReportDataTable.MetricValueGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :primary_values, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.ReportValue,
    json_name: "primaryValues"

  field :primary_percent_of_total_values, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.ReportValue,
    json_name: "primaryPercentOfTotalValues"

  field :comparison_values, 3,
    repeated: true,
    type: Google.Ads.Admanager.V1.ReportValue,
    json_name: "comparisonValues"

  field :comparison_percent_of_total_values, 4,
    repeated: true,
    type: Google.Ads.Admanager.V1.ReportValue,
    json_name: "comparisonPercentOfTotalValues"

  field :absolute_change_values, 5,
    repeated: true,
    type: Google.Ads.Admanager.V1.ReportValue,
    json_name: "absoluteChangeValues"

  field :relative_change_values, 6,
    repeated: true,
    type: Google.Ads.Admanager.V1.ReportValue,
    json_name: "relativeChangeValues"

  field :flag_values, 7, repeated: true, type: :bool, json_name: "flagValues"
end

defmodule Google.Ads.Admanager.V1.ReportDataTable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.ScheduleOptions.Schedule.WeeklySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :weekly_scheduled_days, 1,
    repeated: true,
    type: Google.Type.DayOfWeek,
    json_name: "weeklyScheduledDays",
    enum: true
end

defmodule Google.Ads.Admanager.V1.ScheduleOptions.Schedule.MonthlySchedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :monthly_scheduled_days, 1,
    repeated: true,
    type: :int32,
    json_name: "monthlyScheduledDays"
end

defmodule Google.Ads.Admanager.V1.ScheduleOptions.Schedule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :frequency_schedule, 0

  field :weekly_schedule, 6,
    type: Google.Ads.Admanager.V1.ScheduleOptions.Schedule.WeeklySchedule,
    json_name: "weeklySchedule",
    oneof: 0

  field :monthly_schedule, 7,
    type: Google.Ads.Admanager.V1.ScheduleOptions.Schedule.MonthlySchedule,
    json_name: "monthlySchedule",
    oneof: 0

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate"
  field :end_date, 2, type: Google.Type.Date, json_name: "endDate"

  field :frequency, 3,
    type: Google.Ads.Admanager.V1.ScheduleOptions.Schedule.Frequency,
    enum: true

  field :start_time, 4, type: Google.Type.TimeOfDay, json_name: "startTime"
end

defmodule Google.Ads.Admanager.V1.ScheduleOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :schedule, 1, type: Google.Ads.Admanager.V1.ScheduleOptions.Schedule

  field :delivery_condition, 2,
    type: Google.Ads.Admanager.V1.ScheduleOptions.DeliveryCondition,
    json_name: "deliveryCondition",
    enum: true

  field :flags, 3,
    repeated: true,
    type: Google.Ads.Admanager.V1.ReportDefinition.Flag,
    deprecated: false
end
