defmodule Google.Cloud.Netapp.V1.QuotaRule.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INDIVIDUAL_USER_QUOTA, 1
  field :INDIVIDUAL_GROUP_QUOTA, 2
  field :DEFAULT_USER_QUOTA, 3
  field :DEFAULT_GROUP_QUOTA, 4
end

defmodule Google.Cloud.Netapp.V1.QuotaRule.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :UPDATING, 2
  field :DELETING, 3
  field :READY, 4
  field :ERROR, 5
end

defmodule Google.Cloud.Netapp.V1.ListQuotaRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.ListQuotaRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :quota_rules, 1,
    repeated: true,
    type: Google.Cloud.Netapp.V1.QuotaRule,
    json_name: "quotaRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Netapp.V1.GetQuotaRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.CreateQuotaRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :quota_rule, 2,
    type: Google.Cloud.Netapp.V1.QuotaRule,
    json_name: "quotaRule",
    deprecated: false

  field :quota_rule_id, 3, type: :string, json_name: "quotaRuleId", deprecated: false
end

defmodule Google.Cloud.Netapp.V1.UpdateQuotaRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :quota_rule, 2,
    type: Google.Cloud.Netapp.V1.QuotaRule,
    json_name: "quotaRule",
    deprecated: false
end

defmodule Google.Cloud.Netapp.V1.DeleteQuotaRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Netapp.V1.QuotaRule.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Netapp.V1.QuotaRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target, 2, type: :string, deprecated: false
  field :type, 3, type: Google.Cloud.Netapp.V1.QuotaRule.Type, enum: true, deprecated: false
  field :disk_limit_mib, 4, type: :int32, json_name: "diskLimitMib", deprecated: false
  field :state, 6, type: Google.Cloud.Netapp.V1.QuotaRule.State, enum: true, deprecated: false
  field :state_details, 7, type: :string, json_name: "stateDetails", deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :description, 9, type: :string, deprecated: false

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Netapp.V1.QuotaRule.LabelsEntry,
    map: true,
    deprecated: false
end
