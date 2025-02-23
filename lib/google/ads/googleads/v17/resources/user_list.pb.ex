defmodule Google.Ads.Googleads.V17.Resources.UserList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :user_list, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 25, proto3_optional: true, type: :int64, deprecated: false

  field :read_only, 26,
    proto3_optional: true,
    type: :bool,
    json_name: "readOnly",
    deprecated: false

  field :name, 27, proto3_optional: true, type: :string
  field :description, 28, proto3_optional: true, type: :string

  field :membership_status, 6,
    type: Google.Ads.Googleads.V17.Enums.UserListMembershipStatusEnum.UserListMembershipStatus,
    json_name: "membershipStatus",
    enum: true

  field :integration_code, 29, proto3_optional: true, type: :string, json_name: "integrationCode"

  field :membership_life_span, 30,
    proto3_optional: true,
    type: :int64,
    json_name: "membershipLifeSpan"

  field :size_for_display, 31,
    proto3_optional: true,
    type: :int64,
    json_name: "sizeForDisplay",
    deprecated: false

  field :size_range_for_display, 10,
    type: Google.Ads.Googleads.V17.Enums.UserListSizeRangeEnum.UserListSizeRange,
    json_name: "sizeRangeForDisplay",
    enum: true,
    deprecated: false

  field :size_for_search, 32,
    proto3_optional: true,
    type: :int64,
    json_name: "sizeForSearch",
    deprecated: false

  field :size_range_for_search, 12,
    type: Google.Ads.Googleads.V17.Enums.UserListSizeRangeEnum.UserListSizeRange,
    json_name: "sizeRangeForSearch",
    enum: true,
    deprecated: false

  field :type, 13,
    type: Google.Ads.Googleads.V17.Enums.UserListTypeEnum.UserListType,
    enum: true,
    deprecated: false

  field :closing_reason, 14,
    type: Google.Ads.Googleads.V17.Enums.UserListClosingReasonEnum.UserListClosingReason,
    json_name: "closingReason",
    enum: true

  field :access_reason, 15,
    type: Google.Ads.Googleads.V17.Enums.AccessReasonEnum.AccessReason,
    json_name: "accessReason",
    enum: true,
    deprecated: false

  field :account_user_list_status, 16,
    type: Google.Ads.Googleads.V17.Enums.UserListAccessStatusEnum.UserListAccessStatus,
    json_name: "accountUserListStatus",
    enum: true

  field :eligible_for_search, 33,
    proto3_optional: true,
    type: :bool,
    json_name: "eligibleForSearch"

  field :eligible_for_display, 34,
    proto3_optional: true,
    type: :bool,
    json_name: "eligibleForDisplay",
    deprecated: false

  field :match_rate_percentage, 24,
    proto3_optional: true,
    type: :int32,
    json_name: "matchRatePercentage",
    deprecated: false

  field :crm_based_user_list, 19,
    type: Google.Ads.Googleads.V17.Common.CrmBasedUserListInfo,
    json_name: "crmBasedUserList",
    oneof: 0

  field :similar_user_list, 20,
    type: Google.Ads.Googleads.V17.Common.SimilarUserListInfo,
    json_name: "similarUserList",
    oneof: 0,
    deprecated: false

  field :rule_based_user_list, 21,
    type: Google.Ads.Googleads.V17.Common.RuleBasedUserListInfo,
    json_name: "ruleBasedUserList",
    oneof: 0

  field :logical_user_list, 22,
    type: Google.Ads.Googleads.V17.Common.LogicalUserListInfo,
    json_name: "logicalUserList",
    oneof: 0

  field :basic_user_list, 23,
    type: Google.Ads.Googleads.V17.Common.BasicUserListInfo,
    json_name: "basicUserList",
    oneof: 0

  field :lookalike_user_list, 36,
    type: Google.Ads.Googleads.V17.Common.LookalikeUserListInfo,
    json_name: "lookalikeUserList",
    oneof: 0,
    deprecated: false
end
