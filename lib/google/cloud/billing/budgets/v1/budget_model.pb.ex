defmodule Google.Cloud.Billing.Budgets.V1.CalendarPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CALENDAR_PERIOD_UNSPECIFIED, 0
  field :MONTH, 1
  field :QUARTER, 2
  field :YEAR, 3
end

defmodule Google.Cloud.Billing.Budgets.V1.ThresholdRule.Basis do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BASIS_UNSPECIFIED, 0
  field :CURRENT_SPEND, 1
  field :FORECASTED_SPEND, 2
end

defmodule Google.Cloud.Billing.Budgets.V1.Filter.CreditTypesTreatment do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CREDIT_TYPES_TREATMENT_UNSPECIFIED, 0
  field :INCLUDE_ALL_CREDITS, 1
  field :EXCLUDE_ALL_CREDITS, 2
  field :INCLUDE_SPECIFIED_CREDITS, 3
end

defmodule Google.Cloud.Billing.Budgets.V1.Budget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"

  field :budget_filter, 3,
    type: Google.Cloud.Billing.Budgets.V1.Filter,
    json_name: "budgetFilter",
    deprecated: false

  field :amount, 4, type: Google.Cloud.Billing.Budgets.V1.BudgetAmount, deprecated: false

  field :threshold_rules, 5,
    repeated: true,
    type: Google.Cloud.Billing.Budgets.V1.ThresholdRule,
    json_name: "thresholdRules",
    deprecated: false

  field :notifications_rule, 6,
    type: Google.Cloud.Billing.Budgets.V1.NotificationsRule,
    json_name: "notificationsRule",
    deprecated: false

  field :etag, 7, type: :string, deprecated: false
end

defmodule Google.Cloud.Billing.Budgets.V1.BudgetAmount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :budget_amount, 0

  field :specified_amount, 1, type: Google.Type.Money, json_name: "specifiedAmount", oneof: 0

  field :last_period_amount, 2,
    type: Google.Cloud.Billing.Budgets.V1.LastPeriodAmount,
    json_name: "lastPeriodAmount",
    oneof: 0
end

defmodule Google.Cloud.Billing.Budgets.V1.LastPeriodAmount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Billing.Budgets.V1.ThresholdRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :threshold_percent, 1, type: :double, json_name: "thresholdPercent", deprecated: false

  field :spend_basis, 2,
    type: Google.Cloud.Billing.Budgets.V1.ThresholdRule.Basis,
    json_name: "spendBasis",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Billing.Budgets.V1.NotificationsRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :pubsub_topic, 1, type: :string, json_name: "pubsubTopic", deprecated: false
  field :schema_version, 2, type: :string, json_name: "schemaVersion", deprecated: false

  field :monitoring_notification_channels, 3,
    repeated: true,
    type: :string,
    json_name: "monitoringNotificationChannels",
    deprecated: false

  field :disable_default_iam_recipients, 4,
    type: :bool,
    json_name: "disableDefaultIamRecipients",
    deprecated: false

  field :enable_project_level_recipients, 5,
    type: :bool,
    json_name: "enableProjectLevelRecipients",
    deprecated: false
end

defmodule Google.Cloud.Billing.Budgets.V1.Filter.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Cloud.Billing.Budgets.V1.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :usage_period, 0

  field :projects, 1, repeated: true, type: :string, deprecated: false

  field :resource_ancestors, 2,
    repeated: true,
    type: :string,
    json_name: "resourceAncestors",
    deprecated: false

  field :credit_types, 7,
    repeated: true,
    type: :string,
    json_name: "creditTypes",
    deprecated: false

  field :credit_types_treatment, 4,
    type: Google.Cloud.Billing.Budgets.V1.Filter.CreditTypesTreatment,
    json_name: "creditTypesTreatment",
    enum: true,
    deprecated: false

  field :services, 3, repeated: true, type: :string, deprecated: false
  field :subaccounts, 5, repeated: true, type: :string, deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Billing.Budgets.V1.Filter.LabelsEntry,
    map: true,
    deprecated: false

  field :calendar_period, 8,
    type: Google.Cloud.Billing.Budgets.V1.CalendarPeriod,
    json_name: "calendarPeriod",
    enum: true,
    oneof: 0,
    deprecated: false

  field :custom_period, 9,
    type: Google.Cloud.Billing.Budgets.V1.CustomPeriod,
    json_name: "customPeriod",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Billing.Budgets.V1.CustomPeriod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate", deprecated: false
  field :end_date, 2, type: Google.Type.Date, json_name: "endDate", deprecated: false
end