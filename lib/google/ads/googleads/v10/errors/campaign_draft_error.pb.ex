defmodule Google.Ads.Googleads.V10.Errors.CampaignDraftErrorEnum.CampaignDraftError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DUPLICATE_DRAFT_NAME
          | :INVALID_STATUS_TRANSITION_FROM_REMOVED
          | :INVALID_STATUS_TRANSITION_FROM_PROMOTED
          | :INVALID_STATUS_TRANSITION_FROM_PROMOTE_FAILED
          | :CUSTOMER_CANNOT_CREATE_DRAFT
          | :CAMPAIGN_CANNOT_CREATE_DRAFT
          | :INVALID_DRAFT_CHANGE
          | :INVALID_STATUS_TRANSITION
          | :MAX_NUMBER_OF_DRAFTS_PER_CAMPAIGN_REACHED
          | :LIST_ERRORS_FOR_PROMOTED_DRAFT_ONLY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DUPLICATE_DRAFT_NAME, 2
  field :INVALID_STATUS_TRANSITION_FROM_REMOVED, 3
  field :INVALID_STATUS_TRANSITION_FROM_PROMOTED, 4
  field :INVALID_STATUS_TRANSITION_FROM_PROMOTE_FAILED, 5
  field :CUSTOMER_CANNOT_CREATE_DRAFT, 6
  field :CAMPAIGN_CANNOT_CREATE_DRAFT, 7
  field :INVALID_DRAFT_CHANGE, 8
  field :INVALID_STATUS_TRANSITION, 9
  field :MAX_NUMBER_OF_DRAFTS_PER_CAMPAIGN_REACHED, 10
  field :LIST_ERRORS_FOR_PROMOTED_DRAFT_ONLY, 11
end
defmodule Google.Ads.Googleads.V10.Errors.CampaignDraftErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
