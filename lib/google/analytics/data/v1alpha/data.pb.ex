defmodule Google.Analytics.Data.V1alpha.MetricAggregation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :METRIC_AGGREGATION_UNSPECIFIED | :TOTAL | :MINIMUM | :MAXIMUM | :COUNT

  field :METRIC_AGGREGATION_UNSPECIFIED, 0

  field :TOTAL, 1

  field :MINIMUM, 5

  field :MAXIMUM, 6

  field :COUNT, 4
end

defmodule Google.Analytics.Data.V1alpha.MetricType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :METRIC_TYPE_UNSPECIFIED
          | :TYPE_INTEGER
          | :TYPE_FLOAT
          | :TYPE_SECONDS
          | :TYPE_MILLISECONDS
          | :TYPE_MINUTES
          | :TYPE_HOURS
          | :TYPE_STANDARD
          | :TYPE_CURRENCY
          | :TYPE_FEET
          | :TYPE_MILES
          | :TYPE_METERS
          | :TYPE_KILOMETERS

  field :METRIC_TYPE_UNSPECIFIED, 0

  field :TYPE_INTEGER, 1

  field :TYPE_FLOAT, 2

  field :TYPE_SECONDS, 4

  field :TYPE_MILLISECONDS, 5

  field :TYPE_MINUTES, 6

  field :TYPE_HOURS, 7

  field :TYPE_STANDARD, 8

  field :TYPE_CURRENCY, 9

  field :TYPE_FEET, 10

  field :TYPE_MILES, 11

  field :TYPE_METERS, 12

  field :TYPE_KILOMETERS, 13
end

defmodule Google.Analytics.Data.V1alpha.Filter.StringFilter.MatchType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MATCH_TYPE_UNSPECIFIED
          | :EXACT
          | :BEGINS_WITH
          | :ENDS_WITH
          | :CONTAINS
          | :FULL_REGEXP
          | :PARTIAL_REGEXP

  field :MATCH_TYPE_UNSPECIFIED, 0

  field :EXACT, 1

  field :BEGINS_WITH, 2

  field :ENDS_WITH, 3

  field :CONTAINS, 4

  field :FULL_REGEXP, 5

  field :PARTIAL_REGEXP, 6
end

defmodule Google.Analytics.Data.V1alpha.Filter.NumericFilter.Operation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPERATION_UNSPECIFIED
          | :EQUAL
          | :LESS_THAN
          | :LESS_THAN_OR_EQUAL
          | :GREATER_THAN
          | :GREATER_THAN_OR_EQUAL

  field :OPERATION_UNSPECIFIED, 0

  field :EQUAL, 1

  field :LESS_THAN, 2

  field :LESS_THAN_OR_EQUAL, 3

  field :GREATER_THAN, 4

  field :GREATER_THAN_OR_EQUAL, 5
end

defmodule Google.Analytics.Data.V1alpha.OrderBy.DimensionOrderBy.OrderType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ORDER_TYPE_UNSPECIFIED
          | :ALPHANUMERIC
          | :CASE_INSENSITIVE_ALPHANUMERIC
          | :NUMERIC

  field :ORDER_TYPE_UNSPECIFIED, 0

  field :ALPHANUMERIC, 1

  field :CASE_INSENSITIVE_ALPHANUMERIC, 2

  field :NUMERIC, 3
end

defmodule Google.Analytics.Data.V1alpha.CohortsRange.Granularity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :GRANULARITY_UNSPECIFIED | :DAILY | :WEEKLY | :MONTHLY

  field :GRANULARITY_UNSPECIFIED, 0

  field :DAILY, 1

  field :WEEKLY, 2

  field :MONTHLY, 3
end

defmodule Google.Analytics.Data.V1alpha.DateRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: String.t(),
          end_date: String.t(),
          name: String.t()
        }

  defstruct [:start_date, :end_date, :name]

  field :start_date, 1, type: :string
  field :end_date, 2, type: :string
  field :name, 3, type: :string
end

defmodule Google.Analytics.Data.V1alpha.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          property_id: String.t()
        }

  defstruct [:property_id]

  field :property_id, 1, type: :string
end

defmodule Google.Analytics.Data.V1alpha.Dimension do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          dimension_expression: Google.Analytics.Data.V1alpha.DimensionExpression.t() | nil
        }

  defstruct [:name, :dimension_expression]

  field :name, 1, type: :string
  field :dimension_expression, 2, type: Google.Analytics.Data.V1alpha.DimensionExpression
end

defmodule Google.Analytics.Data.V1alpha.DimensionExpression.CaseExpression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_name: String.t()
        }

  defstruct [:dimension_name]

  field :dimension_name, 1, type: :string
