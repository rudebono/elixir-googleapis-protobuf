defmodule Google.Cloud.Dataproc.Logging.AutoscalerState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :AUTOSCALER_STATE_UNSPECIFIED
          | :COOLDOWN
          | :RECOMMENDING
          | :SCALING
          | :STOPPED
          | :FAILED
          | :INITIALIZING

  field :AUTOSCALER_STATE_UNSPECIFIED, 0
  field :COOLDOWN, 1
  field :RECOMMENDING, 6
  field :SCALING, 2
  field :STOPPED, 3
  field :FAILED, 4
  field :INITIALIZING, 5
end

defmodule Google.Cloud.Dataproc.Logging.ScalingDecisionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SCALING_DECISION_TYPE_UNSPECIFIED
          | :SCALE_UP
          | :SCALE_DOWN
          | :NO_SCALE
          | :MIXED

  field :SCALING_DECISION_TYPE_UNSPECIFIED, 0
  field :SCALE_UP, 1
  field :SCALE_DOWN, 2
  field :NO_SCALE, 3
  field :MIXED, 4
end

defmodule Google.Cloud.Dataproc.Logging.ConstrainingFactor do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :CONSTRAINING_FACTOR_UNSPECIFIED
          | :SCALING_CAPPED_DUE_TO_LACK_OF_QUOTA
          | :REACHED_MAXIMUM_CLUSTER_SIZE
          | :REACHED_MINIMUM_CLUSTER_SIZE

  field :CONSTRAINING_FACTOR_UNSPECIFIED, 0
  field :SCALING_CAPPED_DUE_TO_LACK_OF_QUOTA, 1
  field :REACHED_MAXIMUM_CLUSTER_SIZE, 2
  field :REACHED_MINIMUM_CLUSTER_SIZE, 3
end

defmodule Google.Cloud.Dataproc.Logging.ClusterSize do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          primary_worker_count: integer,
          secondary_worker_count: integer
        }

  defstruct [:primary_worker_count, :secondary_worker_count]

  field :primary_worker_count, 1, type: :int32, json_name: "primaryWorkerCount"
  field :secondary_worker_count, 2, type: :int32, json_name: "secondaryWorkerCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Cloud.Dataproc.Logging.AutoscalerStatus.t() | nil,
          recommendation: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.t() | nil
        }

  defstruct [:status, :recommendation]

  field :status, 1, type: Google.Cloud.Dataproc.Logging.AutoscalerStatus
  field :recommendation, 2, type: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataproc.Logging.AutoscalerState.t(),
          details: String.t(),
          update_cluster_operation_id: String.t(),
          error: String.t()
        }

  defstruct [:state, :details, :update_cluster_operation_id, :error]

  field :state, 1, type: Google.Cloud.Dataproc.Logging.AutoscalerState, enum: true
  field :details, 2, type: :string
  field :update_cluster_operation_id, 3, type: :string, json_name: "updateClusterOperationId"
  field :error, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Inputs.ClusterMetricsEntry do
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

defmodule Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Inputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_metrics: %{String.t() => String.t()},
          current_cluster_size: Google.Cloud.Dataproc.Logging.ClusterSize.t() | nil,
          min_worker_counts: Google.Cloud.Dataproc.Logging.ClusterSize.t() | nil,
          max_worker_counts: Google.Cloud.Dataproc.Logging.ClusterSize.t() | nil
        }

  defstruct [:cluster_metrics, :current_cluster_size, :min_worker_counts, :max_worker_counts]

  field :cluster_metrics, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Inputs.ClusterMetricsEntry,
    json_name: "clusterMetrics",
    map: true

  field :current_cluster_size, 2,
    type: Google.Cloud.Dataproc.Logging.ClusterSize,
    json_name: "currentClusterSize"

  field :min_worker_counts, 3,
    type: Google.Cloud.Dataproc.Logging.ClusterSize,
    json_name: "minWorkerCounts"

  field :max_worker_counts, 4,
    type: Google.Cloud.Dataproc.Logging.ClusterSize,
    json_name: "maxWorkerCounts"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Outputs do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          decision: Google.Cloud.Dataproc.Logging.ScalingDecisionType.t(),
          recommended_cluster_size: Google.Cloud.Dataproc.Logging.ClusterSize.t() | nil,
          graceful_decommission_timeout: Google.Protobuf.Duration.t() | nil,
          constraints_reached: [Google.Cloud.Dataproc.Logging.ConstrainingFactor.t()],
          additional_recommendation_details: [String.t()],
          recommendation_id: String.t()
        }

  defstruct [
    :decision,
    :recommended_cluster_size,
    :graceful_decommission_timeout,
    :constraints_reached,
    :additional_recommendation_details,
    :recommendation_id
  ]

  field :decision, 1, type: Google.Cloud.Dataproc.Logging.ScalingDecisionType, enum: true

  field :recommended_cluster_size, 2,
    type: Google.Cloud.Dataproc.Logging.ClusterSize,
    json_name: "recommendedClusterSize"

  field :graceful_decommission_timeout, 3,
    type: Google.Protobuf.Duration,
    json_name: "gracefulDecommissionTimeout"

  field :constraints_reached, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.Logging.ConstrainingFactor,
    enum: true,
    json_name: "constraintsReached"

  field :additional_recommendation_details, 5,
    repeated: true,
    type: :string,
    json_name: "additionalRecommendationDetails"

  field :recommendation_id, 6, type: :string, json_name: "recommendationId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerRecommendation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          inputs: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Inputs.t() | nil,
          outputs: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Outputs.t() | nil
        }

  defstruct [:inputs, :outputs]

  field :inputs, 1, type: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Inputs
  field :outputs, 2, type: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Outputs

  def transform_module(), do: nil
end
