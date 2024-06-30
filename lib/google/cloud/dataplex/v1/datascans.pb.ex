defmodule Google.Cloud.Dataplex.V1.DataScanType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATA_SCAN_TYPE_UNSPECIFIED, 0
  field :DATA_QUALITY, 1
  field :DATA_PROFILE, 2
end

defmodule Google.Cloud.Dataplex.V1.GetDataScanRequest.DataScanView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATA_SCAN_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 10
end

defmodule Google.Cloud.Dataplex.V1.GetDataScanJobRequest.DataScanJobView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DATA_SCAN_JOB_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 10
end

defmodule Google.Cloud.Dataplex.V1.DataScanJob.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :CANCELING, 2
  field :CANCELLED, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :PENDING, 7
end

defmodule Google.Cloud.Dataplex.V1.CreateDataScanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_scan, 2,
    type: Google.Cloud.Dataplex.V1.DataScan,
    json_name: "dataScan",
    deprecated: false

  field :data_scan_id, 3, type: :string, json_name: "dataScanId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.UpdateDataScanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_scan, 1,
    type: Google.Cloud.Dataplex.V1.DataScan,
    json_name: "dataScan",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DeleteDataScanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GetDataScanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Dataplex.V1.GetDataScanRequest.DataScanView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataScansRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataScansResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_scans, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataScan,
    json_name: "dataScans"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataplex.V1.RunDataScanRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.RunDataScanResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :job, 1, type: Google.Cloud.Dataplex.V1.DataScanJob
end

defmodule Google.Cloud.Dataplex.V1.GetDataScanJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :view, 2,
    type: Google.Cloud.Dataplex.V1.GetDataScanJobRequest.DataScanJobView,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataScanJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.ListDataScanJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :data_scan_jobs, 1,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataScanJob,
    json_name: "dataScanJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dataplex.V1.GenerateDataQualityRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.GenerateDataQualityRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :rule, 1, repeated: true, type: Google.Cloud.Dataplex.V1.DataQualityRule
end

defmodule Google.Cloud.Dataplex.V1.DataScan.ExecutionSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :incremental, 0

  field :trigger, 1, type: Google.Cloud.Dataplex.V1.Trigger, deprecated: false
  field :field, 100, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataScan.ExecutionStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :latest_job_start_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "latestJobStartTime"

  field :latest_job_end_time, 5, type: Google.Protobuf.Timestamp, json_name: "latestJobEndTime"

  field :latest_job_create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "latestJobCreateTime",
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataScan.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataplex.V1.DataScan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :spec, 0

  oneof :result, 1

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :display_name, 4, type: :string, json_name: "displayName", deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Dataplex.V1.DataScan.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 6, type: Google.Cloud.Dataplex.V1.State, enum: true, deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :data, 9, type: Google.Cloud.Dataplex.V1.DataSource, deprecated: false

  field :execution_spec, 10,
    type: Google.Cloud.Dataplex.V1.DataScan.ExecutionSpec,
    json_name: "executionSpec",
    deprecated: false

  field :execution_status, 11,
    type: Google.Cloud.Dataplex.V1.DataScan.ExecutionStatus,
    json_name: "executionStatus",
    deprecated: false

  field :type, 12, type: Google.Cloud.Dataplex.V1.DataScanType, enum: true, deprecated: false

  field :data_quality_spec, 100,
    type: Google.Cloud.Dataplex.V1.DataQualitySpec,
    json_name: "dataQualitySpec",
    oneof: 0

  field :data_profile_spec, 101,
    type: Google.Cloud.Dataplex.V1.DataProfileSpec,
    json_name: "dataProfileSpec",
    oneof: 0

  field :data_quality_result, 200,
    type: Google.Cloud.Dataplex.V1.DataQualityResult,
    json_name: "dataQualityResult",
    oneof: 1,
    deprecated: false

  field :data_profile_result, 201,
    type: Google.Cloud.Dataplex.V1.DataProfileResult,
    json_name: "dataProfileResult",
    oneof: 1,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataScanJob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :spec, 0

  oneof :result, 1

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :state, 5, type: Google.Cloud.Dataplex.V1.DataScanJob.State, enum: true, deprecated: false
  field :message, 6, type: :string, deprecated: false
  field :type, 7, type: Google.Cloud.Dataplex.V1.DataScanType, enum: true, deprecated: false

  field :data_quality_spec, 100,
    type: Google.Cloud.Dataplex.V1.DataQualitySpec,
    json_name: "dataQualitySpec",
    oneof: 0,
    deprecated: false

  field :data_profile_spec, 101,
    type: Google.Cloud.Dataplex.V1.DataProfileSpec,
    json_name: "dataProfileSpec",
    oneof: 0,
    deprecated: false

  field :data_quality_result, 200,
    type: Google.Cloud.Dataplex.V1.DataQualityResult,
    json_name: "dataQualityResult",
    oneof: 1,
    deprecated: false

  field :data_profile_result, 201,
    type: Google.Cloud.Dataplex.V1.DataProfileResult,
    json_name: "dataProfileResult",
    oneof: 1,
    deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataScanService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataplex.v1.DataScanService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateDataScan,
      Google.Cloud.Dataplex.V1.CreateDataScanRequest,
      Google.Longrunning.Operation

  rpc :UpdateDataScan,
      Google.Cloud.Dataplex.V1.UpdateDataScanRequest,
      Google.Longrunning.Operation

  rpc :DeleteDataScan,
      Google.Cloud.Dataplex.V1.DeleteDataScanRequest,
      Google.Longrunning.Operation

  rpc :GetDataScan, Google.Cloud.Dataplex.V1.GetDataScanRequest, Google.Cloud.Dataplex.V1.DataScan

  rpc :ListDataScans,
      Google.Cloud.Dataplex.V1.ListDataScansRequest,
      Google.Cloud.Dataplex.V1.ListDataScansResponse

  rpc :RunDataScan,
      Google.Cloud.Dataplex.V1.RunDataScanRequest,
      Google.Cloud.Dataplex.V1.RunDataScanResponse

  rpc :GetDataScanJob,
      Google.Cloud.Dataplex.V1.GetDataScanJobRequest,
      Google.Cloud.Dataplex.V1.DataScanJob

  rpc :ListDataScanJobs,
      Google.Cloud.Dataplex.V1.ListDataScanJobsRequest,
      Google.Cloud.Dataplex.V1.ListDataScanJobsResponse

  rpc :GenerateDataQualityRules,
      Google.Cloud.Dataplex.V1.GenerateDataQualityRulesRequest,
      Google.Cloud.Dataplex.V1.GenerateDataQualityRulesResponse
end

defmodule Google.Cloud.Dataplex.V1.DataScanService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dataplex.V1.DataScanService.Service
end