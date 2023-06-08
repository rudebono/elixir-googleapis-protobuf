defmodule Google.Ads.Googleads.V14.Resources.AccountBudgetProposal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :proposed_start_time, 0

  oneof :proposed_end_time, 1

  oneof :approved_end_time, 2

  oneof :proposed_spending_limit, 3

  oneof :approved_spending_limit, 4

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, proto3_optional: true, type: :int64, deprecated: false

  field :billing_setup, 26,
    proto3_optional: true,
    type: :string,
    json_name: "billingSetup",
    deprecated: false

  field :account_budget, 27,
    proto3_optional: true,
    type: :string,
    json_name: "accountBudget",
    deprecated: false

  field :proposal_type, 4,
    type: Google.Ads.Googleads.V14.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType,
    json_name: "proposalType",
    enum: true,
    deprecated: false

  field :status, 15,
    type:
      Google.Ads.Googleads.V14.Enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus,
    enum: true,
    deprecated: false

  field :proposed_name, 28,
    proto3_optional: true,
    type: :string,
    json_name: "proposedName",
    deprecated: false

  field :approved_start_date_time, 30,
    proto3_optional: true,
    type: :string,
    json_name: "approvedStartDateTime",
    deprecated: false

  field :proposed_purchase_order_number, 35,
    proto3_optional: true,
    type: :string,
    json_name: "proposedPurchaseOrderNumber",
    deprecated: false

  field :proposed_notes, 36,
    proto3_optional: true,
    type: :string,
    json_name: "proposedNotes",
    deprecated: false

  field :creation_date_time, 37,
    proto3_optional: true,
    type: :string,
    json_name: "creationDateTime",
    deprecated: false

  field :approval_date_time, 38,
    proto3_optional: true,
    type: :string,
    json_name: "approvalDateTime",
    deprecated: false

  field :proposed_start_date_time, 29,
    type: :string,
    json_name: "proposedStartDateTime",
    oneof: 0,
    deprecated: false

  field :proposed_start_time_type, 7,
    type: Google.Ads.Googleads.V14.Enums.TimeTypeEnum.TimeType,
    json_name: "proposedStartTimeType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :proposed_end_date_time, 31,
    type: :string,
    json_name: "proposedEndDateTime",
    oneof: 1,
    deprecated: false

  field :proposed_end_time_type, 9,
    type: Google.Ads.Googleads.V14.Enums.TimeTypeEnum.TimeType,
    json_name: "proposedEndTimeType",
    enum: true,
    oneof: 1,
    deprecated: false

  field :approved_end_date_time, 32,
    type: :string,
    json_name: "approvedEndDateTime",
    oneof: 2,
    deprecated: false

  field :approved_end_time_type, 22,
    type: Google.Ads.Googleads.V14.Enums.TimeTypeEnum.TimeType,
    json_name: "approvedEndTimeType",
    enum: true,
    oneof: 2,
    deprecated: false

  field :proposed_spending_limit_micros, 33,
    type: :int64,
    json_name: "proposedSpendingLimitMicros",
    oneof: 3,
    deprecated: false

  field :proposed_spending_limit_type, 11,
    type: Google.Ads.Googleads.V14.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "proposedSpendingLimitType",
    enum: true,
    oneof: 3,
    deprecated: false

  field :approved_spending_limit_micros, 34,
    type: :int64,
    json_name: "approvedSpendingLimitMicros",
    oneof: 4,
    deprecated: false

  field :approved_spending_limit_type, 24,
    type: Google.Ads.Googleads.V14.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    json_name: "approvedSpendingLimitType",
    enum: true,
    oneof: 4,
    deprecated: false
end