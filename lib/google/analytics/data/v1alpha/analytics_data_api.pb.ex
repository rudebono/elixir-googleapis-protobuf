defmodule Google.Analytics.Data.V1alpha.AudienceList.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :FAILED, 3
end

defmodule Google.Analytics.Data.V1alpha.RunFunnelReportRequest.FunnelVisualizationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FUNNEL_VISUALIZATION_TYPE_UNSPECIFIED, 0
  field :STANDARD_FUNNEL, 1
  field :TRENDED_FUNNEL, 2
end

defmodule Google.Analytics.Data.V1alpha.ReportTask.ReportMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :FAILED, 3
end

defmodule Google.Analytics.Data.V1alpha.CreateRecurringAudienceListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :recurring_audience_list, 2,
    type: Google.Analytics.Data.V1alpha.RecurringAudienceList,
    json_name: "recurringAudienceList",
    deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.RecurringAudienceList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :audience, 2, type: :string, deprecated: false

  field :audience_display_name, 3,
    type: :string,
    json_name: "audienceDisplayName",
    deprecated: false

  field :dimensions, 4,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.AudienceDimension,
    deprecated: false

  field :active_days_remaining, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "activeDaysRemaining",
    deprecated: false

  field :audience_lists, 6,
    repeated: true,
    type: :string,
    json_name: "audienceLists",
    deprecated: false

  field :webhook_notification, 8,
    proto3_optional: true,
    type: Google.Analytics.Data.V1alpha.WebhookNotification,
    json_name: "webhookNotification",
    deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.WebhookNotification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, proto3_optional: true, type: :string, deprecated: false

  field :channel_token, 2,
    proto3_optional: true,
    type: :string,
    json_name: "channelToken",
    deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.GetRecurringAudienceListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.ListRecurringAudienceListsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.ListRecurringAudienceListsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :recurring_audience_lists, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.RecurringAudienceList,
    json_name: "recurringAudienceLists"

  field :next_page_token, 2, proto3_optional: true, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Data.V1alpha.GetPropertyQuotasSnapshotRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.PropertyQuotasSnapshot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 4, type: :string, deprecated: false

  field :core_property_quota, 1,
    type: Google.Analytics.Data.V1alpha.PropertyQuota,
    json_name: "corePropertyQuota"

  field :realtime_property_quota, 2,
    type: Google.Analytics.Data.V1alpha.PropertyQuota,
    json_name: "realtimePropertyQuota"

  field :funnel_property_quota, 3,
    type: Google.Analytics.Data.V1alpha.PropertyQuota,
    json_name: "funnelPropertyQuota"
end

defmodule Google.Analytics.Data.V1alpha.GetAudienceListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.ListAudienceListsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.ListAudienceListsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :audience_lists, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.AudienceList,
    json_name: "audienceLists"

  field :next_page_token, 2, proto3_optional: true, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Data.V1alpha.CreateAudienceListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :audience_list, 2,
    type: Google.Analytics.Data.V1alpha.AudienceList,
    json_name: "audienceList",
    deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.AudienceList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :audience, 2, type: :string, deprecated: false

  field :audience_display_name, 3,
    type: :string,
    json_name: "audienceDisplayName",
    deprecated: false

  field :dimensions, 4,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.AudienceDimension,
    deprecated: false

  field :state, 5,
    proto3_optional: true,
    type: Google.Analytics.Data.V1alpha.AudienceList.State,
    enum: true,
    deprecated: false

  field :begin_creating_time, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "beginCreatingTime",
    deprecated: false

  field :creation_quota_tokens_charged, 7,
    type: :int32,
    json_name: "creationQuotaTokensCharged",
    deprecated: false

  field :row_count, 8,
    proto3_optional: true,
    type: :int32,
    json_name: "rowCount",
    deprecated: false

  field :error_message, 9,
    proto3_optional: true,
    type: :string,
    json_name: "errorMessage",
    deprecated: false

  field :percentage_completed, 11,
    proto3_optional: true,
    type: :double,
    json_name: "percentageCompleted",
    deprecated: false

  field :recurring_audience_list, 12,
    proto3_optional: true,
    type: :string,
    json_name: "recurringAudienceList",
    deprecated: false

  field :webhook_notification, 13,
    proto3_optional: true,
    type: Google.Analytics.Data.V1alpha.WebhookNotification,
    json_name: "webhookNotification",
    deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.AudienceListMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Analytics.Data.V1alpha.QueryAudienceListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :offset, 2, type: :int64, deprecated: false
  field :limit, 3, type: :int64, deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.QueryAudienceListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :audience_list, 1,
    proto3_optional: true,
    type: Google.Analytics.Data.V1alpha.AudienceList,
    json_name: "audienceList"

  field :audience_rows, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.AudienceRow,
    json_name: "audienceRows"

  field :row_count, 3, proto3_optional: true, type: :int32, json_name: "rowCount"
