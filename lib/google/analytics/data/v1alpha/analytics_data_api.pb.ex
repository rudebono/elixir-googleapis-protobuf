defmodule Google.Analytics.Data.V1alpha.RunFunnelReportRequest.FunnelVisualizationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FUNNEL_VISUALIZATION_TYPE_UNSPECIFIED, 0
  field :STANDARD_FUNNEL, 1
  field :TRENDED_FUNNEL, 2
end

defmodule Google.Analytics.Data.V1alpha.RunFunnelReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :property, 1, type: :string

  field :date_ranges, 2,
    repeated: true,
    type: Google.Analytics.Data.V1alpha.DateRange,
    json_name: "dateRanges"

  field :funnel, 3, type: Google.Analytics.Data.V1alpha.Funnel

  field :funnel_breakdown, 4,
    type: Google.Analytics.Data.V1alpha.FunnelBreakdown,
    json_name: "funnelBreakdown"

  field :funnel_next_action, 5,
    type: Google.Analytics.Data.V1alpha.FunnelNextAction,
    json_name: "funnelNextAction"

  field :funnel_visualization_type, 6,
    type: Google.Analytics.Data.V1alpha.RunFunnelReportRequest.FunnelVisualizationType,
    json_name: "funnelVisualizationType",
    enum: true

  field :segments, 7, repeated: true, type: Google.Analytics.Data.V1alpha.Segment
  field :limit, 9, type: :int64

  field :dimension_filter, 10,
    type: Google.Analytics.Data.V1alpha.FilterExpression,
    json_name: "dimensionFilter"

  field :return_property_quota, 12, type: :bool, json_name: "returnPropertyQuota"
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

defmodule Google.Analytics.Data.V1alpha.AlphaAnalyticsData.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.analytics.data.v1alpha.AlphaAnalyticsData",
    protoc_gen_elixir_version: "0.12.0"

  rpc :RunFunnelReport,
      Google.Analytics.Data.V1alpha.RunFunnelReportRequest,
      Google.Analytics.Data.V1alpha.RunFunnelReportResponse
end

defmodule Google.Analytics.Data.V1alpha.AlphaAnalyticsData.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Analytics.Data.V1alpha.AlphaAnalyticsData.Service
end