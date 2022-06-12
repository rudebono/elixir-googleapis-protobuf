defmodule Google.Ads.Googleads.V11.Errors.UserListErrorEnum.UserListError do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :EXTERNAL_REMARKETING_USER_LIST_MUTATE_NOT_SUPPORTED, 2
  field :CONCRETE_TYPE_REQUIRED, 3
  field :CONVERSION_TYPE_ID_REQUIRED, 4
  field :DUPLICATE_CONVERSION_TYPES, 5
  field :INVALID_CONVERSION_TYPE, 6
  field :INVALID_DESCRIPTION, 7
  field :INVALID_NAME, 8
  field :INVALID_TYPE, 9
  field :CAN_NOT_ADD_LOGICAL_LIST_AS_LOGICAL_LIST_OPERAND, 10
  field :INVALID_USER_LIST_LOGICAL_RULE_OPERAND, 11
  field :NAME_ALREADY_USED, 12
  field :NEW_CONVERSION_TYPE_NAME_REQUIRED, 13
  field :CONVERSION_TYPE_NAME_ALREADY_USED, 14
  field :OWNERSHIP_REQUIRED_FOR_SET, 15
  field :USER_LIST_MUTATE_NOT_SUPPORTED, 16
  field :INVALID_RULE, 17
  field :INVALID_DATE_RANGE, 27
  field :CAN_NOT_MUTATE_SENSITIVE_USERLIST, 28
  field :MAX_NUM_RULEBASED_USERLISTS, 29
  field :CANNOT_MODIFY_BILLABLE_RECORD_COUNT, 30
  field :APP_ID_NOT_SET, 31
  field :USERLIST_NAME_IS_RESERVED_FOR_SYSTEM_LIST, 32
  field :ADVERTISER_NOT_ON_ALLOWLIST_FOR_USING_UPLOADED_DATA, 37
  field :RULE_TYPE_IS_NOT_SUPPORTED, 34
  field :CAN_NOT_ADD_A_SIMILAR_USERLIST_AS_LOGICAL_LIST_OPERAND, 35
  field :CAN_NOT_MIX_CRM_BASED_IN_LOGICAL_LIST_WITH_OTHER_LISTS, 36
end
defmodule Google.Ads.Googleads.V11.Errors.UserListErrorEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
