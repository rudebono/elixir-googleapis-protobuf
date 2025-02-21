defmodule Google.Cloud.Batch.V1alpha.CalendarPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CALENDAR_PERIOD_UNSPECIFIED, 0
  field :MONTH, 1
  field :QUARTER, 2
  field :YEAR, 3
  field :WEEK, 4
  field :DAY, 5
end

defmodule Google.Cloud.Batch.V1alpha.ResourceAllowanceState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESOURCE_ALLOWANCE_STATE_UNSPECIFIED, 0
  field :RESOURCE_ALLOWANCE_ACTIVE, 1
  field :RESOURCE_ALLOWANCE_DEPLETED, 2
end

defmodule Google.Cloud.Batch.V1alpha.ResourceAllowance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Batch.V1alpha.ResourceAllowance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :resource_allowance, 0

  field :usage_resource_allowance, 4,
    type: Google.Cloud.Batch.V1alpha.UsageResourceAllowance,
    json_name: "usageResourceAllowance",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.ResourceAllowance.LabelsEntry,
    map: true,
    deprecated: false

  field :notifications, 6,
    repeated: true,
    type: Google.Cloud.Batch.V1alpha.Notification,
    deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.UsageResourceAllowance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :spec, 1, type: Google.Cloud.Batch.V1alpha.UsageResourceAllowanceSpec, deprecated: false

  field :status, 2,
    type: Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus,
    deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.UsageResourceAllowanceSpec.Limit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :duration, 0

  field :calendar_period, 1,
    type: Google.Cloud.Batch.V1alpha.CalendarPeriod,
    json_name: "calendarPeriod",
    enum: true,
    oneof: 0,
    deprecated: false

  field :limit, 2, proto3_optional: true, type: :double, deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.UsageResourceAllowanceSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: :string, deprecated: false

  field :limit, 2,
    type: Google.Cloud.Batch.V1alpha.UsageResourceAllowanceSpec.Limit,
    deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus.LimitStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :consumption_interval, 1,
    type: Google.Type.Interval,
    json_name: "consumptionInterval",
    deprecated: false

  field :limit, 2, proto3_optional: true, type: :double, deprecated: false
  field :consumed, 3, proto3_optional: true, type: :double, deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus.PeriodConsumption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :consumption_interval, 1,
    type: Google.Type.Interval,
    json_name: "consumptionInterval",
    deprecated: false

  field :consumed, 2, proto3_optional: true, type: :double, deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus.ConsumptionReport.LatestPeriodConsumptionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus.PeriodConsumption
end

defmodule Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus.ConsumptionReport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :latest_period_consumptions, 1,
    repeated: true,
    type:
      Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus.ConsumptionReport.LatestPeriodConsumptionsEntry,
    json_name: "latestPeriodConsumptions",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Batch.V1alpha.ResourceAllowanceState,
    enum: true,
    deprecated: false

  field :limit_status, 2,
    type: Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus.LimitStatus,
    json_name: "limitStatus",
    deprecated: false

  field :report, 3,
    type: Google.Cloud.Batch.V1alpha.UsageResourceAllowanceStatus.ConsumptionReport,
    deprecated: false
end
