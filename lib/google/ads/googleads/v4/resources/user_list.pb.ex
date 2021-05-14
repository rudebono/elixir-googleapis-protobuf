defmodule Google.Ads.Googleads.V4.Resources.UserList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          read_only: Google.Protobuf.BoolValue.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil,
          membership_status:
            Google.Ads.Googleads.V4.Enums.UserListMembershipStatusEnum.UserListMembershipStatus.t(),
          integration_code: Google.Protobuf.StringValue.t() | nil,
          membership_life_span: Google.Protobuf.Int64Value.t() | nil,
          size_for_display: Google.Protobuf.Int64Value.t() | nil,
          size_range_for_display:
            Google.Ads.Googleads.V4.Enums.UserListSizeRangeEnum.UserListSizeRange.t(),
          size_for_search: Google.Protobuf.Int64Value.t() | nil,
          size_range_for_search:
            Google.Ads.Googleads.V4.Enums.UserListSizeRangeEnum.UserListSizeRange.t(),
          type: Google.Ads.Googleads.V4.Enums.UserListTypeEnum.UserListType.t(),
          closing_reason:
            Google.Ads.Googleads.V4.Enums.UserListClosingReasonEnum.UserListClosingReason.t(),
          access_reason: Google.Ads.Googleads.V4.Enums.AccessReasonEnum.AccessReason.t(),
          account_user_list_status:
            Google.Ads.Googleads.V4.Enums.UserListAccessStatusEnum.UserListAccessStatus.t(),
          eligible_for_search: Google.Protobuf.BoolValue.t() | nil,
          eligible_for_display: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :user_list,
    :resource_name,
    :id,
    :read_only,
    :name,
    :description,
    :membership_status,
    :integration_code,
    :membership_life_span,
    :size_for_display,
    :size_range_for_display,
    :size_for_search,
    :size_range_for_search,
    :type,
    :closing_reason,
    :access_reason,
    :account_user_list_status,
    :eligible_for_search,
    :eligible_for_display
  ]

  oneof :user_list, 0
  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :read_only, 3, type: Google.Protobuf.BoolValue
  field :name, 4, type: Google.Protobuf.StringValue
  field :description, 5, type: Google.Protobuf.StringValue

  field :membership_status, 6,
    type: Google.Ads.Googleads.V4.Enums.UserListMembershipStatusEnum.UserListMembershipStatus,
    enum: true

  field :integration_code, 7, type: Google.Protobuf.StringValue
  field :membership_life_span, 8, type: Google.Protobuf.Int64Value
  field :size_for_display, 9, type: Google.Protobuf.Int64Value

  field :size_range_for_display, 10,
    type: Google.Ads.Googleads.V4.Enums.UserListSizeRangeEnum.UserListSizeRange,
    enum: true

  field :size_for_search, 11, type: Google.Protobuf.Int64Value

  field :size_range_for_search, 12,
    type: Google.Ads.Googleads.V4.Enums.UserListSizeRangeEnum.UserListSizeRange,
    enum: true

  field :type, 13, type: Google.Ads.Googleads.V4.Enums.UserListTypeEnum.UserListType, enum: true

  field :closing_reason, 14,
    type: Google.Ads.Googleads.V4.Enums.UserListClosingReasonEnum.UserListClosingReason,
    enum: true

  field :access_reason, 15,
    type: Google.Ads.Googleads.V4.Enums.AccessReasonEnum.AccessReason,
    enum: true

  field :account_user_list_status, 16,
    type: Google.Ads.Googleads.V4.Enums.UserListAccessStatusEnum.UserListAccessStatus,
    enum: true

  field :eligible_for_search, 17, type: Google.Protobuf.BoolValue
  field :eligible_for_display, 18, type: Google.Protobuf.BoolValue

  field :crm_based_user_list, 19,
    type: Google.Ads.Googleads.V4.Common.CrmBasedUserListInfo,
    oneof: 0

  field :similar_user_list, 20, type: Google.Ads.Googleads.V4.Common.SimilarUserListInfo, oneof: 0

  field :rule_based_user_list, 21,
    type: Google.Ads.Googleads.V4.Common.RuleBasedUserListInfo,
    oneof: 0

  field :logical_user_list, 22, type: Google.Ads.Googleads.V4.Common.LogicalUserListInfo, oneof: 0
  field :basic_user_list, 23, type: Google.Ads.Googleads.V4.Common.BasicUserListInfo, oneof: 0
end
