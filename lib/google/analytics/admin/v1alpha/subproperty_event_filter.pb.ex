defmodule Google.Analytics.Admin.V1alpha.SubpropertyEventFilterCondition.StringFilter.MatchType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MATCH_TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :BEGINS_WITH, 2
  field :ENDS_WITH, 3
  field :CONTAINS, 4
  field :FULL_REGEXP, 5
  field :PARTIAL_REGEXP, 6
end

defmodule Google.Analytics.Admin.V1alpha.SubpropertyEventFilterClause.FilterClauseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :FILTER_CLAUSE_TYPE_UNSPECIFIED, 0
  field :INCLUDE, 1
  field :EXCLUDE, 2
end

defmodule Google.Analytics.Admin.V1alpha.SubpropertyEventFilterCondition.StringFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :match_type, 1,
    type: Google.Analytics.Admin.V1alpha.SubpropertyEventFilterCondition.StringFilter.MatchType,
    json_name: "matchType",
    enum: true,
    deprecated: false

  field :value, 2, type: :string, deprecated: false
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.SubpropertyEventFilterCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :one_filter, 0

  field :null_filter, 2, type: :bool, json_name: "nullFilter", oneof: 0

  field :string_filter, 3,
    type: Google.Analytics.Admin.V1alpha.SubpropertyEventFilterCondition.StringFilter,
    json_name: "stringFilter",
    oneof: 0

  field :field_name, 1, type: :string, json_name: "fieldName", deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.SubpropertyEventFilterExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :expr, 0

  field :or_group, 1,
    type: Google.Analytics.Admin.V1alpha.SubpropertyEventFilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 2,
    type: Google.Analytics.Admin.V1alpha.SubpropertyEventFilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :filter_condition, 3,
    type: Google.Analytics.Admin.V1alpha.SubpropertyEventFilterCondition,
    json_name: "filterCondition",
    oneof: 0
end

defmodule Google.Analytics.Admin.V1alpha.SubpropertyEventFilterExpressionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filter_expressions, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.SubpropertyEventFilterExpression,
    json_name: "filterExpressions",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.SubpropertyEventFilterClause do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :filter_clause_type, 1,
    type: Google.Analytics.Admin.V1alpha.SubpropertyEventFilterClause.FilterClauseType,
    json_name: "filterClauseType",
    enum: true,
    deprecated: false

  field :filter_expression, 2,
    type: Google.Analytics.Admin.V1alpha.SubpropertyEventFilterExpression,
    json_name: "filterExpression",
    deprecated: false
end

defmodule Google.Analytics.Admin.V1alpha.SubpropertyEventFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :apply_to_property, 2,
    proto3_optional: true,
    type: :string,
    json_name: "applyToProperty",
    deprecated: false

  field :filter_clauses, 3,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.SubpropertyEventFilterClause,
    json_name: "filterClauses",
    deprecated: false
end
