defmodule Google.Analytics.Admin.V1alpha.ChannelGroupFilter.StringFilter.MatchType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MATCH_TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :BEGINS_WITH, 2
  field :ENDS_WITH, 3
  field :CONTAINS, 4
  field :FULL_REGEXP, 5
  field :PARTIAL_REGEXP, 6
end

defmodule Google.Analytics.Admin.V1alpha.ChannelGroupFilter.StringFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :match_type, 1,
    type: Google.Analytics.Admin.V1alpha.ChannelGroupFilter.StringFilter.MatchType,
    json_name: "matchType",
    enum: true,
    deprecated: false

  field :value, 2, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ChannelGroupFilter.InListFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ChannelGroupFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value_filter, 0

  field :string_filter, 2,
    type: Google.Analytics.Admin.V1alpha.ChannelGroupFilter.StringFilter,
    json_name: "stringFilter",
    oneof: 0

  field :in_list_filter, 3,
    type: Google.Analytics.Admin.V1alpha.ChannelGroupFilter.InListFilter,
    json_name: "inListFilter",
    oneof: 0

  field :field_name, 1, type: :string, json_name: "fieldName", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ChannelGroupFilterExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :expr, 0

  field :and_group, 1,
    type: Google.Analytics.Admin.V1alpha.ChannelGroupFilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :or_group, 2,
    type: Google.Analytics.Admin.V1alpha.ChannelGroupFilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 3,
    type: Google.Analytics.Admin.V1alpha.ChannelGroupFilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :filter, 4, type: Google.Analytics.Admin.V1alpha.ChannelGroupFilter, oneof: 0
end

defmodule Google.Analytics.Admin.V1alpha.ChannelGroupFilterExpressionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter_expressions, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.ChannelGroupFilterExpression,
    json_name: "filterExpressions"
end

defmodule Google.Analytics.Admin.V1alpha.GroupingRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false

  field :expression, 2,
    type: Google.Analytics.Admin.V1alpha.ChannelGroupFilterExpression,
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.ChannelGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string

  field :grouping_rule, 4,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.GroupingRule,
    json_name: "groupingRule",
    deprecated: false

  field :system_defined, 5, type: :bool, json_name: "systemDefined", deprecated: false
  field :primary, 6, type: :bool, deprecated: false
end
