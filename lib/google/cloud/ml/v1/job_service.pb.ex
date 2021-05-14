defmodule Google.Cloud.Ml.V1.TrainingInput.ScaleTier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIC | :STANDARD_1 | :PREMIUM_1 | :BASIC_GPU | :CUSTOM

  field :BASIC, 0

  field :STANDARD_1, 1

  field :PREMIUM_1, 3

  field :BASIC_GPU, 6

  field :CUSTOM, 5
end

defmodule Google.Cloud.Ml.V1.HyperparameterSpec.GoalType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :GOAL_TYPE_UNSPECIFIED | :MAXIMIZE | :MINIMIZE

  field :GOAL_TYPE_UNSPECIFIED, 0

  field :MAXIMIZE, 1

  field :MINIMIZE, 2
end

defmodule Google.Cloud.Ml.V1.ParameterSpec.ParameterType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PARAMETER_TYPE_UNSPECIFIED | :DOUBLE | :INTEGER | :CATEGORICAL | :DISCRETE

  field :PARAMETER_TYPE_UNSPECIFIED, 0

  field :DOUBLE, 1

  field :INTEGER, 2

  field :CATEGORICAL, 3

  field :DISCRETE, 4
end

defmodule Google.Cloud.Ml.V1.ParameterSpec.ScaleType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :NONE | :UNIT_LINEAR_SCALE | :UNIT_LOG_SCALE | :UNIT_REVERSE_LOG_SCALE

  field :NONE, 0

  field :UNIT_LINEAR_SCALE, 1

  field :UNIT_LOG_SCALE, 2

  field :UNIT_REVERSE_LOG_SCALE, 3
end

defmodule Google.Cloud.Ml.V1.PredictionInput.DataFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATA_FORMAT_UNSPECIFIED | :TEXT | :TF_RECORD | :TF_RECORD_GZIP

  field :DATA_FORMAT_UNSPECIFIED, 0

  field :TEXT, 1

  field :TF_RECORD, 2

  field :TF_RECORD_GZIP, 3
end

defmodule Google.Cloud.Ml.V1.Job.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :QUEUED
          | :PREPARING
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLING
          | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :QUEUED, 1

  field :PREPARING, 2

  field :RUNNING, 3

  field :SUCCEEDED, 4

  field :FAILED, 5

  field :CANCELLING, 6

  field :CANCELLED, 7
end

defmodule Google.Cloud.Ml.V1.TrainingInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scale_tier: Google.Cloud.Ml.V1.TrainingInput.ScaleTier.t(),
          master_type: String.t(),
          worker_type: String.t(),
          parameter_server_type: String.t(),
          worker_count: integer,
          parameter_server_count: integer,
          package_uris: [String.t()],
          python_module: String.t(),
          args: [String.t()],
          hyperparameters: Google.Cloud.Ml.V1.HyperparameterSpec.t() | nil,
          region: String.t(),
          job_dir: String.t(),
          runtime_version: String.t()
        }

  defstruct [
    :scale_tier,
    :master_type,
    :worker_type,
    :parameter_server_type,
    :worker_count,
    :parameter_server_count,
    :package_uris,
    :python_module,
    :args,
    :hyperparameters,
    :region,
    :job_dir,
    :runtime_version
  ]

  field :scale_tier, 1, type: Google.Cloud.Ml.V1.TrainingInput.ScaleTier, enum: true
  field :master_type, 2, type: :string
  field :worker_type, 3, type: :string
  field :parameter_server_type, 4, type: :string
  field :worker_count, 5, type: :int64
  field :parameter_server_count, 6, type: :int64
  field :package_uris, 7, repeated: true, type: :string
  field :python_module, 8, type: :string
  field :args, 10, repeated: true, type: :string
  field :hyperparameters, 12, type: Google.Cloud.Ml.V1.HyperparameterSpec
  field :region, 14, type: :string
  field :job_dir, 16, type: :string
  field :runtime_version, 15, type: :string
end

