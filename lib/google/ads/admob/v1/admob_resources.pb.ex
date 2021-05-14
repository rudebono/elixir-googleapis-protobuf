defmodule Google.Ads.Admob.V1.SortOrder do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SORT_ORDER_UNSPECIFIED | :ASCENDING | :DESCENDING

  field :SORT_ORDER_UNSPECIFIED, 0

  field :ASCENDING, 1

  field :DESCENDING, 2
end

defmodule Google.Ads.Admob.V1.NetworkReportSpec.Dimension do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DIMENSION_UNSPECIFIED
          | :DATE
          | :MONTH
          | :WEEK
          | :AD_UNIT
          | :APP
          | :AD_TYPE
          | :COUNTRY
          | :FORMAT
          | :PLATFORM

  field :DIMENSION_UNSPECIFIED, 0

  field :DATE, 1

  field :MONTH, 2

  field :WEEK, 3

  field :AD_UNIT, 4

  field :APP, 5

  field :AD_TYPE, 6

  field :COUNTRY, 7

  field :FORMAT, 8

  field :PLATFORM, 9
end

defmodule Google.Ads.Admob.V1.NetworkReportSpec.Metric do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :METRIC_UNSPECIFIED
          | :AD_REQUESTS
          | :CLICKS
          | :ESTIMATED_EARNINGS
          | :IMPRESSIONS
          | :IMPRESSION_CTR
          | :IMPRESSION_RPM
          | :MATCHED_REQUESTS
          | :MATCH_RATE
          | :SHOW_RATE

  field :METRIC_UNSPECIFIED, 0

  field :AD_REQUESTS, 1

  field :CLICKS, 2

  field :ESTIMATED_EARNINGS, 3

  field :IMPRESSIONS, 4

  field :IMPRESSION_CTR, 5

  field :IMPRESSION_RPM, 6

  field :MATCHED_REQUESTS, 7

  field :MATCH_RATE, 8

  field :SHOW_RATE, 9
end

defmodule Google.Ads.Admob.V1.MediationReportSpec.Dimension do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DIMENSION_UNSPECIFIED
          | :DATE
          | :MONTH
          | :WEEK
          | :AD_SOURCE
          | :AD_SOURCE_INSTANCE
          | :AD_UNIT
          | :APP
          | :MEDIATION_GROUP
          | :COUNTRY
          | :FORMAT
          | :PLATFORM

  field :DIMENSION_UNSPECIFIED, 0

  field :DATE, 1

  field :MONTH, 2

  field :WEEK, 3

  field :AD_SOURCE, 4

  field :AD_SOURCE_INSTANCE, 5

  field :AD_UNIT, 6

  field :APP, 7

  field :MEDIATION_GROUP, 11

  field :COUNTRY, 8

  field :FORMAT, 9

  field :PLATFORM, 10
end

defmodule Google.Ads.Admob.V1.MediationReportSpec.Metric do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :METRIC_UNSPECIFIED
          | :AD_REQUESTS
          | :CLICKS
          | :ESTIMATED_EARNINGS
          | :IMPRESSIONS
          | :IMPRESSION_CTR
          | :MATCHED_REQUESTS
          | :MATCH_RATE
          | :OBSERVED_ECPM

  field :METRIC_UNSPECIFIED, 0

  field :AD_REQUESTS, 1

  field :CLICKS, 2

  field :ESTIMATED_EARNINGS, 3

  field :IMPRESSIONS, 4

  field :IMPRESSION_CTR, 5

  field :MATCHED_REQUESTS, 6

  field :MATCH_RATE, 7

  field :OBSERVED_ECPM, 8
end

defmodule Google.Ads.Admob.V1.ReportWarning.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :DATA_BEFORE_ACCOUNT_TIMEZONE_CHANGE
          | :DATA_DELAYED
          | :OTHER
          | :REPORT_CURRENCY_NOT_ACCOUNT_CURRENCY

  field :TYPE_UNSPECIFIED, 0

  field :DATA_BEFORE_ACCOUNT_TIMEZONE_CHANGE, 1

  field :DATA_DELAYED, 2

  field :OTHER, 3

  field :REPORT_CURRENCY_NOT_ACCOUNT_CURRENCY, 4
end

defmodule Google.Ads.Admob.V1.PublisherAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          publisher_id: String.t(),
          reporting_time_zone: String.t(),
          currency_code: String.t()
        }

  defstruct [:name, :publisher_id, :reporting_time_zone, :currency_code]

  field :name, 1, type: :string
  field :publisher_id, 2, type: :string
  field :reporting_time_zone, 3, type: :string
  field :currency_code, 4, type: :string
