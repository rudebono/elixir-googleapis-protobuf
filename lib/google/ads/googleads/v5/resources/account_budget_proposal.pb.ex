defmodule Google.Ads.Googleads.V5.Resources.AccountBudgetProposal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          proposed_start_time: {atom, any},
          proposed_end_time: {atom, any},
          approved_end_time: {atom, any},
          proposed_spending_limit: {atom, any},
          approved_spending_limit: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          billing_setup: Google.Protobuf.StringValue.t() | nil,
          account_budget: Google.Protobuf.StringValue.t() | nil,
          proposal_type:
            Google.Ads.Googleads.V5.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType.t(),
          status:
            Google.Ads.Googleads.V5.Enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus.t(),
          proposed_name: Google.Protobuf.StringValue.t() | nil,
          approved_start_date_time: Google.Protobuf.StringValue.t() | nil,
          proposed_purchase_order_number: Google.Protobuf.StringValue.t() | nil,
          proposed_notes: Google.Protobuf.StringValue.t() | nil,
          creation_date_time: Google.Protobuf.StringValue.t() | nil,
          approval_date_time: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :proposed_start_time,
    :proposed_end_time,
    :approved_end_time,
    :proposed_spending_limit,
    :approved_spending_limit,
    :resource_name,
    :id,
    :billing_setup,
    :account_budget,
    :proposal_type,
    :status,
    :proposed_name,
    :approved_start_date_time,
    :proposed_purchase_order_number,
    :proposed_notes,
    :creation_date_time,
    :approval_date_time
  ]

  oneof :proposed_start_time, 0
  oneof :proposed_end_time, 1
  oneof :approved_end_time, 2
  oneof :proposed_spending_limit, 3
  oneof :approved_spending_limit, 4
  field :resource_name, 1, type: :string
  field :id, 14, type: Google.Protobuf.Int64Value
  field :billing_setup, 2, type: Google.Protobuf.StringValue
  field :account_budget, 3, type: Google.Protobuf.StringValue

  field :proposal_type, 4,
    type: Google.Ads.Googleads.V5.Enums.AccountBudgetProposalTypeEnum.AccountBudgetProposalType,
    enum: true

  field :status, 15,
    type:
      Google.Ads.Googleads.V5.Enums.AccountBudgetProposalStatusEnum.AccountBudgetProposalStatus,
    enum: true

  field :proposed_name, 5, type: Google.Protobuf.StringValue
  field :approved_start_date_time, 20, type: Google.Protobuf.StringValue
  field :proposed_purchase_order_number, 12, type: Google.Protobuf.StringValue
  field :proposed_notes, 13, type: Google.Protobuf.StringValue
  field :creation_date_time, 16, type: Google.Protobuf.StringValue
  field :approval_date_time, 17, type: Google.Protobuf.StringValue
  field :proposed_start_date_time, 18, type: Google.Protobuf.StringValue, oneof: 0

  field :proposed_start_time_type, 7,
    type: Google.Ads.Googleads.V5.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :proposed_end_date_time, 19, type: Google.Protobuf.StringValue, oneof: 1

  field :proposed_end_time_type, 9,
    type: Google.Ads.Googleads.V5.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 1

  field :approved_end_date_time, 21, type: Google.Protobuf.StringValue, oneof: 2

  field :approved_end_time_type, 22,
    type: Google.Ads.Googleads.V5.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 2

  field :proposed_spending_limit_micros, 10, type: Google.Protobuf.Int64Value, oneof: 3

  field :proposed_spending_limit_type, 11,
    type: Google.Ads.Googleads.V5.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 3

  field :approved_spending_limit_micros, 23, type: Google.Protobuf.Int64Value, oneof: 4

  field :approved_spending_limit_type, 24,
    type: Google.Ads.Googleads.V5.Enums.SpendingLimitTypeEnum.SpendingLimitType,
    enum: true,
    oneof: 4
end
