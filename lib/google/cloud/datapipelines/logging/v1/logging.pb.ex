defmodule Google.Cloud.Datapipelines.Logging.V1.RequestLogEntry.RequestType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REQUEST_TYPE_UNSPECIFIED, 0
  field :CREATE_PIPELINE, 1
  field :UPDATE_PIPELINE, 2
  field :DELETE_PIPELINE, 3
  field :LIST_PIPELINES, 4
  field :GET_PIPELINE, 5
  field :STOP_PIPELINE, 6
  field :RUN_PIPELINE, 7
  field :LIST_JOBS, 8
end

defmodule Google.Cloud.Datapipelines.Logging.V1.RequestLogEntry.ErrorCause do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ERROR_CAUSE_UNSPECIFIED, 0
  field :INVALID_REQUEST, 1
  field :PROJECT_NUMBER_NOT_FOUND, 2
  field :PIPELINE_ID_ALREADY_EXISTS, 3
  field :PIPELINE_QUOTA_ALLOCATION_FAILED, 4
  field :PIPELINE_NOT_FOUND, 5
  field :INVALID_PIPELINE_WORKLOAD, 6
  field :DATAFLOW_WORKER_SERVICE_ACCOUNT_PERMISSION_DENIED, 7
  field :CLOUD_SCHEDULER_SERVICE_ACCOUNT_PERMISSION_DENIED, 8
  field :INTERNAL_DATA_PIPELINES_SERVICE_ACCOUNT_ISSUE, 9
  field :CLOUD_SCHEDULER_INVALID_ARGUMENT, 10
  field :CLOUD_SCHEDULER_RESOURCE_EXHAUSTED, 11
  field :CLOUD_SCHEDULER_JOB_NOT_FOUND, 12
  field :OTHER_CLOUD_SCHEDULER_ISSUE, 13
  field :DATAFLOW_JOB_ALREADY_EXISTS, 14
  field :DATAFLOW_INVALID_ARGUMENT, 15
  field :DATAFLOW_RESOURCE_EXHAUSTED, 16
  field :DATAFLOW_JOB_NOT_FOUND, 17
  field :OTHER_DATAFLOW_ISSUE, 18
  field :DATABASE_ERROR, 19
  field :WRONG_PIPELINE_TYPE, 20
  field :INTERNAL_ERROR, 21
  field :PIPELINE_OR_PROJECT_NOT_FOUND, 22
end

defmodule Google.Cloud.Datapipelines.Logging.V1.RequestLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :request_type, 1,
    type: Google.Cloud.Datapipelines.Logging.V1.RequestLogEntry.RequestType,
    json_name: "requestType",
    enum: true

  field :status, 2, type: Google.Rpc.Status

  field :error_cause, 3,
    type: Google.Cloud.Datapipelines.Logging.V1.RequestLogEntry.ErrorCause,
    json_name: "errorCause",
    enum: true
end