end

defmodule Google.Analytics.Data.V1alpha.SheetExportAudienceListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :offset, 2, type: :int64, deprecated: false
  field :limit, 3, type: :int64, deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.SheetExportAudienceListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :spreadsheet_uri, 1, proto3_optional: true, type: :string, json_name: "spreadsheetUri"
  field :spreadsheet_id, 2, proto3_optional: true, type: :string, json_name: "spreadsheetId"
  field :row_count, 3, proto3_optional: true, type: :int32, json_name: "rowCount"

  field :audience_list, 4,
    proto3_optional: true,
    type: Google.Analytics.Data.V1alpha.AudienceList,
    json_name: "audienceList"
end

defmodule Google.Analytics.Data.V1alpha.AudienceRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dimension_values, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.AudienceDimensionValue,
    json_name: "dimensionValues"
end

defmodule Google.Analytics.Data.V1alpha.AudienceDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dimension_name, 1, type: :string, json_name: "dimensionName", deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.AudienceDimensionValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :one_value, 0

  field :value, 1, type: :string, oneof: 0
end

defmodule Google.Analytics.Data.V1alpha.RunFunnelReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :property, 1, type: :string, deprecated: false

  field :date_ranges, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.DateRange,
    json_name: "dateRanges",
    deprecated: false

  field :funnel, 3, type: Google.Analytics.Data.V1alpha.Funnel, deprecated: false

  field :funnel_breakdown, 4,
    type: Google.Analytics.Data.V1alpha.FunnelBreakdown,
    json_name: "funnelBreakdown",
    deprecated: false

  field :funnel_next_action, 5,
    type: Google.Analytics.Data.V1alpha.FunnelNextAction,
    json_name: "funnelNextAction",
    deprecated: false

  field :funnel_visualization_type, 6,
    type: Google.Analytics.Data.V1alpha.RunFunnelReportRequest.FunnelVisualizationType,
    json_name: "funnelVisualizationType",
    enum: true,
    deprecated: false

  field :segments, 7,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.Segment,
    deprecated: false

  field :limit, 9, type: :int64, deprecated: false

  field :dimension_filter, 10,
    type: Google.Analytics.Data.V1alpha.FilterExpression,
    json_name: "dimensionFilter",
    deprecated: false

  field :return_property_quota, 12,
    type: :bool,
    json_name: "returnPropertyQuota",
    deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.RunFunnelReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :funnel_table, 1,
    type: Google.Analytics.Data.V1alpha.FunnelSubReport,
    json_name: "funnelTable"

  field :funnel_visualization, 2,
    type: Google.Analytics.Data.V1alpha.FunnelSubReport,
    json_name: "funnelVisualization"

  field :property_quota, 3,
    type: Google.Analytics.Data.V1alpha.PropertyQuota,
    json_name: "propertyQuota"

  field :kind, 4, type: :string
end

defmodule Google.Analytics.Data.V1alpha.ReportTask.ReportDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dimensions, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.Dimension,
    deprecated: false

  field :metrics, 3, repeated: true, type: Google.Analytics.Data.V1alpha.Metric, deprecated: false

  field :date_ranges, 4,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.DateRange,
    json_name: "dateRanges",
    deprecated: false

  field :dimension_filter, 5,
    type: Google.Analytics.Data.V1alpha.FilterExpression,
    json_name: "dimensionFilter",
    deprecated: false

  field :metric_filter, 6,
    type: Google.Analytics.Data.V1alpha.FilterExpression,
    json_name: "metricFilter",
    deprecated: false

  field :offset, 7, type: :int64, deprecated: false
  field :limit, 8, type: :int64, deprecated: false

  field :metric_aggregations, 9,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.MetricAggregation,
    json_name: "metricAggregations",
    enum: true,
    deprecated: false

  field :order_bys, 10,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.OrderBy,
    json_name: "orderBys",
    deprecated: false

  field :currency_code, 11, type: :string, json_name: "currencyCode", deprecated: false

  field :cohort_spec, 12,
    type: Google.Analytics.Data.V1alpha.CohortSpec,
    json_name: "cohortSpec",
    deprecated: false

  field :keep_empty_rows, 13, type: :bool, json_name: "keepEmptyRows", deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.ReportTask.ReportMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1,
    proto3_optional: true,
    type: Google.Analytics.Data.V1alpha.ReportTask.ReportMetadata.State,
    enum: true,
    deprecated: false

  field :begin_creating_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "beginCreatingTime",
    deprecated: false

  field :creation_quota_tokens_charged, 3,
    type: :int32,
    json_name: "creationQuotaTokensCharged",
    deprecated: false

  field :task_row_count, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "taskRowCount",
    deprecated: false

  field :error_message, 5,
    proto3_optional: true,
    type: :string,
    json_name: "errorMessage",
    deprecated: false

  field :total_row_count, 6,
    proto3_optional: true,
    type: :int32,
    json_name: "totalRowCount",
    deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.ReportTask do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :report_definition, 2,
    type: Google.Analytics.Data.V1alpha.ReportTask.ReportDefinition,
    json_name: "reportDefinition",
    deprecated: false

  field :report_metadata, 3,
    type: Google.Analytics.Data.V1alpha.ReportTask.ReportMetadata,
    json_name: "reportMetadata",
    deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.CreateReportTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :report_task, 2,
    type: Google.Analytics.Data.V1alpha.ReportTask,
    json_name: "reportTask",
    deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.ReportTaskMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Analytics.Data.V1alpha.QueryReportTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :offset, 2, type: :int64, deprecated: false
  field :limit, 3, type: :int64, deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.QueryReportTaskResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dimension_headers, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.DimensionHeader,
    json_name: "dimensionHeaders"

  field :metric_headers, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.MetricHeader,
    json_name: "metricHeaders"

  field :rows, 3, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :totals, 4, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :maximums, 5, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :minimums, 6, repeated: true, type: Google.Analytics.Data.V1alpha.Row
  field :row_count, 7, type: :int32, json_name: "rowCount"
  field :metadata, 8, type: Google.Analytics.Data.V1alpha.ResponseMetaData
