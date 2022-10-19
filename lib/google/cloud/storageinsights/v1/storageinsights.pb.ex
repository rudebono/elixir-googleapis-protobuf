defmodule Google.Cloud.Storageinsights.V1.FrequencyOptions.Frequency do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FREQUENCY_UNSPECIFIED, 0
  field :DAILY, 1
  field :WEEKLY, 2
end

defmodule Google.Cloud.Storageinsights.V1.ListReportConfigsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Storageinsights.V1.ListReportConfigsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :report_configs, 1,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.ReportConfig,
    json_name: "reportConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.GetReportConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.CreateReportConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :report_config, 3,
    type: Google.Cloud.Storageinsights.V1.ReportConfig,
    json_name: "reportConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.UpdateReportConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :report_config, 2,
    type: Google.Cloud.Storageinsights.V1.ReportConfig,
    json_name: "reportConfig",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.DeleteReportConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.ReportDetail.Metrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :processed_records_count, 1, type: :int64, json_name: "processedRecordsCount"
end

defmodule Google.Cloud.Storageinsights.V1.ReportDetail.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.ReportDetail do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :snapshot_time, 2, type: Google.Protobuf.Timestamp, json_name: "snapshotTime"
  field :report_names, 3, repeated: true, type: :string, json_name: "reportNames"
  field :status, 4, type: Google.Rpc.Status

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.ReportDetail.LabelsEntry,
    map: true

  field :target_datetime, 6, type: Google.Type.DateTime, json_name: "targetDatetime"

  field :report_metrics, 7,
    type: Google.Cloud.Storageinsights.V1.ReportDetail.Metrics,
    json_name: "reportMetrics"
end

defmodule Google.Cloud.Storageinsights.V1.ListReportDetailsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Storageinsights.V1.ListReportDetailsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :report_details, 1,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.ReportDetail,
    json_name: "reportDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.GetReportDetailRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Storageinsights.V1.FrequencyOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :frequency, 1,
    type: Google.Cloud.Storageinsights.V1.FrequencyOptions.Frequency,
    enum: true

  field :start_date, 2, type: Google.Type.Date, json_name: "startDate"
  field :end_date, 3, type: Google.Type.Date, json_name: "endDate"
end

defmodule Google.Cloud.Storageinsights.V1.CSVOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :record_separator, 1, type: :string, json_name: "recordSeparator"
  field :delimiter, 2, type: :string
  field :header_required, 3, type: :bool, json_name: "headerRequired"
end

defmodule Google.Cloud.Storageinsights.V1.CloudStorageFilters do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket, 1, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.CloudStorageDestinationOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket, 1, type: :string
  field :destination_path, 2, type: :string, json_name: "destinationPath"
end

defmodule Google.Cloud.Storageinsights.V1.ObjectMetadataReportOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :filter, 0

  oneof :destination_options, 1

  field :metadata_fields, 1, repeated: true, type: :string, json_name: "metadataFields"

  field :storage_filters, 2,
    type: Google.Cloud.Storageinsights.V1.CloudStorageFilters,
    json_name: "storageFilters",
    oneof: 0

  field :storage_destination_options, 3,
    type: Google.Cloud.Storageinsights.V1.CloudStorageDestinationOptions,
    json_name: "storageDestinationOptions",
    oneof: 1
end

defmodule Google.Cloud.Storageinsights.V1.ReportConfig.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Storageinsights.V1.ReportConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :report_format, 0

  oneof :report_kind, 1

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :frequency_options, 5,
    type: Google.Cloud.Storageinsights.V1.FrequencyOptions,
    json_name: "frequencyOptions"

  field :csv_options, 6,
    type: Google.Cloud.Storageinsights.V1.CSVOptions,
    json_name: "csvOptions",
    oneof: 0

  field :object_metadata_report_options, 8,
    type: Google.Cloud.Storageinsights.V1.ObjectMetadataReportOptions,
    json_name: "objectMetadataReportOptions",
    oneof: 1

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Storageinsights.V1.ReportConfig.LabelsEntry,
    map: true

  field :display_name, 11, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Storageinsights.V1.StorageInsights.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.storageinsights.v1.StorageInsights",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListReportConfigs,
      Google.Cloud.Storageinsights.V1.ListReportConfigsRequest,
      Google.Cloud.Storageinsights.V1.ListReportConfigsResponse

  rpc :GetReportConfig,
      Google.Cloud.Storageinsights.V1.GetReportConfigRequest,
      Google.Cloud.Storageinsights.V1.ReportConfig

  rpc :CreateReportConfig,
      Google.Cloud.Storageinsights.V1.CreateReportConfigRequest,
      Google.Cloud.Storageinsights.V1.ReportConfig

  rpc :UpdateReportConfig,
      Google.Cloud.Storageinsights.V1.UpdateReportConfigRequest,
      Google.Cloud.Storageinsights.V1.ReportConfig

  rpc :DeleteReportConfig,
      Google.Cloud.Storageinsights.V1.DeleteReportConfigRequest,
      Google.Protobuf.Empty

  rpc :ListReportDetails,
      Google.Cloud.Storageinsights.V1.ListReportDetailsRequest,
      Google.Cloud.Storageinsights.V1.ListReportDetailsResponse

  rpc :GetReportDetail,
      Google.Cloud.Storageinsights.V1.GetReportDetailRequest,
      Google.Cloud.Storageinsights.V1.ReportDetail
end

defmodule Google.Cloud.Storageinsights.V1.StorageInsights.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Storageinsights.V1.StorageInsights.Service
end