defmodule Google.Cloud.Ml.V1.HyperparameterSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          goal: Google.Cloud.Ml.V1.HyperparameterSpec.GoalType.t(),
          params: [Google.Cloud.Ml.V1.ParameterSpec.t()],
          max_trials: integer,
          max_parallel_trials: integer,
          hyperparameter_metric_tag: String.t()
        }

  defstruct [:goal, :params, :max_trials, :max_parallel_trials, :hyperparameter_metric_tag]

  field :goal, 1, type: Google.Cloud.Ml.V1.HyperparameterSpec.GoalType, enum: true
  field :params, 2, repeated: true, type: Google.Cloud.Ml.V1.ParameterSpec
  field :max_trials, 3, type: :int32
  field :max_parallel_trials, 4, type: :int32
  field :hyperparameter_metric_tag, 5, type: :string
end

defmodule Google.Cloud.Ml.V1.ParameterSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_name: String.t(),
          type: Google.Cloud.Ml.V1.ParameterSpec.ParameterType.t(),
          min_value: float | :infinity | :negative_infinity | :nan,
          max_value: float | :infinity | :negative_infinity | :nan,
          categorical_values: [String.t()],
          discrete_values: [float | :infinity | :negative_infinity | :nan],
          scale_type: Google.Cloud.Ml.V1.ParameterSpec.ScaleType.t()
        }

  defstruct [
    :parameter_name,
    :type,
    :min_value,
    :max_value,
    :categorical_values,
    :discrete_values,
    :scale_type
  ]

  field :parameter_name, 1, type: :string
  field :type, 4, type: Google.Cloud.Ml.V1.ParameterSpec.ParameterType, enum: true
  field :min_value, 2, type: :double
  field :max_value, 3, type: :double
  field :categorical_values, 5, repeated: true, type: :string
  field :discrete_values, 6, repeated: true, type: :double
  field :scale_type, 7, type: Google.Cloud.Ml.V1.ParameterSpec.ScaleType, enum: true
end

defmodule Google.Cloud.Ml.V1.HyperparameterOutput.HyperparameterMetric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          training_step: integer,
          objective_value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:training_step, :objective_value]

  field :training_step, 1, type: :int64
  field :objective_value, 2, type: :double
end

defmodule Google.Cloud.Ml.V1.HyperparameterOutput.HyperparametersEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Ml.V1.HyperparameterOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trial_id: String.t(),
          hyperparameters: %{String.t() => String.t()},
          final_metric: Google.Cloud.Ml.V1.HyperparameterOutput.HyperparameterMetric.t() | nil,
          all_metrics: [Google.Cloud.Ml.V1.HyperparameterOutput.HyperparameterMetric.t()]
        }

  defstruct [:trial_id, :hyperparameters, :final_metric, :all_metrics]

  field :trial_id, 1, type: :string

  field :hyperparameters, 2,
    repeated: true,
    type: Google.Cloud.Ml.V1.HyperparameterOutput.HyperparametersEntry,
    map: true

  field :final_metric, 3, type: Google.Cloud.Ml.V1.HyperparameterOutput.HyperparameterMetric

  field :all_metrics, 4,
    repeated: true,
    type: Google.Cloud.Ml.V1.HyperparameterOutput.HyperparameterMetric
end

defmodule Google.Cloud.Ml.V1.TrainingOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          completed_trial_count: integer,
          trials: [Google.Cloud.Ml.V1.HyperparameterOutput.t()],
          consumed_ml_units: float | :infinity | :negative_infinity | :nan,
          is_hyperparameter_tuning_job: boolean
        }

  defstruct [:completed_trial_count, :trials, :consumed_ml_units, :is_hyperparameter_tuning_job]

  field :completed_trial_count, 1, type: :int64
  field :trials, 2, repeated: true, type: Google.Cloud.Ml.V1.HyperparameterOutput
  field :consumed_ml_units, 3, type: :double
  field :is_hyperparameter_tuning_job, 4, type: :bool
end

