defmodule Google.Dataflow.V1beta3.ExecutionState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EXECUTION_STATE_UNKNOWN
          | :EXECUTION_STATE_NOT_STARTED
          | :EXECUTION_STATE_RUNNING
          | :EXECUTION_STATE_SUCCEEDED
          | :EXECUTION_STATE_FAILED
          | :EXECUTION_STATE_CANCELLED

  field :EXECUTION_STATE_UNKNOWN, 0
  field :EXECUTION_STATE_NOT_STARTED, 1
  field :EXECUTION_STATE_RUNNING, 2
  field :EXECUTION_STATE_SUCCEEDED, 3
  field :EXECUTION_STATE_FAILED, 4
  field :EXECUTION_STATE_CANCELLED, 5
end

defmodule Google.Dataflow.V1beta3.MetricStructuredName.ContextEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.MetricStructuredName do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          origin: String.t(),
          name: String.t(),
          context: %{String.t() => String.t()}
        }

  defstruct [:origin, :name, :context]

  field :origin, 1, type: :string
  field :name, 2, type: :string

  field :context, 3,
    repeated: true,
    type: Google.Dataflow.V1beta3.MetricStructuredName.ContextEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.MetricUpdate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: Google.Dataflow.V1beta3.MetricStructuredName.t() | nil,
          kind: String.t(),
          cumulative: boolean,
          scalar: Google.Protobuf.Value.t() | nil,
          mean_sum: Google.Protobuf.Value.t() | nil,
          mean_count: Google.Protobuf.Value.t() | nil,
          set: Google.Protobuf.Value.t() | nil,
          distribution: Google.Protobuf.Value.t() | nil,
          gauge: Google.Protobuf.Value.t() | nil,
          internal: Google.Protobuf.Value.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :kind,
    :cumulative,
    :scalar,
    :mean_sum,
    :mean_count,
    :set,
    :distribution,
    :gauge,
    :internal,
    :update_time
  ]

  field :name, 1, type: Google.Dataflow.V1beta3.MetricStructuredName
  field :kind, 2, type: :string
  field :cumulative, 3, type: :bool
  field :scalar, 4, type: Google.Protobuf.Value
  field :mean_sum, 5, type: Google.Protobuf.Value, json_name: "meanSum"
  field :mean_count, 6, type: Google.Protobuf.Value, json_name: "meanCount"
  field :set, 7, type: Google.Protobuf.Value
  field :distribution, 11, type: Google.Protobuf.Value
  field :gauge, 12, type: Google.Protobuf.Value
  field :internal, 8, type: Google.Protobuf.Value
  field :update_time, 9, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.GetJobMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          job_id: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          location: String.t()
        }

  defstruct [:project_id, :job_id, :start_time, :location]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :location, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.JobMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_time: Google.Protobuf.Timestamp.t() | nil,
          metrics: [Google.Dataflow.V1beta3.MetricUpdate.t()]
        }

  defstruct [:metric_time, :metrics]

  field :metric_time, 1, type: Google.Protobuf.Timestamp, json_name: "metricTime"
  field :metrics, 2, repeated: true, type: Google.Dataflow.V1beta3.MetricUpdate

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.GetJobExecutionDetailsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          job_id: String.t(),
          location: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project_id, :job_id, :location, :page_size, :page_token]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :location, 3, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 5, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.ProgressTimeseries.Point do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:time, :value]

  field :time, 1, type: Google.Protobuf.Timestamp
  field :value, 2, type: :double

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.ProgressTimeseries do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          current_progress: float | :infinity | :negative_infinity | :nan,
          data_points: [Google.Dataflow.V1beta3.ProgressTimeseries.Point.t()]
        }

  defstruct [:current_progress, :data_points]

  field :current_progress, 1, type: :double, json_name: "currentProgress"

  field :data_points, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.ProgressTimeseries.Point,
    json_name: "dataPoints"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StageSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stage_id: String.t(),
          state: Google.Dataflow.V1beta3.ExecutionState.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          progress: Google.Dataflow.V1beta3.ProgressTimeseries.t() | nil,
          metrics: [Google.Dataflow.V1beta3.MetricUpdate.t()]
        }

  defstruct [:stage_id, :state, :start_time, :end_time, :progress, :metrics]

  field :stage_id, 1, type: :string, json_name: "stageId"
  field :state, 2, type: Google.Dataflow.V1beta3.ExecutionState, enum: true
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :progress, 5, type: Google.Dataflow.V1beta3.ProgressTimeseries
  field :metrics, 6, repeated: true, type: Google.Dataflow.V1beta3.MetricUpdate

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.JobExecutionDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stages: [Google.Dataflow.V1beta3.StageSummary.t()],
          next_page_token: String.t()
        }

  defstruct [:stages, :next_page_token]

  field :stages, 1, repeated: true, type: Google.Dataflow.V1beta3.StageSummary
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.GetStageExecutionDetailsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          job_id: String.t(),
          location: String.t(),
          stage_id: String.t(),
          page_size: integer,
          page_token: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :project_id,
    :job_id,
    :location,
    :stage_id,
    :page_size,
    :page_token,
    :start_time,
    :end_time
  ]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :job_id, 2, type: :string, json_name: "jobId"
  field :location, 3, type: :string
  field :stage_id, 4, type: :string, json_name: "stageId"
  field :page_size, 5, type: :int32, json_name: "pageSize"
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.WorkItemDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_id: String.t(),
          attempt_id: String.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Dataflow.V1beta3.ExecutionState.t(),
          progress: Google.Dataflow.V1beta3.ProgressTimeseries.t() | nil,
          metrics: [Google.Dataflow.V1beta3.MetricUpdate.t()]
        }

  defstruct [:task_id, :attempt_id, :start_time, :end_time, :state, :progress, :metrics]

  field :task_id, 1, type: :string, json_name: "taskId"
  field :attempt_id, 2, type: :string, json_name: "attemptId"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :state, 5, type: Google.Dataflow.V1beta3.ExecutionState, enum: true
  field :progress, 6, type: Google.Dataflow.V1beta3.ProgressTimeseries
  field :metrics, 7, repeated: true, type: Google.Dataflow.V1beta3.MetricUpdate

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.WorkerDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_name: String.t(),
          work_items: [Google.Dataflow.V1beta3.WorkItemDetails.t()]
        }

  defstruct [:worker_name, :work_items]

  field :worker_name, 1, type: :string, json_name: "workerName"

  field :work_items, 2,
    repeated: true,
    type: Google.Dataflow.V1beta3.WorkItemDetails,
    json_name: "workItems"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.StageExecutionDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workers: [Google.Dataflow.V1beta3.WorkerDetails.t()],
          next_page_token: String.t()
        }

  defstruct [:workers, :next_page_token]

  field :workers, 1, repeated: true, type: Google.Dataflow.V1beta3.WorkerDetails
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Dataflow.V1beta3.MetricsV1Beta3.Service do
  @moduledoc false
  use GRPC.Service, name: "google.dataflow.v1beta3.MetricsV1Beta3"

  rpc :GetJobMetrics,
      Google.Dataflow.V1beta3.GetJobMetricsRequest,
      Google.Dataflow.V1beta3.JobMetrics

  rpc :GetJobExecutionDetails,
      Google.Dataflow.V1beta3.GetJobExecutionDetailsRequest,
      Google.Dataflow.V1beta3.JobExecutionDetails

  rpc :GetStageExecutionDetails,
      Google.Dataflow.V1beta3.GetStageExecutionDetailsRequest,
      Google.Dataflow.V1beta3.StageExecutionDetails
end

defmodule Google.Dataflow.V1beta3.MetricsV1Beta3.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Dataflow.V1beta3.MetricsV1Beta3.Service
end
