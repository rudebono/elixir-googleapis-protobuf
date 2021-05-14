defmodule Google.Cloud.Aiplatform.V1beta1.CreateCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          custom_job: Google.Cloud.Aiplatform.V1beta1.CustomJob.t() | nil
        }

  defstruct [:parent, :custom_job]

  field :parent, 1, type: :string
  field :custom_job, 2, type: Google.Cloud.Aiplatform.V1beta1.CustomJob
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListCustomJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListCustomJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          custom_jobs: [Google.Cloud.Aiplatform.V1beta1.CustomJob.t()],
          next_page_token: String.t()
        }

  defstruct [:custom_jobs, :next_page_token]

  field :custom_jobs, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.CustomJob
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CancelCustomJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          data_labeling_job: Google.Cloud.Aiplatform.V1beta1.DataLabelingJob.t() | nil
        }

  defstruct [:parent, :data_labeling_job]

  field :parent, 1, type: :string
  field :data_labeling_job, 2, type: Google.Cloud.Aiplatform.V1beta1.DataLabelingJob
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDataLabelingJobsRequest do
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

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask, :order_by]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
  field :order_by, 6, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListDataLabelingJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_labeling_jobs: [Google.Cloud.Aiplatform.V1beta1.DataLabelingJob.t()],
          next_page_token: String.t()
        }

  defstruct [:data_labeling_jobs, :next_page_token]

  field :data_labeling_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.DataLabelingJob

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CancelDataLabelingJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          hyperparameter_tuning_job:
            Google.Cloud.Aiplatform.V1beta1.HyperparameterTuningJob.t() | nil
        }

  defstruct [:parent, :hyperparameter_tuning_job]

  field :parent, 1, type: :string

  field :hyperparameter_tuning_job, 2,
    type: Google.Cloud.Aiplatform.V1beta1.HyperparameterTuningJob
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListHyperparameterTuningJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListHyperparameterTuningJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hyperparameter_tuning_jobs: [
            Google.Cloud.Aiplatform.V1beta1.HyperparameterTuningJob.t()
          ],
          next_page_token: String.t()
        }

  defstruct [:hyperparameter_tuning_jobs, :next_page_token]

  field :hyperparameter_tuning_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.HyperparameterTuningJob

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CancelHyperparameterTuningJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          batch_prediction_job: Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.t() | nil
        }

  defstruct [:parent, :batch_prediction_job]

  field :parent, 1, type: :string
  field :batch_prediction_job, 2, type: Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListBatchPredictionJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListBatchPredictionJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          batch_prediction_jobs: [Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob.t()],
          next_page_token: String.t()
        }

  defstruct [:batch_prediction_jobs, :next_page_token]

  field :batch_prediction_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.BatchPredictionJob

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CancelBatchPredictionJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          model_deployment_monitoring_job:
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.t() | nil
        }

  defstruct [:parent, :model_deployment_monitoring_job]

  field :parent, 1, type: :string

  field :model_deployment_monitoring_job, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringObjectiveType.t(),
          top_feature_count: integer
        }

  defstruct [:type, :top_feature_count]

  field :type, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringObjectiveType,
    enum: true

  field :top_feature_count, 4, type: :int32
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchModelDeploymentMonitoringStatsAnomaliesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_deployment_monitoring_job: String.t(),
          deployed_model_id: String.t(),
          feature_display_name: String.t(),
          objectives: [
            Google.Cloud.Aiplatform.V1beta1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective.t()
          ],
          page_size: integer,
          page_token: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :model_deployment_monitoring_job,
    :deployed_model_id,
    :feature_display_name,
    :objectives,
    :page_size,
    :page_token,
    :start_time,
    :end_time
  ]

  field :model_deployment_monitoring_job, 1, type: :string
  field :deployed_model_id, 2, type: :string
  field :feature_display_name, 3, type: :string

  field :objectives, 4,
    repeated: true,
    type:
      Google.Cloud.Aiplatform.V1beta1.SearchModelDeploymentMonitoringStatsAnomaliesRequest.StatsAnomaliesObjective

  field :page_size, 5, type: :int32
  field :page_token, 6, type: :string
  field :start_time, 7, type: Google.Protobuf.Timestamp
  field :end_time, 8, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchModelDeploymentMonitoringStatsAnomaliesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          monitoring_stats: [Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsAnomalies.t()],
          next_page_token: String.t()
        }

  defstruct [:monitoring_stats, :next_page_token]

  field :monitoring_stats, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelMonitoringStatsAnomalies

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelDeploymentMonitoringJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t(),
          read_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:parent, :filter, :page_size, :page_token, :read_mask]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
  field :read_mask, 5, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListModelDeploymentMonitoringJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_deployment_monitoring_jobs: [
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.t()
          ],
          next_page_token: String.t()
        }

  defstruct [:model_deployment_monitoring_jobs, :next_page_token]

  field :model_deployment_monitoring_jobs, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_deployment_monitoring_job:
            Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:model_deployment_monitoring_job, :update_mask]

  field :model_deployment_monitoring_job, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ModelDeploymentMonitoringJob

  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.PauseModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.ResumeModelDeploymentMonitoringJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateModelDeploymentMonitoringJobOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          generic_metadata: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata.t() | nil
        }

  defstruct [:generic_metadata]

  field :generic_metadata, 1, type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata
end
