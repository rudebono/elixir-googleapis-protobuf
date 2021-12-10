defmodule Google.Ads.Googleads.V7.Errors.AccountBudgetProposalErrorEnum.AccountBudgetProposalError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FIELD_MASK_NOT_ALLOWED
          | :IMMUTABLE_FIELD
          | :REQUIRED_FIELD_MISSING
          | :CANNOT_CANCEL_APPROVED_PROPOSAL
          | :CANNOT_REMOVE_UNAPPROVED_BUDGET
          | :CANNOT_REMOVE_RUNNING_BUDGET
          | :CANNOT_END_UNAPPROVED_BUDGET
          | :CANNOT_END_INACTIVE_BUDGET
          | :BUDGET_NAME_REQUIRED
          | :CANNOT_UPDATE_OLD_BUDGET
          | :CANNOT_END_IN_PAST
          | :CANNOT_EXTEND_END_TIME
          | :PURCHASE_ORDER_NUMBER_REQUIRED
          | :PENDING_UPDATE_PROPOSAL_EXISTS
          | :MULTIPLE_BUDGETS_NOT_ALLOWED_FOR_UNAPPROVED_BILLING_SETUP
          | :CANNOT_UPDATE_START_TIME_FOR_STARTED_BUDGET
          | :SPENDING_LIMIT_LOWER_THAN_ACCRUED_COST_NOT_ALLOWED
          | :UPDATE_IS_NO_OP
          | :END_TIME_MUST_FOLLOW_START_TIME
          | :BUDGET_DATE_RANGE_INCOMPATIBLE_WITH_BILLING_SETUP
          | :NOT_AUTHORIZED
          | :INVALID_BILLING_SETUP
          | :OVERLAPS_EXISTING_BUDGET
          | :CANNOT_CREATE_BUDGET_THROUGH_API

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :FIELD_MASK_NOT_ALLOWED, 2
  field :IMMUTABLE_FIELD, 3
  field :REQUIRED_FIELD_MISSING, 4
  field :CANNOT_CANCEL_APPROVED_PROPOSAL, 5
  field :CANNOT_REMOVE_UNAPPROVED_BUDGET, 6
  field :CANNOT_REMOVE_RUNNING_BUDGET, 7
  field :CANNOT_END_UNAPPROVED_BUDGET, 8
  field :CANNOT_END_INACTIVE_BUDGET, 9
  field :BUDGET_NAME_REQUIRED, 10
  field :CANNOT_UPDATE_OLD_BUDGET, 11
  field :CANNOT_END_IN_PAST, 12
  field :CANNOT_EXTEND_END_TIME, 13
  field :PURCHASE_ORDER_NUMBER_REQUIRED, 14
  field :PENDING_UPDATE_PROPOSAL_EXISTS, 15
  field :MULTIPLE_BUDGETS_NOT_ALLOWED_FOR_UNAPPROVED_BILLING_SETUP, 16
  field :CANNOT_UPDATE_START_TIME_FOR_STARTED_BUDGET, 17
  field :SPENDING_LIMIT_LOWER_THAN_ACCRUED_COST_NOT_ALLOWED, 18
  field :UPDATE_IS_NO_OP, 19
  field :END_TIME_MUST_FOLLOW_START_TIME, 20
  field :BUDGET_DATE_RANGE_INCOMPATIBLE_WITH_BILLING_SETUP, 21
  field :NOT_AUTHORIZED, 22
  field :INVALID_BILLING_SETUP, 23
  field :OVERLAPS_EXISTING_BUDGET, 24
  field :CANNOT_CREATE_BUDGET_THROUGH_API, 25
end
defmodule Google.Ads.Googleads.V7.Errors.AccountBudgetProposalErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
