defmodule Google.Cloud.Contentwarehouse.V1.CreateRuleSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :rule_set, 2,
    type: Google.Cloud.Contentwarehouse.V1.RuleSet,
    json_name: "ruleSet",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.GetRuleSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.UpdateRuleSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :rule_set, 2,
    type: Google.Cloud.Contentwarehouse.V1.RuleSet,
    json_name: "ruleSet",
    deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.DeleteRuleSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Contentwarehouse.V1.ListRuleSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Contentwarehouse.V1.ListRuleSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :rule_sets, 1,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.RuleSet,
    json_name: "ruleSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end