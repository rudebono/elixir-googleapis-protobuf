defmodule Google.Cloud.Aiplatform.V1.CreateCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          custom_job: Google.Cloud.Aiplatform.V1.CustomJob.t() | nil
        }

  defstruct parent: "",
            custom_job: nil

  field :parent, 1, type: :string, deprecated: false

  field :custom_job, 2,
    type: Google.Cloud.Aiplatform.V1.CustomJob,
    json_name: "customJob",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.GetCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ListCustomJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Aiplatform.V1.ListCustomJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_jobs: [Google.Cloud.Aiplatform.V1.CustomJob.t()],
          next_page_token: String.t()
        }

  defstruct custom_jobs: [],
            next_page_token: ""

  field :custom_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.CustomJob,
    json_name: "customJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.DeleteCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CancelCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CreateDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          data_labeling_job: Google.Cloud.Aiplatform.V1.DataLabelingJob.t() | nil
        }

  defstruct parent: "",
            data_labeling_job: nil

  field :parent, 1, type: :string, deprecated: false

  field :data_labeling_job, 2,
    type: Google.Cloud.Aiplatform.V1.DataLabelingJob,
    json_name: "dataLabelingJob",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.GetDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ListDataLabelingJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil,
          order_by: String.t()
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            read_mask: nil,
            order_by: ""

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
  field :order_by, 6, type: :string, json_name: "orderBy"
end
defmodule Google.Cloud.Aiplatform.V1.ListDataLabelingJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_labeling_jobs: [Google.Cloud.Aiplatform.V1.DataLabelingJob.t()],
          next_page_token: String.t()
        }

  defstruct data_labeling_jobs: [],
            next_page_token: ""

  field :data_labeling_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.DataLabelingJob,
    json_name: "dataLabelingJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.DeleteDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CancelDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CreateHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          hyperparameter_tuning_job: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob.t() | nil
        }

  defstruct parent: "",
            hyperparameter_tuning_job: nil

  field :parent, 1, type: :string, deprecated: false

  field :hyperparameter_tuning_job, 2,
    type: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob,
    json_name: "hyperparameterTuningJob",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.GetHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ListHyperparameterTuningJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Aiplatform.V1.ListHyperparameterTuningJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hyperparameter_tuning_jobs: [Google.Cloud.Aiplatform.V1.HyperparameterTuningJob.t()],
          next_page_token: String.t()
        }

  defstruct hyperparameter_tuning_jobs: [],
            next_page_token: ""

  field :hyperparameter_tuning_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.HyperparameterTuningJob,
    json_name: "hyperparameterTuningJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.DeleteHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CancelHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CreateBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          batch_prediction_job: Google.Cloud.Aiplatform.V1.BatchPredictionJob.t() | nil
        }

  defstruct parent: "",
            batch_prediction_job: nil

  field :parent, 1, type: :string, deprecated: false

  field :batch_prediction_job, 2,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob,
    json_name: "batchPredictionJob",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.GetBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ListBatchPredictionJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Aiplatform.V1.ListBatchPredictionJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          batch_prediction_jobs: [Google.Cloud.Aiplatform.V1.BatchPredictionJob.t()],
          next_page_token: String.t()
        }

  defstruct batch_prediction_jobs: [],
            next_page_token: ""

  field :batch_prediction_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.BatchPredictionJob,
    json_name: "batchPredictionJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.DeleteBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CancelBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.CreateModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          model_deployment_monitoring_job:
            Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.t() | nil
        }

  defstruct parent: "",
            model_deployment_monitoring_job: nil

  field :parent, 1, type: :string, deprecated: false

  field :model_deployment_monitoring_job, 2,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob,
    json_name: "modelDeploymentMonitoringJob",
    deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveType.t(),
          top_feature_count: integer
        }

  defstruct type: :MODEL_DEPLOYMENT_MONITORING_OBJECTIVE_TYPE_UNSPECIFIED,
            top_feature_count: 0

  field :type, 1,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringObjectiveType,
    enum: true

  field :top_feature_count, 4, type: :int32, json_name: "topFeatureCount"
end
defmodule Google.Cloud.Aiplatform.V1.SearchModelDeploymentMonitoringStatsAnomaliesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_deployment_monitoring_job: String.t(),
          deployed_model_id: String.t(),
          feature_display_name: String.t(),
          objectives: [
            Google.Cloud.Aiplatform.V1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective.t()
          ],
          page_size: integer,
          page_token: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct model_deployment_monitoring_job: "",
            deployed_model_id: "",
            feature_display_name: "",
            objectives: [],
            page_size: 0,
            page_token: "",
            start_time: nil,
            end_time: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          monitoring_stats: [Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies.t()],
          next_page_token: String.t()
        }

  defstruct monitoring_stats: [],
            next_page_token: ""

  field :monitoring_stats, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelMonitoringStatsAnomalies,
    json_name: "monitoringStats"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.GetModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ListModelDeploymentMonitoringJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct parent: "",
            filter: "",
            page_size: 0,
            page_token: "",
            read_mask: nil

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :read_mask, 5, type: Google.Protobuf.FieldMask, json_name: "readMask"
end
defmodule Google.Cloud.Aiplatform.V1.ListModelDeploymentMonitoringJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_deployment_monitoring_jobs: [
            Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.t()
          ],
          next_page_token: String.t()
        }

  defstruct model_deployment_monitoring_jobs: [],
            next_page_token: ""

  field :model_deployment_monitoring_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob,
    json_name: "modelDeploymentMonitoringJobs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Aiplatform.V1.UpdateModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_deployment_monitoring_job:
            Google.Cloud.Aiplatform.V1.ModelDeploymentMonitoringJob.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct model_deployment_monitoring_job: nil,
            update_mask: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.PauseModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.ResumeModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Aiplatform.V1.UpdateModelDeploymentMonitoringJobOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1.GenericOperationMetadata.t() | nil
        }

  defstruct generic_metadata: nil

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1.GenericOperationMetadata,
    json_name: "genericMetadata"
end
defmodule Google.Cloud.Aiplatform.V1.JobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.aiplatform.v1.JobService"

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
