defmodule Google.Cloud.Aiplatform.V1.CreateTensorboardRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :tensorboard, 2, type: Google.Cloud.Aiplatform.V1.Tensorboard, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetTensorboardRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListTensorboardsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :read_mask, 6, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListTensorboardsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboards, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.Tensorboard
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateTensorboardRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tensorboard, 2, type: Google.Cloud.Aiplatform.V1.Tensorboard, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeleteTensorboardRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardUsageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardUsageResponse.PerUserUsageData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :username, 1, type: :string
  field :view_count, 2, type: :int64, json_name: "viewCount"
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardUsageResponse.PerMonthUsageData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_usage_data, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ReadTensorboardUsageResponse.PerUserUsageData,
    json_name: "userUsageData"
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardUsageResponse.MonthlyUsageDataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Aiplatform.V1.ReadTensorboardUsageResponse.PerMonthUsageData
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardUsageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :monthly_usage_data, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ReadTensorboardUsageResponse.MonthlyUsageDataEntry,
    json_name: "monthlyUsageData",
    map: true
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardSizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardSizeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :storage_size_byte, 1, type: :int64, json_name: "storageSizeByte"
end

defmodule Google.Cloud.Aiplatform.V1.CreateTensorboardExperimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tensorboard_experiment, 2,
    type: Google.Cloud.Aiplatform.V1.TensorboardExperiment,
    json_name: "tensorboardExperiment"

  field :tensorboard_experiment_id, 3,
    type: :string,
    json_name: "tensorboardExperimentId",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetTensorboardExperimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListTensorboardExperimentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :read_mask, 6, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListTensorboardExperimentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard_experiments, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TensorboardExperiment,
    json_name: "tensorboardExperiments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateTensorboardExperimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tensorboard_experiment, 2,
    type: Google.Cloud.Aiplatform.V1.TensorboardExperiment,
    json_name: "tensorboardExperiment",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeleteTensorboardExperimentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.BatchCreateTensorboardRunsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.CreateTensorboardRunRequest,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.BatchCreateTensorboardRunsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard_runs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TensorboardRun,
    json_name: "tensorboardRuns"
end

defmodule Google.Cloud.Aiplatform.V1.CreateTensorboardRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tensorboard_run, 2,
    type: Google.Cloud.Aiplatform.V1.TensorboardRun,
    json_name: "tensorboardRun",
    deprecated: false

  field :tensorboard_run_id, 3, type: :string, json_name: "tensorboardRunId", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetTensorboardRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardBlobDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_series, 1, type: :string, json_name: "timeSeries", deprecated: false
  field :blob_ids, 2, repeated: true, type: :string, json_name: "blobIds"
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardBlobDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :blobs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1.TensorboardBlob
end

defmodule Google.Cloud.Aiplatform.V1.ListTensorboardRunsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :read_mask, 6, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListTensorboardRunsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard_runs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TensorboardRun,
    json_name: "tensorboardRuns"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateTensorboardRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tensorboard_run, 2,
    type: Google.Cloud.Aiplatform.V1.TensorboardRun,
    json_name: "tensorboardRun",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeleteTensorboardRunRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.BatchCreateTensorboardTimeSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.CreateTensorboardTimeSeriesRequest,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.BatchCreateTensorboardTimeSeriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard_time_series, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries,
    json_name: "tensorboardTimeSeries"
end

