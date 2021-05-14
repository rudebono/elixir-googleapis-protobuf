defmodule Google.Ads.Googleads.V4.Common.SimilarUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          seed_user_list: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:seed_user_list]

  field :seed_user_list, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.CrmBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          app_id: Google.Protobuf.StringValue.t() | nil,
          upload_key_type:
            Google.Ads.Googleads.V4.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType.t(),
          data_source_type:
            Google.Ads.Googleads.V4.Enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceType.t()
        }

  defstruct [:app_id, :upload_key_type, :data_source_type]

  field :app_id, 1, type: Google.Protobuf.StringValue

  field :upload_key_type, 2,
    type: Google.Ads.Googleads.V4.Enums.CustomerMatchUploadKeyTypeEnum.CustomerMatchUploadKeyType,
    enum: true

  field :data_source_type, 3,
    type: Google.Ads.Googleads.V4.Enums.UserListCrmDataSourceTypeEnum.UserListCrmDataSourceType,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.UserListRuleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_type: Google.Ads.Googleads.V4.Enums.UserListRuleTypeEnum.UserListRuleType.t(),
          rule_item_groups: [Google.Ads.Googleads.V4.Common.UserListRuleItemGroupInfo.t()]
        }

  defstruct [:rule_type, :rule_item_groups]

  field :rule_type, 1,
    type: Google.Ads.Googleads.V4.Enums.UserListRuleTypeEnum.UserListRuleType,
    enum: true

  field :rule_item_groups, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.UserListRuleItemGroupInfo
end

defmodule Google.Ads.Googleads.V4.Common.UserListRuleItemGroupInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_items: [Google.Ads.Googleads.V4.Common.UserListRuleItemInfo.t()]
        }

  defstruct [:rule_items]

  field :rule_items, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.UserListRuleItemInfo
end

defmodule Google.Ads.Googleads.V4.Common.UserListRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_item: {atom, any},
          name: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:rule_item, :name]

  oneof :rule_item, 0
  field :name, 1, type: Google.Protobuf.StringValue

  field :number_rule_item, 2,
    type: Google.Ads.Googleads.V4.Common.UserListNumberRuleItemInfo,
    oneof: 0

  field :string_rule_item, 3,
    type: Google.Ads.Googleads.V4.Common.UserListStringRuleItemInfo,
    oneof: 0

  field :date_rule_item, 4,
    type: Google.Ads.Googleads.V4.Common.UserListDateRuleItemInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.UserListDateRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V4.Enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator.t(),
          value: Google.Protobuf.StringValue.t() | nil,
          offset_in_days: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:operator, :value, :offset_in_days]

  field :operator, 1,
    type:
      Google.Ads.Googleads.V4.Enums.UserListDateRuleItemOperatorEnum.UserListDateRuleItemOperator,
    enum: true

  field :value, 2, type: Google.Protobuf.StringValue
  field :offset_in_days, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Common.UserListNumberRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V4.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator.t(),
          value: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [:operator, :value]

  field :operator, 1,
    type:
      Google.Ads.Googleads.V4.Enums.UserListNumberRuleItemOperatorEnum.UserListNumberRuleItemOperator,
    enum: true

  field :value, 2, type: Google.Protobuf.DoubleValue
end

defmodule Google.Ads.Googleads.V4.Common.UserListStringRuleItemInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V4.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator.t(),
          value: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:operator, :value]

  field :operator, 1,
    type:
      Google.Ads.Googleads.V4.Enums.UserListStringRuleItemOperatorEnum.UserListStringRuleItemOperator,
    enum: true

  field :value, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.CombinedRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          left_operand: Google.Ads.Googleads.V4.Common.UserListRuleInfo.t() | nil,
          right_operand: Google.Ads.Googleads.V4.Common.UserListRuleInfo.t() | nil,
          rule_operator:
            Google.Ads.Googleads.V4.Enums.UserListCombinedRuleOperatorEnum.UserListCombinedRuleOperator.t()
        }

  defstruct [:left_operand, :right_operand, :rule_operator]

  field :left_operand, 1, type: Google.Ads.Googleads.V4.Common.UserListRuleInfo
  field :right_operand, 2, type: Google.Ads.Googleads.V4.Common.UserListRuleInfo

  field :rule_operator, 3,
    type:
      Google.Ads.Googleads.V4.Enums.UserListCombinedRuleOperatorEnum.UserListCombinedRuleOperator,
    enum: true
end

defmodule Google.Ads.Googleads.V4.Common.DateSpecificRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule: Google.Ads.Googleads.V4.Common.UserListRuleInfo.t() | nil,
          start_date: Google.Protobuf.StringValue.t() | nil,
          end_date: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:rule, :start_date, :end_date]

  field :rule, 1, type: Google.Ads.Googleads.V4.Common.UserListRuleInfo
  field :start_date, 2, type: Google.Protobuf.StringValue
  field :end_date, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.ExpressionRuleUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule: Google.Ads.Googleads.V4.Common.UserListRuleInfo.t() | nil
        }

  defstruct [:rule]

  field :rule, 1, type: Google.Ads.Googleads.V4.Common.UserListRuleInfo
end

defmodule Google.Ads.Googleads.V4.Common.RuleBasedUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rule_based_user_list: {atom, any},
          prepopulation_status:
            Google.Ads.Googleads.V4.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus.t()
        }

  defstruct [:rule_based_user_list, :prepopulation_status]

  oneof :rule_based_user_list, 0

  field :prepopulation_status, 1,
    type:
      Google.Ads.Googleads.V4.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus,
    enum: true

  field :combined_rule_user_list, 2,
    type: Google.Ads.Googleads.V4.Common.CombinedRuleUserListInfo,
    oneof: 0

  field :date_specific_rule_user_list, 3,
    type: Google.Ads.Googleads.V4.Common.DateSpecificRuleUserListInfo,
    oneof: 0

  field :expression_rule_user_list, 4,
    type: Google.Ads.Googleads.V4.Common.ExpressionRuleUserListInfo,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Common.LogicalUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          rules: [Google.Ads.Googleads.V4.Common.UserListLogicalRuleInfo.t()]
        }

  defstruct [:rules]

  field :rules, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.UserListLogicalRuleInfo
end

defmodule Google.Ads.Googleads.V4.Common.UserListLogicalRuleInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator:
            Google.Ads.Googleads.V4.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator.t(),
          rule_operands: [Google.Ads.Googleads.V4.Common.LogicalUserListOperandInfo.t()]
        }

  defstruct [:operator, :rule_operands]

  field :operator, 1,
    type:
      Google.Ads.Googleads.V4.Enums.UserListLogicalRuleOperatorEnum.UserListLogicalRuleOperator,
    enum: true

  field :rule_operands, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.LogicalUserListOperandInfo
end

defmodule Google.Ads.Googleads.V4.Common.LogicalUserListOperandInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:user_list]

  field :user_list, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Common.BasicUserListInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          actions: [Google.Ads.Googleads.V4.Common.UserListActionInfo.t()]
        }

  defstruct [:actions]

  field :actions, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.UserListActionInfo
end

defmodule Google.Ads.Googleads.V4.Common.UserListActionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_list_action: {atom, any}
        }

  defstruct [:user_list_action]

  oneof :user_list_action, 0
  field :conversion_action, 1, type: Google.Protobuf.StringValue, oneof: 0
  field :remarketing_action, 2, type: Google.Protobuf.StringValue, oneof: 0
end
