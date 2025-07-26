defmodule Google.Cloud.Dataproc.Logging.AutoscalerState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SCALING_DECISION_TYPE_UNSPECIFIED, 0
  field :SCALE_UP, 1
  field :SCALE_DOWN, 2
  field :NO_SCALE, 3
  field :MIXED, 4
  field :CANCEL, 5
  field :DO_NOT_CANCEL, 6
end

defmodule Google.Cloud.Dataproc.Logging.ConstrainingFactor do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONSTRAINING_FACTOR_UNSPECIFIED, 0
  field :SCALING_CAPPED_DUE_TO_LACK_OF_QUOTA, 1
  field :REACHED_MAXIMUM_CLUSTER_SIZE, 2
  field :REACHED_MINIMUM_CLUSTER_SIZE, 3
  field :SECONDARY_SCALEDOWN_SINGLE_REQUEST_LIMIT_REACHED, 4
end

defmodule Google.Cloud.Dataproc.Logging.MetricType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :METRIC_TYPE_UNSPECIFIED, 0
  field :YARN_MEMORY, 1
  field :YARN_CORES, 2
  field :SPARK_EXECUTORS, 3
end

defmodule Google.Cloud.Dataproc.Logging.ClusterSize do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :primary_worker_count, 1, type: :int32, json_name: "primaryWorkerCount"
  field :secondary_worker_count, 2, type: :int32, json_name: "secondaryWorkerCount"
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :status, 1, type: Google.Cloud.Dataproc.Logging.AutoscalerStatus
  field :recommendation, 2, type: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1, type: Google.Cloud.Dataproc.Logging.AutoscalerState, enum: true
  field :details, 2, type: :string
  field :update_cluster_operation_id, 3, type: :string, json_name: "updateClusterOperationId"
  field :error, 4, type: :string
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Inputs.ClusterMetricsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Inputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Outputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
    json_name: "constraintsReached",
    enum: true

  field :additional_recommendation_details, 5,
    repeated: true,
    type: :string,
    json_name: "additionalRecommendationDetails"

  field :recommendation_id, 6, type: :string, json_name: "recommendationId"

  field :decision_metric, 7,
    type: Google.Cloud.Dataproc.Logging.MetricType,
    json_name: "decisionMetric",
    enum: true
end

defmodule Google.Cloud.Dataproc.Logging.AutoscalerRecommendation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :inputs, 1, type: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Inputs
  field :outputs, 2, type: Google.Cloud.Dataproc.Logging.AutoscalerRecommendation.Outputs
end
