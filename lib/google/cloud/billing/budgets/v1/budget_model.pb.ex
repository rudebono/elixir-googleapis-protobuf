defmodule Google.Cloud.Billing.Budgets.V1.CalendarPeriod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CALENDAR_PERIOD_UNSPECIFIED | :MONTH | :QUARTER | :YEAR

  field :CALENDAR_PERIOD_UNSPECIFIED, 0

  field :MONTH, 1

  field :QUARTER, 2

  field :YEAR, 3
end

defmodule Google.Cloud.Billing.Budgets.V1.ThresholdRule.Basis do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIS_UNSPECIFIED | :CURRENT_SPEND | :FORECASTED_SPEND

  field :BASIS_UNSPECIFIED, 0

  field :CURRENT_SPEND, 1

  field :FORECASTED_SPEND, 2
end

defmodule Google.Cloud.Billing.Budgets.V1.Filter.CreditTypesTreatment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CREDIT_TYPES_TREATMENT_UNSPECIFIED
          | :INCLUDE_ALL_CREDITS
          | :EXCLUDE_ALL_CREDITS
          | :INCLUDE_SPECIFIED_CREDITS

  field :CREDIT_TYPES_TREATMENT_UNSPECIFIED, 0

  field :INCLUDE_ALL_CREDITS, 1

  field :EXCLUDE_ALL_CREDITS, 2

  field :INCLUDE_SPECIFIED_CREDITS, 3
end

defmodule Google.Cloud.Billing.Budgets.V1.Budget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          budget_filter: Google.Cloud.Billing.Budgets.V1.Filter.t() | nil,
          amount: Google.Cloud.Billing.Budgets.V1.BudgetAmount.t() | nil,
          threshold_rules: [Google.Cloud.Billing.Budgets.V1.ThresholdRule.t()],
          notifications_rule: Google.Cloud.Billing.Budgets.V1.NotificationsRule.t() | nil,
          etag: String.t()
        }

  defstruct [
    :name,
    :display_name,
    :budget_filter,
    :amount,
    :threshold_rules,
    :notifications_rule,
    :etag
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :budget_filter, 3, type: Google.Cloud.Billing.Budgets.V1.Filter
  field :amount, 4, type: Google.Cloud.Billing.Budgets.V1.BudgetAmount
  field :threshold_rules, 5, repeated: true, type: Google.Cloud.Billing.Budgets.V1.ThresholdRule
  field :notifications_rule, 6, type: Google.Cloud.Billing.Budgets.V1.NotificationsRule
  field :etag, 7, type: :string
end

defmodule Google.Cloud.Billing.Budgets.V1.BudgetAmount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          budget_amount: {atom, any}
        }

  defstruct [:budget_amount]

  oneof :budget_amount, 0
  field :specified_amount, 1, type: Google.Type.Money, oneof: 0
  field :last_period_amount, 2, type: Google.Cloud.Billing.Budgets.V1.LastPeriodAmount, oneof: 0
end

defmodule Google.Cloud.Billing.Budgets.V1.LastPeriodAmount do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Billing.Budgets.V1.ThresholdRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threshold_percent: float | :infinity | :negative_infinity | :nan,
          spend_basis: Google.Cloud.Billing.Budgets.V1.ThresholdRule.Basis.t()
        }

  defstruct [:threshold_percent, :spend_basis]

  field :threshold_percent, 1, type: :double
  field :spend_basis, 2, type: Google.Cloud.Billing.Budgets.V1.ThresholdRule.Basis, enum: true
end

defmodule Google.Cloud.Billing.Budgets.V1.NotificationsRule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pubsub_topic: String.t(),
          schema_version: String.t(),
          monitoring_notification_channels: [String.t()],
          disable_default_iam_recipients: boolean
        }

  defstruct [
    :pubsub_topic,
    :schema_version,
    :monitoring_notification_channels,
    :disable_default_iam_recipients
  ]

  field :pubsub_topic, 1, type: :string
  field :schema_version, 2, type: :string
  field :monitoring_notification_channels, 3, repeated: true, type: :string
  field :disable_default_iam_recipients, 4, type: :bool
end

defmodule Google.Cloud.Billing.Budgets.V1.Filter.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.ListValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Cloud.Billing.Budgets.V1.Filter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          usage_period: {atom, any},
          projects: [String.t()],
          credit_types: [String.t()],
          credit_types_treatment: Google.Cloud.Billing.Budgets.V1.Filter.CreditTypesTreatment.t(),
          services: [String.t()],
          subaccounts: [String.t()],
          labels: %{String.t() => Google.Protobuf.ListValue.t() | nil}
        }

  defstruct [
    :usage_period,
    :projects,
    :credit_types,
    :credit_types_treatment,
    :services,
    :subaccounts,
    :labels
  ]

  oneof :usage_period, 0
  field :projects, 1, repeated: true, type: :string
  field :credit_types, 7, repeated: true, type: :string

  field :credit_types_treatment, 4,
    type: Google.Cloud.Billing.Budgets.V1.Filter.CreditTypesTreatment,
    enum: true

  field :services, 3, repeated: true, type: :string
  field :subaccounts, 5, repeated: true, type: :string

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Billing.Budgets.V1.Filter.LabelsEntry,
    map: true

  field :calendar_period, 8,
    type: Google.Cloud.Billing.Budgets.V1.CalendarPeriod,
    enum: true,
    oneof: 0

  field :custom_period, 9, type: Google.Cloud.Billing.Budgets.V1.CustomPeriod, oneof: 0
end

defmodule Google.Cloud.Billing.Budgets.V1.CustomPeriod do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: Google.Type.Date.t() | nil,
          end_date: Google.Type.Date.t() | nil
        }

  defstruct [:start_date, :end_date]

  field :start_date, 1, type: Google.Type.Date
  field :end_date, 2, type: Google.Type.Date
end
