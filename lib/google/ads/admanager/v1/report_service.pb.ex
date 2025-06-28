defmodule Google.Ads.Admanager.V1.RunReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.RunReportMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :percent_complete, 2, type: :int32, json_name: "percentComplete"
  field :report, 4, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.RunReportResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :report_result, 1, type: :string, json_name: "reportResult"
end

defmodule Google.Ads.Admanager.V1.GetReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListReportsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListReportsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reports, 1, repeated: true, type: Google.Ads.Admanager.V1.Report
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.CreateReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :report, 2, type: Google.Ads.Admanager.V1.Report, deprecated: false
end

defmodule Google.Ads.Admanager.V1.UpdateReportRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :report, 1, type: Google.Ads.Admanager.V1.Report, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.FetchReportResultRowsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ads.Admanager.V1.FetchReportResultRowsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :rows, 1, repeated: true, type: Google.Ads.Admanager.V1.Report.DataTable.Row
  field :run_time, 2, type: Google.Protobuf.Timestamp, json_name: "runTime"

  field :date_ranges, 3,
    repeated: true,
    type: Google.Ads.Admanager.V1.Report.DateRange.FixedDateRange,
    json_name: "dateRanges"

  field :comparison_date_ranges, 4,
    repeated: true,
    type: Google.Ads.Admanager.V1.Report.DateRange.FixedDateRange,
    json_name: "comparisonDateRanges"

  field :total_row_count, 5, type: :int32, json_name: "totalRowCount"
  field :next_page_token, 6, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ads.Admanager.V1.ReportService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.ReportService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetReport, Google.Ads.Admanager.V1.GetReportRequest, Google.Ads.Admanager.V1.Report

  rpc :ListReports,
      Google.Ads.Admanager.V1.ListReportsRequest,
      Google.Ads.Admanager.V1.ListReportsResponse

  rpc :CreateReport, Google.Ads.Admanager.V1.CreateReportRequest, Google.Ads.Admanager.V1.Report

  rpc :UpdateReport, Google.Ads.Admanager.V1.UpdateReportRequest, Google.Ads.Admanager.V1.Report

  rpc :RunReport, Google.Ads.Admanager.V1.RunReportRequest, Google.Longrunning.Operation

  rpc :FetchReportResultRows,
      Google.Ads.Admanager.V1.FetchReportResultRowsRequest,
      Google.Ads.Admanager.V1.FetchReportResultRowsResponse
end

defmodule Google.Ads.Admanager.V1.ReportService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.ReportService.Service
end