end

defmodule Google.Analytics.Data.V1alpha.DimensionExpression.ConcatenateExpression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_names: [String.t()],
          delimiter: String.t()
        }

  defstruct [:dimension_names, :delimiter]

  field :dimension_names, 1, repeated: true, type: :string
  field :delimiter, 2, type: :string
end

defmodule Google.Analytics.Data.V1alpha.DimensionExpression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          one_expression: {atom, any}
        }

  defstruct [:one_expression]

  oneof :one_expression, 0

  field :lower_case, 4,
    type: Google.Analytics.Data.V1alpha.DimensionExpression.CaseExpression,
    oneof: 0

  field :upper_case, 5,
    type: Google.Analytics.Data.V1alpha.DimensionExpression.CaseExpression,
    oneof: 0

  field :concatenate, 6,
    type: Google.Analytics.Data.V1alpha.DimensionExpression.ConcatenateExpression,
    oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.Metric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          expression: String.t(),
          invisible: boolean
        }

  defstruct [:name, :expression, :invisible]

  field :name, 1, type: :string
  field :expression, 2, type: :string
  field :invisible, 3, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.FilterExpression do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expr: {atom, any}
        }

  defstruct [:expr]

  oneof :expr, 0
  field :and_group, 1, type: Google.Analytics.Data.V1alpha.FilterExpressionList, oneof: 0
  field :or_group, 2, type: Google.Analytics.Data.V1alpha.FilterExpressionList, oneof: 0
  field :not_expression, 3, type: Google.Analytics.Data.V1alpha.FilterExpression, oneof: 0
  field :filter, 4, type: Google.Analytics.Data.V1alpha.Filter, oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.FilterExpressionList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          expressions: [Google.Analytics.Data.V1alpha.FilterExpression.t()]
        }

  defstruct [:expressions]

  field :expressions, 1, repeated: true, type: Google.Analytics.Data.V1alpha.FilterExpression
end

defmodule Google.Analytics.Data.V1alpha.Filter.StringFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          match_type: Google.Analytics.Data.V1alpha.Filter.StringFilter.MatchType.t(),
          value: String.t(),
          case_sensitive: boolean
        }

  defstruct [:match_type, :value, :case_sensitive]

  field :match_type, 1,
    type: Google.Analytics.Data.V1alpha.Filter.StringFilter.MatchType,
    enum: true

  field :value, 2, type: :string
  field :case_sensitive, 3, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.Filter.InListFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()],
          case_sensitive: boolean
        }

  defstruct [:values, :case_sensitive]

  field :values, 1, repeated: true, type: :string
  field :case_sensitive, 2, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.Filter.NumericFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: Google.Analytics.Data.V1alpha.Filter.NumericFilter.Operation.t(),
          value: Google.Analytics.Data.V1alpha.NumericValue.t() | nil
        }

  defstruct [:operation, :value]

  field :operation, 1,
    type: Google.Analytics.Data.V1alpha.Filter.NumericFilter.Operation,
    enum: true

  field :value, 2, type: Google.Analytics.Data.V1alpha.NumericValue
end

defmodule Google.Analytics.Data.V1alpha.Filter.BetweenFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          from_value: Google.Analytics.Data.V1alpha.NumericValue.t() | nil,
          to_value: Google.Analytics.Data.V1alpha.NumericValue.t() | nil
        }

  defstruct [:from_value, :to_value]

  field :from_value, 1, type: Google.Analytics.Data.V1alpha.NumericValue
  field :to_value, 2, type: Google.Analytics.Data.V1alpha.NumericValue
end

defmodule Google.Analytics.Data.V1alpha.Filter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          one_filter: {atom, any},
          field_name: String.t()
        }

  defstruct [:one_filter, :field_name]

  oneof :one_filter, 0
  field :field_name, 1, type: :string
  field :null_filter, 2, type: :bool, oneof: 0
  field :string_filter, 3, type: Google.Analytics.Data.V1alpha.Filter.StringFilter, oneof: 0
  field :in_list_filter, 4, type: Google.Analytics.Data.V1alpha.Filter.InListFilter, oneof: 0
  field :numeric_filter, 5, type: Google.Analytics.Data.V1alpha.Filter.NumericFilter, oneof: 0
  field :between_filter, 6, type: Google.Analytics.Data.V1alpha.Filter.BetweenFilter, oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.OrderBy.MetricOrderBy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t()
        }

  defstruct [:metric_name]

  field :metric_name, 1, type: :string
end