end

defmodule Google.Analytics.Data.V1alpha.GetReportTaskRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.ListReportTasksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Analytics.Data.V1alpha.ListReportTasksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :report_tasks, 1,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.ReportTask,
    json_name: "reportTasks"

  field :next_page_token, 2, proto3_optional: true, type: :string, json_name: "nextPageToken"
end

defmodule Google.Analytics.Data.V1alpha.AlphaAnalyticsData.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.analytics.data.v1alpha.AlphaAnalyticsData",
    protoc_gen_elixir_version: "0.12.0"

  rpc :RunFunnelReport,
      Google.Analytics.Data.V1alpha.RunFunnelReportRequest,
      Google.Analytics.Data.V1alpha.RunFunnelReportResponse

  rpc :CreateAudienceList,
      Google.Analytics.Data.V1alpha.CreateAudienceListRequest,
      Google.Longrunning.Operation

  rpc :QueryAudienceList,
      Google.Analytics.Data.V1alpha.QueryAudienceListRequest,
      Google.Analytics.Data.V1alpha.QueryAudienceListResponse

  rpc :SheetExportAudienceList,
      Google.Analytics.Data.V1alpha.SheetExportAudienceListRequest,
      Google.Analytics.Data.V1alpha.SheetExportAudienceListResponse

  rpc :GetAudienceList,
      Google.Analytics.Data.V1alpha.GetAudienceListRequest,
      Google.Analytics.Data.V1alpha.AudienceList

  rpc :ListAudienceLists,
      Google.Analytics.Data.V1alpha.ListAudienceListsRequest,
      Google.Analytics.Data.V1alpha.ListAudienceListsResponse

  rpc :CreateRecurringAudienceList,
      Google.Analytics.Data.V1alpha.CreateRecurringAudienceListRequest,
      Google.Analytics.Data.V1alpha.RecurringAudienceList

  rpc :GetRecurringAudienceList,
      Google.Analytics.Data.V1alpha.GetRecurringAudienceListRequest,
      Google.Analytics.Data.V1alpha.RecurringAudienceList

  rpc :ListRecurringAudienceLists,
      Google.Analytics.Data.V1alpha.ListRecurringAudienceListsRequest,
      Google.Analytics.Data.V1alpha.ListRecurringAudienceListsResponse

  rpc :GetPropertyQuotasSnapshot,
      Google.Analytics.Data.V1alpha.GetPropertyQuotasSnapshotRequest,
      Google.Analytics.Data.V1alpha.PropertyQuotasSnapshot

  rpc :CreateReportTask,
      Google.Analytics.Data.V1alpha.CreateReportTaskRequest,
      Google.Longrunning.Operation

  rpc :QueryReportTask,
      Google.Analytics.Data.V1alpha.QueryReportTaskRequest,
      Google.Analytics.Data.V1alpha.QueryReportTaskResponse

  rpc :GetReportTask,
      Google.Analytics.Data.V1alpha.GetReportTaskRequest,
      Google.Analytics.Data.V1alpha.ReportTask

  rpc :ListReportTasks,
      Google.Analytics.Data.V1alpha.ListReportTasksRequest,
      Google.Analytics.Data.V1alpha.ListReportTasksResponse
end

defmodule Google.Analytics.Data.V1alpha.AlphaAnalyticsData.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Analytics.Data.V1alpha.AlphaAnalyticsData.Service
end