end

defmodule Google.Ads.Admob.V1.NetworkReportSpec.DimensionFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator: {atom, any},
          dimension: Google.Ads.Admob.V1.NetworkReportSpec.Dimension.t()
        }

  defstruct [:operator, :dimension]

  oneof :operator, 0
  field :matches_any, 2, type: Google.Ads.Admob.V1.StringList, oneof: 0
  field :dimension, 1, type: Google.Ads.Admob.V1.NetworkReportSpec.Dimension, enum: true
end

defmodule Google.Ads.Admob.V1.NetworkReportSpec.SortCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sort_on: {atom, any},
          order: Google.Ads.Admob.V1.SortOrder.t()
        }

  defstruct [:sort_on, :order]

  oneof :sort_on, 0
  field :dimension, 1, type: Google.Ads.Admob.V1.NetworkReportSpec.Dimension, enum: true, oneof: 0
  field :metric, 2, type: Google.Ads.Admob.V1.NetworkReportSpec.Metric, enum: true, oneof: 0
  field :order, 3, type: Google.Ads.Admob.V1.SortOrder, enum: true
end

defmodule Google.Ads.Admob.V1.NetworkReportSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          date_range: Google.Ads.Admob.V1.DateRange.t() | nil,
          dimensions: [[Google.Ads.Admob.V1.NetworkReportSpec.Dimension.t()]],
          metrics: [[Google.Ads.Admob.V1.NetworkReportSpec.Metric.t()]],
          dimension_filters: [Google.Ads.Admob.V1.NetworkReportSpec.DimensionFilter.t()],
          sort_conditions: [Google.Ads.Admob.V1.NetworkReportSpec.SortCondition.t()],
          localization_settings: Google.Ads.Admob.V1.LocalizationSettings.t() | nil,
          max_report_rows: integer,
          time_zone: String.t()
        }

  defstruct [
    :date_range,
    :dimensions,
    :metrics,
    :dimension_filters,
    :sort_conditions,
    :localization_settings,
    :max_report_rows,
    :time_zone
  ]

  field :date_range, 1, type: Google.Ads.Admob.V1.DateRange

  field :dimensions, 2,
    repeated: true,
    type: Google.Ads.Admob.V1.NetworkReportSpec.Dimension,
    enum: true

  field :metrics, 3,
    repeated: true,
    type: Google.Ads.Admob.V1.NetworkReportSpec.Metric,
    enum: true

  field :dimension_filters, 4,
    repeated: true,
    type: Google.Ads.Admob.V1.NetworkReportSpec.DimensionFilter

  field :sort_conditions, 5,
    repeated: true,
    type: Google.Ads.Admob.V1.NetworkReportSpec.SortCondition

  field :localization_settings, 6, type: Google.Ads.Admob.V1.LocalizationSettings
  field :max_report_rows, 7, type: :int32
  field :time_zone, 8, type: :string
end

defmodule Google.Ads.Admob.V1.MediationReportSpec.DimensionFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator: {atom, any},
          dimension: Google.Ads.Admob.V1.MediationReportSpec.Dimension.t()
        }

  defstruct [:operator, :dimension]

  oneof :operator, 0
  field :matches_any, 2, type: Google.Ads.Admob.V1.StringList, oneof: 0
  field :dimension, 1, type: Google.Ads.Admob.V1.MediationReportSpec.Dimension, enum: true
end

defmodule Google.Ads.Admob.V1.MediationReportSpec.SortCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sort_on: {atom, any},
          order: Google.Ads.Admob.V1.SortOrder.t()
        }

  defstruct [:sort_on, :order]

  oneof :sort_on, 0

  field :dimension, 1,
    type: Google.Ads.Admob.V1.MediationReportSpec.Dimension,
    enum: true,
    oneof: 0

  field :metric, 2, type: Google.Ads.Admob.V1.MediationReportSpec.Metric, enum: true, oneof: 0
  field :order, 3, type: Google.Ads.Admob.V1.SortOrder, enum: true
end

