defmodule Google.Ads.Googleads.V16.Common.LookalikeUserListInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :seed_user_list_ids, 1, repeated: true, type: :int64, json_name: "seedUserListIds"

  field :expansion_level, 2,
    type: Google.Ads.Googleads.V16.Enums.LookalikeExpansionLevelEnum.LookalikeExpansionLevel,
    json_name: "expansionLevel",
    enum: true

  field :country_codes, 3, repeated: true, type: :string, json_name: "countryCodes"
end

defmodule Google.Ads.Googleads.V16.Common.SimilarUserListInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :seed_user_list, 2, proto3_optional: true, type: :string, json_name: "seedUserList"
end

defmodule Google.Ads.Googleads.V16.Common.CrmBasedUserListInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :app_id, 4, proto3_optional: true, type: :string, json_name: "appId"

  field :upload_key_type, 2,
    type:
      Google.Ads.Googleads.V16.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType,
    json_name: "uploadKeyType",
    enum: true

  field :data_source_type, 3,
    type: Google.Ads.Googleads.V16.Enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceType,
    json_name: "dataSourceType",
    enum: true
end

defmodule Google.Ads.Googleads.V16.Common.UserListRuleInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rule_type, 1,
    type: Google.Ads.Googleads.V16.Enums.UserListRuleTypeEnum.UserListRuleType,
    json_name: "ruleType",
    enum: true

  field :rule_item_groups, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Common.UserListRuleItemGroupInfo,
    json_name: "ruleItemGroups"
end

defmodule Google.Ads.Googleads.V16.Common.UserListRuleItemGroupInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rule_items, 1,
    repeated: true,
    type: Google.Ads.Googleads.V16.Common.UserListRuleItemInfo,
    json_name: "ruleItems"
end

defmodule Google.Ads.Googleads.V16.Common.UserListRuleItemInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :rule_item, 0

  field :name, 5, proto3_optional: true, type: :string

  field :number_rule_item, 2,
    type: Google.Ads.Googleads.V16.Common.UserListNumberRuleItemInfo,
    json_name: "numberRuleItem",
    oneof: 0

  field :string_rule_item, 3,
    type: Google.Ads.Googleads.V16.Common.UserListStringRuleItemInfo,
    json_name: "stringRuleItem",
    oneof: 0

  field :date_rule_item, 4,
    type: Google.Ads.Googleads.V16.Common.UserListDateRuleItemInfo,
    json_name: "dateRuleItem",
    oneof: 0
end

defmodule Google.Ads.Googleads.V16.Common.UserListDateRuleItemInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operator, 1,
    type:
      Google.Ads.Googleads.V16.Enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator,
    enum: true

  field :value, 4, proto3_optional: true, type: :string
  field :offset_in_days, 5, proto3_optional: true, type: :int64, json_name: "offsetInDays"
end

defmodule Google.Ads.Googleads.V16.Common.UserListNumberRuleItemInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operator, 1,
    type:
      Google.Ads.Googleads.V16.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator,
    enum: true

  field :value, 3, proto3_optional: true, type: :double
end

defmodule Google.Ads.Googleads.V16.Common.UserListStringRuleItemInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operator, 1,
    type:
      Google.Ads.Googleads.V16.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator,
    enum: true

  field :value, 3, proto3_optional: true, type: :string
end

defmodule Google.Ads.Googleads.V16.Common.FlexibleRuleOperandInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rule, 1, type: Google.Ads.Googleads.V16.Common.UserListRuleInfo

  field :lookback_window_days, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "lookbackWindowDays"
end

defmodule Google.Ads.Googleads.V16.Common.FlexibleRuleUserListInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :inclusive_rule_operator, 1,
    type:
      Google.Ads.Googleads.V16.Enums.UserListFlexibleRuleOperatorEnum.UserListFlexibleRuleOperator,
    json_name: "inclusiveRuleOperator",
    enum: true

  field :inclusive_operands, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Common.FlexibleRuleOperandInfo,
    json_name: "inclusiveOperands"

  field :exclusive_operands, 3,
    repeated: true,
    type: Google.Ads.Googleads.V16.Common.FlexibleRuleOperandInfo,
    json_name: "exclusiveOperands"
end

defmodule Google.Ads.Googleads.V16.Common.RuleBasedUserListInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :prepopulation_status, 1,
    type:
      Google.Ads.Googleads.V16.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus,
    json_name: "prepopulationStatus",
    enum: true

  field :flexible_rule_user_list, 5,
    type: Google.Ads.Googleads.V16.Common.FlexibleRuleUserListInfo,
    json_name: "flexibleRuleUserList"
end

defmodule Google.Ads.Googleads.V16.Common.LogicalUserListInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Ads.Googleads.V16.Common.UserListLogicalRuleInfo
end

defmodule Google.Ads.Googleads.V16.Common.UserListLogicalRuleInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operator, 1,
    type:
      Google.Ads.Googleads.V16.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator,
    enum: true

  field :rule_operands, 2,
    repeated: true,
    type: Google.Ads.Googleads.V16.Common.LogicalUserListOperandInfo,
    json_name: "ruleOperands"
end

defmodule Google.Ads.Googleads.V16.Common.LogicalUserListOperandInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :user_list, 2, proto3_optional: true, type: :string, json_name: "userList"
end

defmodule Google.Ads.Googleads.V16.Common.BasicUserListInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :actions, 1, repeated: true, type: Google.Ads.Googleads.V16.Common.UserListActionInfo
end

defmodule Google.Ads.Googleads.V16.Common.UserListActionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :user_list_action, 0

  field :conversion_action, 3, type: :string, json_name: "conversionAction", oneof: 0
  field :remarketing_action, 4, type: :string, json_name: "remarketingAction", oneof: 0
end