defmodule Google.Cloud.Aiplatform.V1.CreateTensorboardTimeSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :tensorboard_time_series_id, 3,
    type: :string,
    json_name: "tensorboardTimeSeriesId",
    deprecated: false

  field :tensorboard_time_series, 2,
    type: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries,
    json_name: "tensorboardTimeSeries",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetTensorboardTimeSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListTensorboardTimeSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
  field :read_mask, 6, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListTensorboardTimeSeriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard_time_series, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries,
    json_name: "tensorboardTimeSeries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateTensorboardTimeSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :tensorboard_time_series, 2,
    type: Google.Cloud.Aiplatform.V1.TensorboardTimeSeries,
    json_name: "tensorboardTimeSeries",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeleteTensorboardTimeSeriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.BatchReadTensorboardTimeSeriesDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard, 1, type: :string, deprecated: false
  field :time_series, 2, repeated: true, type: :string, json_name: "timeSeries", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.BatchReadTensorboardTimeSeriesDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_series_data, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TimeSeriesData,
    json_name: "timeSeriesData"
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardTimeSeriesDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard_time_series, 1,
    type: :string,
    json_name: "tensorboardTimeSeries",
    deprecated: false

  field :max_data_points, 2, type: :int32, json_name: "maxDataPoints"
  field :filter, 3, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.ReadTensorboardTimeSeriesDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_series_data, 1,
    type: Google.Cloud.Aiplatform.V1.TimeSeriesData,
    json_name: "timeSeriesData"
end

