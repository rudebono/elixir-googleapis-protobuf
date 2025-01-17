defmodule Google.Ads.Googleads.V17.Resources.AccountBudget.PendingAccountBudgetProposal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :end_time, 0

  oneof :spending_limit, 1

  field :account_budget_proposal, 12,
    proto3_optional: true,
    type: :string,
    json_name: "accountBudgetProposal",
    deprecated: false

  field :proposal_type, 2,
    type: Google.Ads.Googleads.V17.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType,
    json_name: "proposalType",
    enum: true,
    deprecated: false

  field :name, 13, proto3_optional: true, type: :string, deprecated: false

  field :start_date_time, 14,
    proto3_optional: true,
    type: :string,
    json_name: "startDateTime",
    deprecated: false

  field :purchase_order_number, 17,
    proto3_optional: true,
    type: :string,
    json_name: "purchaseOrderNumber",
    deprecated: false

  field :notes, 18, proto3_optional: true, type: :string, deprecated: false

  field :creation_date_time, 19,
    proto3_optional: true,
    type: :string,
    json_name: "creationDateTime",
    deprecated: false

  field :end_date_time, 15, type: :string, json_name: "endDateTime", oneof: 0, deprecated: false

  field :end_time_type, 6,
    type: Google.Ads.Googleads.V17.Enums.TimeTypeEnum.TimeType,
    json_name: "endTimeType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :spending_limit_micros, 16,
    type: :int64,
    json_name: "spendingLimitMicros",
    oneof: 1,
    deprecated: false

  field :spending_limit_type, 8,
    type: Google.Ads.Googleads.V17.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "spendingLimitType",
    enum: true,
    oneof: 1,
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.AccountBudget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :proposed_end_time, 0

  oneof :approved_end_time, 1

  oneof :proposed_spending_limit, 2

  oneof :approved_spending_limit, 3

  oneof :adjusted_spending_limit, 4

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 23, proto3_optional: true, type: :int64, deprecated: false

  field :billing_setup, 24,
    proto3_optional: true,
    type: :string,
    json_name: "billingSetup",
    deprecated: false

  field :status, 4,
    type: Google.Ads.Googleads.V17.Enums.AccountBudgetStatusEnum.AccountBudgetStatus,
    enum: true,
    deprecated: false

  field :name, 25, proto3_optional: true, type: :string, deprecated: false

  field :proposed_start_date_time, 26,
    proto3_optional: true,
    type: :string,
    json_name: "proposedStartDateTime",
    deprecated: false

  field :approved_start_date_time, 27,
    proto3_optional: true,
    type: :string,
    json_name: "approvedStartDateTime",
    deprecated: false

  field :total_adjustments_micros, 33,
    type: :int64,
    json_name: "totalAdjustmentsMicros",
    deprecated: false

  field :amount_served_micros, 34,
    type: :int64,
    json_name: "amountServedMicros",
    deprecated: false

  field :purchase_order_number, 35,
    proto3_optional: true,
    type: :string,
    json_name: "purchaseOrderNumber",
    deprecated: false

  field :notes, 36, proto3_optional: true, type: :string, deprecated: false

  field :pending_proposal, 22,
    type: Google.Ads.Googleads.V17.Resources.AccountBudget.PendingAccountBudgetProposal,
    json_name: "pendingProposal",
    deprecated: false

  field :proposed_end_date_time, 28,
    type: :string,
    json_name: "proposedEndDateTime",
    oneof: 0,
    deprecated: false

  field :proposed_end_time_type, 9,
    type: Google.Ads.Googleads.V17.Enums.TimeTypeEnum.TimeType,
    json_name: "proposedEndTimeType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :approved_end_date_time, 29,
    type: :string,
    json_name: "approvedEndDateTime",
    oneof: 1,
    deprecated: false

  field :approved_end_time_type, 11,
    type: Google.Ads.Googleads.V17.Enums.TimeTypeEnum.TimeType,
    json_name: "approvedEndTimeType",
    enum: true,
    oneof: 1,
    deprecated: false

  field :proposed_spending_limit_micros, 30,
    type: :int64,
    json_name: "proposedSpendingLimitMicros",
    oneof: 2,
    deprecated: false

  field :proposed_spending_limit_type, 13,
    type: Google.Ads.Googleads.V17.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "proposedSpendingLimitType",
    enum: true,
    oneof: 2,
    deprecated: false

  field :approved_spending_limit_micros, 31,
    type: :int64,
    json_name: "approvedSpendingLimitMicros",
    oneof: 3,
    deprecated: false

  field :approved_spending_limit_type, 15,
    type: Google.Ads.Googleads.V17.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "approvedSpendingLimitType",
    enum: true,
    oneof: 3,
    deprecated: false

  field :adjusted_spending_limit_micros, 32,
    type: :int64,
    json_name: "adjustedSpendingLimitMicros",
    oneof: 4,
    deprecated: false

  field :adjusted_spending_limit_type, 17,
    type: Google.Ads.Googleads.V17.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "adjustedSpendingLimitType",
    enum: true,
    oneof: 4,
    deprecated: false
end
