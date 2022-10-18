defmodule Google.Cloud.Channel.V1.Column.DataType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :INT, 2
  field :DECIMAL, 3
  field :MONEY, 4
  field :DATE, 5
  field :DATE_TIME, 6
end

defmodule Google.Cloud.Channel.V1.ReportStatus.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 1
  field :WRITING, 2
  field :AVAILABLE, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Channel.V1.RunReportJobRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :date_range, 2,
    type: Google.Cloud.Channel.V1.DateRange,
    json_name: "dateRange",
    deprecated: false

  field :filter, 3, type: :string, deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Channel.V1.RunReportJobResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :report_job, 1, type: Google.Cloud.Channel.V1.ReportJob, json_name: "reportJob"

  field :report_metadata, 2,
    type: Google.Cloud.Channel.V1.ReportResultsMetadata,
    json_name: "reportMetadata"
end

defmodule Google.Cloud.Channel.V1.FetchReportResultsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :report_job, 1, type: :string, json_name: "reportJob", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Channel.V1.FetchReportResultsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :report_metadata, 1,
    type: Google.Cloud.Channel.V1.ReportResultsMetadata,
    json_name: "reportMetadata"

  field :rows, 2, repeated: true, type: Google.Cloud.Channel.V1.Row
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.ListReportsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ListReportsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reports, 1, repeated: true, type: Google.Cloud.Channel.V1.Report
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Channel.V1.ReportJob do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :report_status, 2, type: Google.Cloud.Channel.V1.ReportStatus, json_name: "reportStatus"
end

defmodule Google.Cloud.Channel.V1.ReportResultsMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :report, 1, type: Google.Cloud.Channel.V1.Report
  field :row_count, 2, type: :int64, json_name: "rowCount"
  field :date_range, 3, type: Google.Cloud.Channel.V1.DateRange, json_name: "dateRange"

  field :preceding_date_range, 4,
    type: Google.Cloud.Channel.V1.DateRange,
    json_name: "precedingDateRange"
end

defmodule Google.Cloud.Channel.V1.Column do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :column_id, 1, type: :string, json_name: "columnId"
  field :display_name, 2, type: :string, json_name: "displayName"

  field :data_type, 3,
    type: Google.Cloud.Channel.V1.Column.DataType,
    json_name: "dataType",
    enum: true
end

defmodule Google.Cloud.Channel.V1.DateRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :usage_start_date_time, 1, type: Google.Type.DateTime, json_name: "usageStartDateTime"
  field :usage_end_date_time, 2, type: Google.Type.DateTime, json_name: "usageEndDateTime"
  field :invoice_start_date, 3, type: Google.Type.Date, json_name: "invoiceStartDate"
  field :invoice_end_date, 4, type: Google.Type.Date, json_name: "invoiceEndDate"
end

defmodule Google.Cloud.Channel.V1.Row do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: Google.Cloud.Channel.V1.ReportValue
end

defmodule Google.Cloud.Channel.V1.ReportValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :string_value, 1, type: :string, json_name: "stringValue", oneof: 0
  field :int_value, 2, type: :int64, json_name: "intValue", oneof: 0
  field :decimal_value, 3, type: Google.Type.Decimal, json_name: "decimalValue", oneof: 0
  field :money_value, 4, type: Google.Type.Money, json_name: "moneyValue", oneof: 0
  field :date_value, 5, type: Google.Type.Date, json_name: "dateValue", oneof: 0
  field :date_time_value, 6, type: Google.Type.DateTime, json_name: "dateTimeValue", oneof: 0
end

defmodule Google.Cloud.Channel.V1.ReportStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Channel.V1.ReportStatus.State, enum: true
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Channel.V1.Report do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :columns, 3, repeated: true, type: Google.Cloud.Channel.V1.Column
  field :description, 4, type: :string
end

defmodule Google.Cloud.Channel.V1.CloudChannelReportsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.channel.v1.CloudChannelReportsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :RunReportJob, Google.Cloud.Channel.V1.RunReportJobRequest, Google.Longrunning.Operation

  rpc :FetchReportResults,
      Google.Cloud.Channel.V1.FetchReportResultsRequest,
      Google.Cloud.Channel.V1.FetchReportResultsResponse

  rpc :ListReports,
      Google.Cloud.Channel.V1.ListReportsRequest,
      Google.Cloud.Channel.V1.ListReportsResponse
end

defmodule Google.Cloud.Channel.V1.CloudChannelReportsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Channel.V1.CloudChannelReportsService.Service
end