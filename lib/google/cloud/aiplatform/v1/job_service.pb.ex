defmodule Google.Cloud.Aiplatform.V1.CreateCustomJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :custom_job, 2,
    type: Google.Cloud.Aiplatform.V1.CustomJob,
    json_name: "customJob",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetCustomJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListCustomJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListCustomJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.CustomJob,
    json_name: "customJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteCustomJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CancelCustomJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateDataLabelingJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_labeling_job, 2,
    type: Google.Cloud.Aiplatform.V1.DataLabelingJob,
    json_name: "dataLabelingJob",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetDataLabelingJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListDataLabelingJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Aiplatform.V1.ListDataLabelingJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :data_labeling_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DataLabelingJob,
    json_name: "dataLabelingJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteDataLabelingJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CancelDataLabelingJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateHyperparameterTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :hyperparameter_tuning_job, 2,
    type: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob,
    json_name: "hyperparameterTuningJob",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetHyperparameterTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListHyperparameterTuningJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListHyperparameterTuningJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hyperparameter_tuning_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob,
    json_name: "hyperparameterTuningJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteHyperparameterTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CancelHyperparameterTuningJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateNasJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :nas_job, 2,
    type: Google.Cloud.Aiplatform.V1.NasJob,
    json_name: "nasJob",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetNasJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListNasJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListNasJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :nas_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NasJob,
    json_name: "nasJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteNasJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CancelNasJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetNasTrialDetailRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListNasTrialDetailsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Aiplatform.V1.ListNasTrialDetailsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :nas_trial_details, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.NasTrialDetail,
    json_name: "nasTrialDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.CreateBatchPredictionJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :batch_prediction_job, 2,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob,
    json_name: "batchPredictionJob",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.GetBatchPredictionJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListBatchPredictionJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListBatchPredictionJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :batch_prediction_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob,
    json_name: "batchPredictionJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.DeleteBatchPredictionJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CancelBatchPredictionJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.CreateModelDeploymentMonitoringJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :model_deployment_monitoring_job, 2,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob,
    json_name: "modelDeploymentMonitoringJob",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveType,
    enum: true

  field :top_feature_count, 4, type: :int32, json_name: "topFeatureCount"
end

defmodule Google.Cloud.Aiplatform.V1.SearchModelDeploymentMonitoringStatsAnomaliesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_deployment_monitoring_job, 1,
    type: :string,
    json_name: "modelDeploymentMonitoringJob",
    deprecated: false

  field :deployed_model_id, 2, type: :string, json_name: "deployedModelId", deprecated: false
  field :feature_display_name, 3, type: :string, json_name: "featureDisplayName"

  field :objectives, 4,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective,
    deprecated: false

  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Aiplatform.V1.SearchModelDeploymentMonitoringStatsAnomaliesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :monitoring_stats, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies,
    json_name: "monitoringStats"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.GetModelDeploymentMonitoringJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ListModelDeploymentMonitoringJobsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end

