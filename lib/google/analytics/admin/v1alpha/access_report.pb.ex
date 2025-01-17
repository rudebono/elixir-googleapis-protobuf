defmodule Google.Analytics.Admin.V1alpha.AccessStringFilter.MatchType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :MATCH_TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :BEGINS_WITH, 2
  field :ENDS_WITH, 3
  field :CONTAINS, 4
  field :FULL_REGEXP, 5
  field :PARTIAL_REGEXP, 6
end

defmodule Google.Analytics.Admin.V1alpha.AccessNumericFilter.Operation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OPERATION_UNSPECIFIED, 0
  field :EQUAL, 1
  field :LESS_THAN, 2
  field :LESS_THAN_OR_EQUAL, 3
  field :GREATER_THAN, 4
  field :GREATER_THAN_OR_EQUAL, 5
end

defmodule Google.Analytics.Admin.V1alpha.AccessOrderBy.DimensionOrderBy.OrderType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ORDER_TYPE_UNSPECIFIED, 0
  field :ALPHANUMERIC, 1
  field :CASE_INSENSITIVE_ALPHANUMERIC, 2
  field :NUMERIC, 3
end

defmodule Google.Analytics.Admin.V1alpha.AccessDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_name, 1, type: :string, json_name: "dimensionName"
end

defmodule Google.Analytics.Admin.V1alpha.AccessMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName"
end

defmodule Google.Analytics.Admin.V1alpha.AccessDateRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :start_date, 1, type: :string, json_name: "startDate"
  field :end_date, 2, type: :string, json_name: "endDate"
end

defmodule Google.Analytics.Admin.V1alpha.AccessFilterExpression do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_expression, 0

  field :and_group, 1,
    type: Google.Analytics.Admin.V1alpha.AccessFilterExpressionList,
    json_name: "andGroup",
    oneof: 0

  field :or_group, 2,
    type: Google.Analytics.Admin.V1alpha.AccessFilterExpressionList,
    json_name: "orGroup",
    oneof: 0

  field :not_expression, 3,
    type: Google.Analytics.Admin.V1alpha.AccessFilterExpression,
    json_name: "notExpression",
    oneof: 0

  field :access_filter, 4,
    type: Google.Analytics.Admin.V1alpha.AccessFilter,
    json_name: "accessFilter",
    oneof: 0
end

defmodule Google.Analytics.Admin.V1alpha.AccessFilterExpressionList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :expressions, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AccessFilterExpression
end

defmodule Google.Analytics.Admin.V1alpha.AccessFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_filter, 0

  field :string_filter, 2,
    type: Google.Analytics.Admin.V1alpha.AccessStringFilter,
    json_name: "stringFilter",
    oneof: 0

  field :in_list_filter, 3,
    type: Google.Analytics.Admin.V1alpha.AccessInListFilter,
    json_name: "inListFilter",
    oneof: 0

  field :numeric_filter, 4,
    type: Google.Analytics.Admin.V1alpha.AccessNumericFilter,
    json_name: "numericFilter",
    oneof: 0

  field :between_filter, 5,
    type: Google.Analytics.Admin.V1alpha.AccessBetweenFilter,
    json_name: "betweenFilter",
    oneof: 0

  field :field_name, 1, type: :string, json_name: "fieldName"
end

defmodule Google.Analytics.Admin.V1alpha.AccessStringFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :match_type, 1,
    type: Google.Analytics.Admin.V1alpha.AccessStringFilter.MatchType,
    json_name: "matchType",
    enum: true

  field :value, 2, type: :string
  field :case_sensitive, 3, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Analytics.Admin.V1alpha.AccessInListFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
  field :case_sensitive, 2, type: :bool, json_name: "caseSensitive"
end

defmodule Google.Analytics.Admin.V1alpha.AccessNumericFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :operation, 1,
    type: Google.Analytics.Admin.V1alpha.AccessNumericFilter.Operation,
    enum: true

  field :value, 2, type: Google.Analytics.Admin.V1alpha.NumericValue
end

defmodule Google.Analytics.Admin.V1alpha.AccessBetweenFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :from_value, 1, type: Google.Analytics.Admin.V1alpha.NumericValue, json_name: "fromValue"
  field :to_value, 2, type: Google.Analytics.Admin.V1alpha.NumericValue, json_name: "toValue"
end

defmodule Google.Analytics.Admin.V1alpha.NumericValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_value, 0

  field :int64_value, 1, type: :int64, json_name: "int64Value", oneof: 0
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
end

defmodule Google.Analytics.Admin.V1alpha.AccessOrderBy.MetricOrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName"
end

defmodule Google.Analytics.Admin.V1alpha.AccessOrderBy.DimensionOrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_name, 1, type: :string, json_name: "dimensionName"

  field :order_type, 2,
    type: Google.Analytics.Admin.V1alpha.AccessOrderBy.DimensionOrderBy.OrderType,
    json_name: "orderType",
    enum: true
end

defmodule Google.Analytics.Admin.V1alpha.AccessOrderBy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :one_order_by, 0

  field :metric, 1, type: Google.Analytics.Admin.V1alpha.AccessOrderBy.MetricOrderBy, oneof: 0

  field :dimension, 2,
    type: Google.Analytics.Admin.V1alpha.AccessOrderBy.DimensionOrderBy,
    oneof: 0

  field :desc, 3, type: :bool
end

defmodule Google.Analytics.Admin.V1alpha.AccessDimensionHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_name, 1, type: :string, json_name: "dimensionName"
end

defmodule Google.Analytics.Admin.V1alpha.AccessMetricHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :metric_name, 1, type: :string, json_name: "metricName"
end

defmodule Google.Analytics.Admin.V1alpha.AccessRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :dimension_values, 1,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AccessDimensionValue,
    json_name: "dimensionValues"

  field :metric_values, 2,
    repeated: true,
    type: Google.Analytics.Admin.V1alpha.AccessMetricValue,
    json_name: "metricValues"
end

defmodule Google.Analytics.Admin.V1alpha.AccessDimensionValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.AccessMetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :value, 1, type: :string
end

defmodule Google.Analytics.Admin.V1alpha.AccessQuota do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tokens_per_day, 1,
    type: Google.Analytics.Admin.V1alpha.AccessQuotaStatus,
    json_name: "tokensPerDay"

  field :tokens_per_hour, 2,
    type: Google.Analytics.Admin.V1alpha.AccessQuotaStatus,
    json_name: "tokensPerHour"

  field :concurrent_requests, 3,
    type: Google.Analytics.Admin.V1alpha.AccessQuotaStatus,
    json_name: "concurrentRequests"

  field :server_errors_per_project_per_hour, 4,
    type: Google.Analytics.Admin.V1alpha.AccessQuotaStatus,
    json_name: "serverErrorsPerProjectPerHour"

  field :tokens_per_project_per_hour, 5,
    type: Google.Analytics.Admin.V1alpha.AccessQuotaStatus,
    json_name: "tokensPerProjectPerHour"
end

defmodule Google.Analytics.Admin.V1alpha.AccessQuotaStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :consumed, 1, type: :int32
  field :remaining, 2, type: :int32
end