defmodule Google.Cloud.Aiplatform.V1.WriteTensorboardExperimentDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard_experiment, 1,
    type: :string,
    json_name: "tensorboardExperiment",
    deprecated: false

  field :write_run_data_requests, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.WriteTensorboardRunDataRequest,
    json_name: "writeRunDataRequests",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.WriteTensorboardExperimentDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.WriteTensorboardRunDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard_run, 1, type: :string, json_name: "tensorboardRun", deprecated: false

  field :time_series_data, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TimeSeriesData,
    json_name: "timeSeriesData",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.WriteTensorboardRunDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1.ExportTensorboardTimeSeriesDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :tensorboard_time_series, 1,
    type: :string,
    json_name: "tensorboardTimeSeries",
    deprecated: false

  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ExportTensorboardTimeSeriesDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :time_series_data_points, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.TimeSeriesDataPoint,
    json_name: "timeSeriesDataPoints"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.CreateTensorboardOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateTensorboardOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.TensorboardService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.TensorboardService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateTensorboard,
      Google.Cloud.Aiplatform.V1.CreateTensorboardRequest,
      Google.Longrunning.Operation

  rpc :GetTensorboard,
      Google.Cloud.Aiplatform.V1.GetTensorboardRequest,
      Google.Cloud.Aiplatform.V1.Tensorboard

  rpc :UpdateTensorboard,
      Google.Cloud.Aiplatform.V1.UpdateTensorboardRequest,
      Google.Longrunning.Operation

  rpc :ListTensorboards,
      Google.Cloud.Aiplatform.V1.ListTensorboardsRequest,
      Google.Cloud.Aiplatform.V1.ListTensorboardsResponse

  rpc :DeleteTensorboard,
      Google.Cloud.Aiplatform.V1.DeleteTensorboardRequest,
      Google.Longrunning.Operation

  rpc :ReadTensorboardUsage,
      Google.Cloud.Aiplatform.V1.ReadTensorboardUsageRequest,
      Google.Cloud.Aiplatform.V1.ReadTensorboardUsageResponse

  rpc :ReadTensorboardSize,
      Google.Cloud.Aiplatform.V1.ReadTensorboardSizeRequest,
      Google.Cloud.Aiplatform.V1.ReadTensorboardSizeResponse

  rpc :CreateTensorboardExperiment,
      Google.Cloud.Aiplatform.V1.CreateTensorboardExperimentRequest,
      Google.Cloud.Aiplatform.V1.TensorboardExperiment

  rpc :GetTensorboardExperiment,
      Google.Cloud.Aiplatform.V1.GetTensorboardExperimentRequest,
      Google.Cloud.Aiplatform.V1.TensorboardExperiment

  rpc :UpdateTensorboardExperiment,
      Google.Cloud.Aiplatform.V1.UpdateTensorboardExperimentRequest,
      Google.Cloud.Aiplatform.V1.TensorboardExperiment

  rpc :ListTensorboardExperiments,
      Google.Cloud.Aiplatform.V1.ListTensorboardExperimentsRequest,
      Google.Cloud.Aiplatform.V1.ListTensorboardExperimentsResponse

  rpc :DeleteTensorboardExperiment,
      Google.Cloud.Aiplatform.V1.DeleteTensorboardExperimentRequest,
      Google.Longrunning.Operation

  rpc :CreateTensorboardRun,
      Google.Cloud.Aiplatform.V1.CreateTensorboardRunRequest,
      Google.Cloud.Aiplatform.V1.TensorboardRun

  rpc :BatchCreateTensorboardRuns,
      Google.Cloud.Aiplatform.V1.BatchCreateTensorboardRunsRequest,
      Google.Cloud.Aiplatform.V1.BatchCreateTensorboardRunsResponse

  rpc :GetTensorboardRun,
      Google.Cloud.Aiplatform.V1.GetTensorboardRunRequest,
      Google.Cloud.Aiplatform.V1.TensorboardRun

  rpc :UpdateTensorboardRun,
      Google.Cloud.Aiplatform.V1.UpdateTensorboardRunRequest,
      Google.Cloud.Aiplatform.V1.TensorboardRun

  rpc :ListTensorboardRuns,
      Google.Cloud.Aiplatform.V1.ListTensorboardRunsRequest,
      Google.Cloud.Aiplatform.V1.ListTensorboardRunsResponse

  rpc :DeleteTensorboardRun,
      Google.Cloud.Aiplatform.V1.DeleteTensorboardRunRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1.BatchCreateTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1.BatchCreateTensorboardTimeSeriesResponse

  rpc :CreateTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1.CreateTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1.TensorboardTimeSeries

  rpc :GetTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1.GetTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1.TensorboardTimeSeries

  rpc :UpdateTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1.UpdateTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1.TensorboardTimeSeries

  rpc :ListTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1.ListTensorboardTimeSeriesRequest,
      Google.Cloud.Aiplatform.V1.ListTensorboardTimeSeriesResponse

  rpc :DeleteTensorboardTimeSeries,
      Google.Cloud.Aiplatform.V1.DeleteTensorboardTimeSeriesRequest,
      Google.Longrunning.Operation

  rpc :BatchReadTensorboardTimeSeriesData,
      Google.Cloud.Aiplatform.V1.BatchReadTensorboardTimeSeriesDataRequest,
      Google.Cloud.Aiplatform.V1.BatchReadTensorboardTimeSeriesDataResponse

  rpc :ReadTensorboardTimeSeriesData,
      Google.Cloud.Aiplatform.V1.ReadTensorboardTimeSeriesDataRequest,
      Google.Cloud.Aiplatform.V1.ReadTensorboardTimeSeriesDataResponse

  rpc :ReadTensorboardBlobData,
      Google.Cloud.Aiplatform.V1.ReadTensorboardBlobDataRequest,
      stream(Google.Cloud.Aiplatform.V1.ReadTensorboardBlobDataResponse)

  rpc :WriteTensorboardExperimentData,
      Google.Cloud.Aiplatform.V1.WriteTensorboardExperimentDataRequest,
      Google.Cloud.Aiplatform.V1.WriteTensorboardExperimentDataResponse

  rpc :WriteTensorboardRunData,
      Google.Cloud.Aiplatform.V1.WriteTensorboardRunDataRequest,
      Google.Cloud.Aiplatform.V1.WriteTensorboardRunDataResponse

  rpc :ExportTensorboardTimeSeriesData,
      Google.Cloud.Aiplatform.V1.ExportTensorboardTimeSeriesDataRequest,
      Google.Cloud.Aiplatform.V1.ExportTensorboardTimeSeriesDataResponse
end

defmodule Google.Cloud.Aiplatform.V1.TensorboardService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.TensorboardService.Service
end