defmodule Google.Cloud.Ml.V1.PredictionInput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model_version: {atom, any},
          data_format: Google.Cloud.Ml.V1.PredictionInput.DataFormat.t(),
          input_paths: [String.t()],
          output_path: String.t(),
          max_worker_count: integer,
          region: String.t(),
          runtime_version: String.t()
        }

  defstruct [
    :model_version,
    :data_format,
    :input_paths,
    :output_path,
    :max_worker_count,
    :region,
    :runtime_version
  ]

  oneof :model_version, 0
  field :model_name, 1, type: :string, oneof: 0
  field :version_name, 2, type: :string, oneof: 0
  field :uri, 9, type: :string, oneof: 0
  field :data_format, 3, type: Google.Cloud.Ml.V1.PredictionInput.DataFormat, enum: true
  field :input_paths, 4, repeated: true, type: :string
  field :output_path, 5, type: :string
  field :max_worker_count, 6, type: :int64
  field :region, 7, type: :string
  field :runtime_version, 8, type: :string
end

defmodule Google.Cloud.Ml.V1.PredictionOutput do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_path: String.t(),
          prediction_count: integer,
          error_count: integer,
          node_hours: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:output_path, :prediction_count, :error_count, :node_hours]

  field :output_path, 1, type: :string
  field :prediction_count, 2, type: :int64
  field :error_count, 3, type: :int64
  field :node_hours, 4, type: :double
end

defmodule Google.Cloud.Ml.V1.Job do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input: {atom, any},
          output: {atom, any},
          job_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Ml.V1.Job.State.t(),
          error_message: String.t()
        }

  defstruct [
    :input,
    :output,
    :job_id,
    :create_time,
    :start_time,
    :end_time,
    :state,
    :error_message
  ]

  oneof :input, 0
  oneof :output, 1
  field :job_id, 1, type: :string
  field :training_input, 2, type: Google.Cloud.Ml.V1.TrainingInput, oneof: 0
  field :prediction_input, 3, type: Google.Cloud.Ml.V1.PredictionInput, oneof: 0
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :start_time, 5, type: Google.Protobuf.Timestamp
  field :end_time, 6, type: Google.Protobuf.Timestamp
  field :state, 7, type: Google.Cloud.Ml.V1.Job.State, enum: true
  field :error_message, 8, type: :string
  field :training_output, 9, type: Google.Cloud.Ml.V1.TrainingOutput, oneof: 1
  field :prediction_output, 10, type: Google.Cloud.Ml.V1.PredictionOutput, oneof: 1
end

defmodule Google.Cloud.Ml.V1.CreateJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          job: Google.Cloud.Ml.V1.Job.t() | nil
        }

  defstruct [:parent, :job]

  field :parent, 1, type: :string
  field :job, 2, type: Google.Cloud.Ml.V1.Job
end

defmodule Google.Cloud.Ml.V1.ListJobsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :filter, :page_token, :page_size]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_token, 4, type: :string
  field :page_size, 5, type: :int32
end

defmodule Google.Cloud.Ml.V1.ListJobsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          jobs: [Google.Cloud.Ml.V1.Job.t()],
          next_page_token: String.t()
        }

  defstruct [:jobs, :next_page_token]

  field :jobs, 1, repeated: true, type: Google.Cloud.Ml.V1.Job
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Ml.V1.GetJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Ml.V1.CancelJobRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Ml.V1.JobService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.ml.v1.JobService"

  rpc :CreateJob, Google.Cloud.Ml.V1.CreateJobRequest, Google.Cloud.Ml.V1.Job

  rpc :ListJobs, Google.Cloud.Ml.V1.ListJobsRequest, Google.Cloud.Ml.V1.ListJobsResponse

  rpc :GetJob, Google.Cloud.Ml.V1.GetJobRequest, Google.Cloud.Ml.V1.Job

  rpc :CancelJob, Google.Cloud.Ml.V1.CancelJobRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Ml.V1.JobService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Ml.V1.JobService.Service
end