defmodule Google.Analytics.Data.V1alpha.OrderBy.DimensionOrderBy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_name: String.t(),
          order_type: Google.Analytics.Data.V1alpha.OrderBy.DimensionOrderBy.OrderType.t()
        }

  defstruct [:dimension_name, :order_type]

  field :dimension_name, 1, type: :string

  field :order_type, 2,
    type: Google.Analytics.Data.V1alpha.OrderBy.DimensionOrderBy.OrderType,
    enum: true
end

defmodule Google.Analytics.Data.V1alpha.OrderBy.PivotOrderBy.PivotSelection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_name: String.t(),
          dimension_value: String.t()
        }

  defstruct [:dimension_name, :dimension_value]

  field :dimension_name, 1, type: :string
  field :dimension_value, 2, type: :string
end

defmodule Google.Analytics.Data.V1alpha.OrderBy.PivotOrderBy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_name: String.t(),
          pivot_selections: [
            Google.Analytics.Data.V1alpha.OrderBy.PivotOrderBy.PivotSelection.t()
          ]
        }

  defstruct [:metric_name, :pivot_selections]

  field :metric_name, 1, type: :string

  field :pivot_selections, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.OrderBy.PivotOrderBy.PivotSelection
end

defmodule Google.Analytics.Data.V1alpha.OrderBy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          one_order_by: {atom, any},
          desc: boolean
        }

  defstruct [:one_order_by, :desc]

  oneof :one_order_by, 0
  field :metric, 1, type: Google.Analytics.Data.V1alpha.OrderBy.MetricOrderBy, oneof: 0
  field :dimension, 2, type: Google.Analytics.Data.V1alpha.OrderBy.DimensionOrderBy, oneof: 0
  field :pivot, 3, type: Google.Analytics.Data.V1alpha.OrderBy.PivotOrderBy, oneof: 0
  field :desc, 4, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.Pivot do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          field_names: [String.t()],
          order_bys: [Google.Analytics.Data.V1alpha.OrderBy.t()],
          offset: integer,
          limit: integer,
          metric_aggregations: [[Google.Analytics.Data.V1alpha.MetricAggregation.t()]]
        }

  defstruct [:field_names, :order_bys, :offset, :limit, :metric_aggregations]

  field :field_names, 1, repeated: true, type: :string
  field :order_bys, 2, repeated: true, type: Google.Analytics.Data.V1alpha.OrderBy
  field :offset, 3, type: :int64
  field :limit, 4, type: :int64

  field :metric_aggregations, 5,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.MetricAggregation,
    enum: true
end

defmodule Google.Analytics.Data.V1alpha.CohortSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cohorts: [Google.Analytics.Data.V1alpha.Cohort.t()],
          cohorts_range: Google.Analytics.Data.V1alpha.CohortsRange.t() | nil,
          cohort_report_settings: Google.Analytics.Data.V1alpha.CohortReportSettings.t() | nil
        }

  defstruct [:cohorts, :cohorts_range, :cohort_report_settings]

  field :cohorts, 1, repeated: true, type: Google.Analytics.Data.V1alpha.Cohort
  field :cohorts_range, 2, type: Google.Analytics.Data.V1alpha.CohortsRange
  field :cohort_report_settings, 3, type: Google.Analytics.Data.V1alpha.CohortReportSettings
end

defmodule Google.Analytics.Data.V1alpha.Cohort do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          dimension: String.t(),
          date_range: Google.Analytics.Data.V1alpha.DateRange.t() | nil
        }

  defstruct [:name, :dimension, :date_range]

  field :name, 1, type: :string
  field :dimension, 2, type: :string
  field :date_range, 3, type: Google.Analytics.Data.V1alpha.DateRange
end

defmodule Google.Analytics.Data.V1alpha.CohortsRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          granularity: Google.Analytics.Data.V1alpha.CohortsRange.Granularity.t(),
          start_offset: integer,
          end_offset: integer
        }

  defstruct [:granularity, :start_offset, :end_offset]

  field :granularity, 1, type: Google.Analytics.Data.V1alpha.CohortsRange.Granularity, enum: true
  field :start_offset, 2, type: :int32
  field :end_offset, 3, type: :int32
end

defmodule Google.Analytics.Data.V1alpha.CohortReportSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accumulate: boolean
        }

  defstruct [:accumulate]

  field :accumulate, 1, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.ResponseMetaData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_loss_from_other_row: boolean
        }

  defstruct [:data_loss_from_other_row]

  field :data_loss_from_other_row, 3, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.DimensionHeader do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Analytics.Data.V1alpha.MetricHeader do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Analytics.Data.V1alpha.MetricType.t()
        }

  defstruct [:name, :type]

  field :name, 1, type: :string
  field :type, 2, type: Google.Analytics.Data.V1alpha.MetricType, enum: true