defmodule Google.Ads.Admob.V1.MediationReportSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          date_range: Google.Ads.Admob.V1.DateRange.t() | nil,
          dimensions: [[Google.Ads.Admob.V1.MediationReportSpec.Dimension.t()]],
          metrics: [[Google.Ads.Admob.V1.MediationReportSpec.Metric.t()]],
          dimension_filters: [Google.Ads.Admob.V1.MediationReportSpec.DimensionFilter.t()],
          sort_conditions: [Google.Ads.Admob.V1.MediationReportSpec.SortCondition.t()],
          localization_settings: Google.Ads.Admob.V1.LocalizationSettings.t() | nil,
          max_report_rows: integer,
          time_zone: String.t()
        }

  defstruct [
    :date_range,
    :dimensions,
    :metrics,
    :dimension_filters,
    :sort_conditions,
    :localization_settings,
    :max_report_rows,
    :time_zone
  ]

  field :date_range, 1, type: Google.Ads.Admob.V1.DateRange

  field :dimensions, 2,
    repeated: true,
    type: Google.Ads.Admob.V1.MediationReportSpec.Dimension,
    enum: true

  field :metrics, 3,
    repeated: true,
    type: Google.Ads.Admob.V1.MediationReportSpec.Metric,
    enum: true

  field :dimension_filters, 4,
    repeated: true,
    type: Google.Ads.Admob.V1.MediationReportSpec.DimensionFilter

  field :sort_conditions, 5,
    repeated: true,
    type: Google.Ads.Admob.V1.MediationReportSpec.SortCondition

  field :localization_settings, 6, type: Google.Ads.Admob.V1.LocalizationSettings
  field :max_report_rows, 7, type: :int32
  field :time_zone, 8, type: :string
end

defmodule Google.Ads.Admob.V1.ReportRow.DimensionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          display_label: String.t()
        }

  defstruct [:value, :display_label]

  field :value, 1, type: :string
  field :display_label, 2, type: :string
end

defmodule Google.Ads.Admob.V1.ReportRow.MetricValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any}
        }

  defstruct [:value]

  oneof :value, 0
  field :integer_value, 1, type: :int64, oneof: 0
  field :double_value, 2, type: :double, oneof: 0
  field :micros_value, 3, type: :int64, oneof: 0
end

defmodule Google.Ads.Admob.V1.ReportRow.DimensionValuesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Ads.Admob.V1.ReportRow.DimensionValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Ads.Admob.V1.ReportRow.DimensionValue
end

defmodule Google.Ads.Admob.V1.ReportRow.MetricValuesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Ads.Admob.V1.ReportRow.MetricValue.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Ads.Admob.V1.ReportRow.MetricValue
end

defmodule Google.Ads.Admob.V1.ReportRow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension_values: %{
            String.t() => Google.Ads.Admob.V1.ReportRow.DimensionValue.t() | nil
          },
          metric_values: %{String.t() => Google.Ads.Admob.V1.ReportRow.MetricValue.t() | nil}
        }

  defstruct [:dimension_values, :metric_values]

  field :dimension_values, 1,
    repeated: true,
    type: Google.Ads.Admob.V1.ReportRow.DimensionValuesEntry,
    map: true

  field :metric_values, 2,
    repeated: true,
    type: Google.Ads.Admob.V1.ReportRow.MetricValuesEntry,
    map: true
end

defmodule Google.Ads.Admob.V1.ReportWarning do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Ads.Admob.V1.ReportWarning.Type.t(),
          description: String.t()
        }

  defstruct [:type, :description]

  field :type, 1, type: Google.Ads.Admob.V1.ReportWarning.Type, enum: true
  field :description, 2, type: :string
end

defmodule Google.Ads.Admob.V1.ReportHeader do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          date_range: Google.Ads.Admob.V1.DateRange.t() | nil,
          localization_settings: Google.Ads.Admob.V1.LocalizationSettings.t() | nil,
          reporting_time_zone: String.t()
        }

  defstruct [:date_range, :localization_settings, :reporting_time_zone]

  field :date_range, 1, type: Google.Ads.Admob.V1.DateRange
  field :localization_settings, 2, type: Google.Ads.Admob.V1.LocalizationSettings
  field :reporting_time_zone, 3, type: :string
end

defmodule Google.Ads.Admob.V1.ReportFooter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          warnings: [Google.Ads.Admob.V1.ReportWarning.t()],
          matching_row_count: integer
        }

  defstruct [:warnings, :matching_row_count]

  field :warnings, 1, repeated: true, type: Google.Ads.Admob.V1.ReportWarning
  field :matching_row_count, 2, type: :int64
end

defmodule Google.Ads.Admob.V1.DateRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_date: Google.Type.Date.t() | nil,
          end_date: Google.Type.Date.t() | nil
        }

  defstruct [:start_date, :end_date]

  field :start_date, 1, type: Google.Type.Date
  field :end_date, 2, type: Google.Type.Date
end

defmodule Google.Ads.Admob.V1.LocalizationSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          currency_code: String.t(),
          language_code: String.t()
        }

  defstruct [:currency_code, :language_code]

  field :currency_code, 1, type: :string
  field :language_code, 2, type: :string
end

defmodule Google.Ads.Admob.V1.StringList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :string
end