defmodule Google.Cloud.Aiplatform.V1.ListModelDeploymentMonitoringJobsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_deployment_monitoring_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob,
    json_name: "modelDeploymentMonitoringJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1.UpdateModelDeploymentMonitoringJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model_deployment_monitoring_job, 1,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob,
    json_name: "modelDeploymentMonitoringJob",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.DeleteModelDeploymentMonitoringJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.PauseModelDeploymentMonitoringJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.ResumeModelDeploymentMonitoringJobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.UpdateModelDeploymentMonitoringJobOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1.JobService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1.JobService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateCustomJob,
      Google.Cloud.Aiplatform.V1.CreateCustomJobRequest,
      Google.Cloud.Aiplatform.V1.CustomJob

  rpc :GetCustomJob,
      Google.Cloud.Aiplatform.V1.GetCustomJobRequest,
      Google.Cloud.Aiplatform.V1.CustomJob

  rpc :ListCustomJobs,
      Google.Cloud.Aiplatform.V1.ListCustomJobsRequest,
      Google.Cloud.Aiplatform.V1.ListCustomJobsResponse

  rpc :DeleteCustomJob,
      Google.Cloud.Aiplatform.V1.DeleteCustomJobRequest,
      Google.Longrunning.Operation

  rpc :CancelCustomJob, Google.Cloud.Aiplatform.V1.CancelCustomJobRequest, Google.Protobuf.Empty

  rpc :CreateDataLabelingJob,
      Google.Cloud.Aiplatform.V1.CreateDataLabelingJobRequest,
      Google.Cloud.Aiplatform.V1.DataLabelingJob

  rpc :GetDataLabelingJob,
      Google.Cloud.Aiplatform.V1.GetDataLabelingJobRequest,
      Google.Cloud.Aiplatform.V1.DataLabelingJob

  rpc :ListDataLabelingJobs,
      Google.Cloud.Aiplatform.V1.ListDataLabelingJobsRequest,
      Google.Cloud.Aiplatform.V1.ListDataLabelingJobsResponse

  rpc :DeleteDataLabelingJob,
      Google.Cloud.Aiplatform.V1.DeleteDataLabelingJobRequest,
      Google.Longrunning.Operation

  rpc :CancelDataLabelingJob,
      Google.Cloud.Aiplatform.V1.CancelDataLabelingJobRequest,
      Google.Protobuf.Empty

  rpc :CreateHyperparameterTuningJob,
      Google.Cloud.Aiplatform.V1.CreateHyperparameterTuningJobRequest,
      Google.Cloud.Aiplatform.V1.HyperparameterTuningJob

  rpc :GetHyperparameterTuningJob,
      Google.Cloud.Aiplatform.V1.GetHyperparameterTuningJobRequest,
      Google.Cloud.Aiplatform.V1.HyperparameterTuningJob

  rpc :ListHyperparameterTuningJobs,
      Google.Cloud.Aiplatform.V1.ListHyperparameterTuningJobsRequest,
      Google.Cloud.Aiplatform.V1.ListHyperparameterTuningJobsResponse

  rpc :DeleteHyperparameterTuningJob,
      Google.Cloud.Aiplatform.V1.DeleteHyperparameterTuningJobRequest,
      Google.Longrunning.Operation

  rpc :CancelHyperparameterTuningJob,
      Google.Cloud.Aiplatform.V1.CancelHyperparameterTuningJobRequest,
      Google.Protobuf.Empty

  rpc :CreateNasJob,
      Google.Cloud.Aiplatform.V1.CreateNasJobRequest,
      Google.Cloud.Aiplatform.V1.NasJob

  rpc :GetNasJob, Google.Cloud.Aiplatform.V1.GetNasJobRequest, Google.Cloud.Aiplatform.V1.NasJob

  rpc :ListNasJobs,
      Google.Cloud.Aiplatform.V1.ListNasJobsRequest,
      Google.Cloud.Aiplatform.V1.ListNasJobsResponse

  rpc :DeleteNasJob, Google.Cloud.Aiplatform.V1.DeleteNasJobRequest, Google.Longrunning.Operation

  rpc :CancelNasJob, Google.Cloud.Aiplatform.V1.CancelNasJobRequest, Google.Protobuf.Empty

  rpc :GetNasTrialDetail,
      Google.Cloud.Aiplatform.V1.GetNasTrialDetailRequest,
      Google.Cloud.Aiplatform.V1.NasTrialDetail

  rpc :ListNasTrialDetails,
      Google.Cloud.Aiplatform.V1.ListNasTrialDetailsRequest,
      Google.Cloud.Aiplatform.V1.ListNasTrialDetailsResponse

  rpc :CreateBatchPredictionJob,
      Google.Cloud.Aiplatform.V1.CreateBatchPredictionJobRequest,
      Google.Cloud.Aiplatform.V1.BatchPredictionJob

  rpc :GetBatchPredictionJob,
      Google.Cloud.Aiplatform.V1.GetBatchPredictionJobRequest,
      Google.Cloud.Aiplatform.V1.BatchPredictionJob

  rpc :ListBatchPredictionJobs,
      Google.Cloud.Aiplatform.V1.ListBatchPredictionJobsRequest,
      Google.Cloud.Aiplatform.V1.ListBatchPredictionJobsResponse

  rpc :DeleteBatchPredictionJob,
      Google.Cloud.Aiplatform.V1.DeleteBatchPredictionJobRequest,
      Google.Longrunning.Operation

  rpc :CancelBatchPredictionJob,
      Google.Cloud.Aiplatform.V1.CancelBatchPredictionJobRequest,
      Google.Protobuf.Empty

  rpc :CreateModelDeploymentMonitoringJob,
      Google.Cloud.Aiplatform.V1.CreateModelDeploymentMonitoringJobRequest,
      Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob

  rpc :SearchModelDeploymentMonitoringStatsAnomalies,
      Google.Cloud.Aiplatform.V1.SearchModelDeploymentMonitoringStatsAnomaliesRequest,
      Google.Cloud.Aiplatform.V1.SearchModelDeploymentMonitoringStatsAnomaliesResponse

  rpc :GetModelDeploymentMonitoringJob,
      Google.Cloud.Aiplatform.V1.GetModelDeploymentMonitoringJobRequest,
      Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob

  rpc :ListModelDeploymentMonitoringJobs,
      Google.Cloud.Aiplatform.V1.ListModelDeploymentMonitoringJobsRequest,
      Google.Cloud.Aiplatform.V1.ListModelDeploymentMonitoringJobsResponse

  rpc :UpdateModelDeploymentMonitoringJob,
      Google.Cloud.Aiplatform.V1.UpdateModelDeploymentMonitoringJobRequest,
      Google.Longrunning.Operation

  rpc :DeleteModelDeploymentMonitoringJob,
      Google.Cloud.Aiplatform.V1.DeleteModelDeploymentMonitoringJobRequest,
      Google.Longrunning.Operation

  rpc :PauseModelDeploymentMonitoringJob,
      Google.Cloud.Aiplatform.V1.PauseModelDeploymentMonitoringJobRequest,
      Google.Protobuf.Empty

  rpc :ResumeModelDeploymentMonitoringJob,
      Google.Cloud.Aiplatform.V1.ResumeModelDeploymentMonitoringJobRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Aiplatform.V1.JobService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1.JobService.Service
end