end

defmodule Google.Analytics.Data.V1alpha.PivotHeader do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pivot_dimension_headers: [Google.Analytics.Data.V1alpha.PivotDimensionHeader.t()],
          row_count: integer
        }

  defstruct [:pivot_dimension_headers, :row_count]

  field :pivot_dimension_headers, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.PivotDimensionHeader

  field :row_count, 2, type: :int32
end

defmodule Google.Analytics.Data.V1alpha.PivotDimensionHeader do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_values: [Google.Analytics.Data.V1alpha.DimensionValue.t()]
        }

  defstruct [:dimension_values]

  field :dimension_values, 1, repeated: true, type: Google.Analytics.Data.V1alpha.DimensionValue
end

defmodule Google.Analytics.Data.V1alpha.Row do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_values: [Google.Analytics.Data.V1alpha.DimensionValue.t()],
          metric_values: [Google.Analytics.Data.V1alpha.MetricValue.t()]
        }

  defstruct [:dimension_values, :metric_values]

  field :dimension_values, 1, repeated: true, type: Google.Analytics.Data.V1alpha.DimensionValue
  field :metric_values, 2, repeated: true, type: Google.Analytics.Data.V1alpha.MetricValue
end

defmodule Google.Analytics.Data.V1alpha.DimensionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          one_value: {atom, any}
        }

  defstruct [:one_value]

  oneof :one_value, 0
  field :value, 1, type: :string, oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.MetricValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          one_value: {atom, any}
        }

  defstruct [:one_value]

  oneof :one_value, 0
  field :value, 4, type: :string, oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.NumericValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          one_value: {atom, any}
        }

  defstruct [:one_value]

  oneof :one_value, 0
  field :int64_value, 1, type: :int64, oneof: 0
  field :double_value, 2, type: :double, oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.PropertyQuota do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tokens_per_day: Google.Analytics.Data.V1alpha.QuotaStatus.t() | nil,
          tokens_per_hour: Google.Analytics.Data.V1alpha.QuotaStatus.t() | nil,
          concurrent_requests: Google.Analytics.Data.V1alpha.QuotaStatus.t() | nil,
          server_errors_per_project_per_hour: Google.Analytics.Data.V1alpha.QuotaStatus.t() | nil
        }

  defstruct [
    :tokens_per_day,
    :tokens_per_hour,
    :concurrent_requests,
    :server_errors_per_project_per_hour
  ]

  field :tokens_per_day, 1, type: Google.Analytics.Data.V1alpha.QuotaStatus
  field :tokens_per_hour, 2, type: Google.Analytics.Data.V1alpha.QuotaStatus
  field :concurrent_requests, 3, type: Google.Analytics.Data.V1alpha.QuotaStatus
  field :server_errors_per_project_per_hour, 4, type: Google.Analytics.Data.V1alpha.QuotaStatus
end

defmodule Google.Analytics.Data.V1alpha.QuotaStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consumed: integer,
          remaining: integer
        }

  defstruct [:consumed, :remaining]

  field :consumed, 1, type: :int32
  field :remaining, 2, type: :int32
end

defmodule Google.Analytics.Data.V1alpha.DimensionMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          api_name: String.t(),
          ui_name: String.t(),
          description: String.t(),
          deprecated_api_names: [String.t()],
          custom_definition: boolean
        }

  defstruct [:api_name, :ui_name, :description, :deprecated_api_names, :custom_definition]

  field :api_name, 1, type: :string
  field :ui_name, 2, type: :string
  field :description, 3, type: :string
  field :deprecated_api_names, 4, repeated: true, type: :string
  field :custom_definition, 5, type: :bool
end

defmodule Google.Analytics.Data.V1alpha.MetricMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          api_name: String.t(),
          ui_name: String.t(),
          description: String.t(),
          deprecated_api_names: [String.t()],
          type: Google.Analytics.Data.V1alpha.MetricType.t(),
          expression: String.t(),
          custom_definition: boolean
        }

  defstruct [
    :api_name,
    :ui_name,
    :description,
    :deprecated_api_names,
    :type,
    :expression,
    :custom_definition
  ]

  field :api_name, 1, type: :string
  field :ui_name, 2, type: :string
  field :description, 3, type: :string
  field :deprecated_api_names, 4, repeated: true, type: :string
  field :type, 5, type: Google.Analytics.Data.V1alpha.MetricType, enum: true
  field :expression, 6, type: :string
  field :custom_definition, 7, type: :bool
end
