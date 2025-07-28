defmodule Google.Ads.Admob.V1.SortOrder do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SORT_ORDER_UNSPECIFIED, 0
  field :ASCENDING, 1
  field :DESCENDING, 2
end

defmodule Google.Ads.Admob.V1.NetworkReportSpec.Dimension do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :DATA_BEFORE_ACCOUNT_TIMEZONE_CHANGE, 1
  field :DATA_DELAYED, 2
  field :OTHER, 3
  field :REPORT_CURRENCY_NOT_ACCOUNT_CURRENCY, 4
end

defmodule Google.Ads.Admob.V1.PublisherAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :publisher_id, 2, type: :string, json_name: "publisherId"
  field :reporting_time_zone, 3, type: :string, json_name: "reportingTimeZone"
  field :currency_code, 4, type: :string, json_name: "currencyCode"
end

defmodule Google.Ads.Admob.V1.NetworkReportSpec.DimensionFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operator, 0

  field :matches_any, 2, type: Google.Ads.Admob.V1.StringList, json_name: "matchesAny", oneof: 0
  field :dimension, 1, type: Google.Ads.Admob.V1.NetworkReportSpec.Dimension, enum: true
end

defmodule Google.Ads.Admob.V1.NetworkReportSpec.SortCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :sort_on, 0

  field :dimension, 1, type: Google.Ads.Admob.V1.NetworkReportSpec.Dimension, enum: true, oneof: 0
  field :metric, 2, type: Google.Ads.Admob.V1.NetworkReportSpec.Metric, enum: true, oneof: 0
  field :order, 3, type: Google.Ads.Admob.V1.SortOrder, enum: true
end

defmodule Google.Ads.Admob.V1.NetworkReportSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :date_range, 1, type: Google.Ads.Admob.V1.DateRange, json_name: "dateRange"

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
    type: Google.Ads.Admob.V1.NetworkReportSpec.DimensionFilter,
    json_name: "dimensionFilters"

  field :sort_conditions, 5,
    repeated: true,
    type: Google.Ads.Admob.V1.NetworkReportSpec.SortCondition,
    json_name: "sortConditions"

  field :localization_settings, 6,
    type: Google.Ads.Admob.V1.LocalizationSettings,
    json_name: "localizationSettings"

  field :max_report_rows, 7, type: :int32, json_name: "maxReportRows"
  field :time_zone, 8, type: :string, json_name: "timeZone"
end

defmodule Google.Ads.Admob.V1.MediationReportSpec.DimensionFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operator, 0

  field :matches_any, 2, type: Google.Ads.Admob.V1.StringList, json_name: "matchesAny", oneof: 0
  field :dimension, 1, type: Google.Ads.Admob.V1.MediationReportSpec.Dimension, enum: true
end

defmodule Google.Ads.Admob.V1.MediationReportSpec.SortCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :date_range, 1, type: Google.Ads.Admob.V1.DateRange, json_name: "dateRange"

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
    type: Google.Ads.Admob.V1.MediationReportSpec.DimensionFilter,
    json_name: "dimensionFilters"

  field :sort_conditions, 5,
    repeated: true,
    type: Google.Ads.Admob.V1.MediationReportSpec.SortCondition,
    json_name: "sortConditions"

  field :localization_settings, 6,
    type: Google.Ads.Admob.V1.LocalizationSettings,
    json_name: "localizationSettings"

  field :max_report_rows, 7, type: :int32, json_name: "maxReportRows"
  field :time_zone, 8, type: :string, json_name: "timeZone"
end

defmodule Google.Ads.Admob.V1.ReportRow.DimensionValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :string
  field :display_label, 2, type: :string, json_name: "displayLabel"
end

defmodule Google.Ads.Admob.V1.ReportRow.MetricValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :integer_value, 1, type: :int64, json_name: "integerValue", oneof: 0
  field :double_value, 2, type: :double, json_name: "doubleValue", oneof: 0
  field :micros_value, 3, type: :int64, json_name: "microsValue", oneof: 0
end

defmodule Google.Ads.Admob.V1.ReportRow.DimensionValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Ads.Admob.V1.ReportRow.DimensionValue
end

defmodule Google.Ads.Admob.V1.ReportRow.MetricValuesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Ads.Admob.V1.ReportRow.MetricValue
end

defmodule Google.Ads.Admob.V1.ReportRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimension_values, 1,
    repeated: true,
    type: Google.Ads.Admob.V1.ReportRow.DimensionValuesEntry,
    json_name: "dimensionValues",
    map: true

  field :metric_values, 2,
    repeated: true,
    type: Google.Ads.Admob.V1.ReportRow.MetricValuesEntry,
    json_name: "metricValues",
    map: true
end

defmodule Google.Ads.Admob.V1.ReportWarning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Ads.Admob.V1.ReportWarning.Type, enum: true
  field :description, 2, type: :string
end

defmodule Google.Ads.Admob.V1.ReportHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :date_range, 1, type: Google.Ads.Admob.V1.DateRange, json_name: "dateRange"

  field :localization_settings, 2,
    type: Google.Ads.Admob.V1.LocalizationSettings,
    json_name: "localizationSettings"

  field :reporting_time_zone, 3, type: :string, json_name: "reportingTimeZone"
end

defmodule Google.Ads.Admob.V1.ReportFooter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :warnings, 1, repeated: true, type: Google.Ads.Admob.V1.ReportWarning
  field :matching_row_count, 2, type: :int64, json_name: "matchingRowCount"
end

defmodule Google.Ads.Admob.V1.DateRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_date, 1, type: Google.Type.Date, json_name: "startDate"
  field :end_date, 2, type: Google.Type.Date, json_name: "endDate"
end

defmodule Google.Ads.Admob.V1.LocalizationSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :currency_code, 1, type: :string, json_name: "currencyCode"
  field :language_code, 2, type: :string, json_name: "languageCode"
end

defmodule Google.Ads.Admob.V1.StringList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end
