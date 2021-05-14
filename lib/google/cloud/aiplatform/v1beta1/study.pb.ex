defmodule Google.Cloud.Aiplatform.V1beta1.Study.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :INACTIVE | :COMPLETED

  field :STATE_UNSPECIFIED, 0

  field :ACTIVE, 1

  field :INACTIVE, 2

  field :COMPLETED, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.Trial.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :REQUESTED
          | :ACTIVE
          | :STOPPING
          | :SUCCEEDED
          | :INFEASIBLE

  field :STATE_UNSPECIFIED, 0

  field :REQUESTED, 1

  field :ACTIVE, 2

  field :STOPPING, 3

  field :SUCCEEDED, 4

  field :INFEASIBLE, 5
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.Algorithm do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ALGORITHM_UNSPECIFIED | :GRID_SEARCH | :RANDOM_SEARCH

  field :ALGORITHM_UNSPECIFIED, 0

  field :GRID_SEARCH, 2

  field :RANDOM_SEARCH, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ObservationNoise do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :OBSERVATION_NOISE_UNSPECIFIED | :LOW | :HIGH

  field :OBSERVATION_NOISE_UNSPECIFIED, 0

  field :LOW, 1

  field :HIGH, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.MeasurementSelectionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :MEASUREMENT_SELECTION_TYPE_UNSPECIFIED
          | :LAST_MEASUREMENT
          | :BEST_MEASUREMENT

  field :MEASUREMENT_SELECTION_TYPE_UNSPECIFIED, 0

  field :LAST_MEASUREMENT, 1

  field :BEST_MEASUREMENT, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.MetricSpec.GoalType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :GOAL_TYPE_UNSPECIFIED | :MAXIMIZE | :MINIMIZE

  field :GOAL_TYPE_UNSPECIFIED, 0

  field :MAXIMIZE, 1

  field :MINIMIZE, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ScaleType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SCALE_TYPE_UNSPECIFIED
          | :UNIT_LINEAR_SCALE
          | :UNIT_LOG_SCALE
          | :UNIT_REVERSE_LOG_SCALE

  field :SCALE_TYPE_UNSPECIFIED, 0

  field :UNIT_LINEAR_SCALE, 1

  field :UNIT_LOG_SCALE, 2

  field :UNIT_REVERSE_LOG_SCALE, 3
end

defmodule Google.Cloud.Aiplatform.V1beta1.Study do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          study_spec: Google.Cloud.Aiplatform.V1beta1.StudySpec.t() | nil,
          state: Google.Cloud.Aiplatform.V1beta1.Study.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          inactive_reason: String.t()
        }

  defstruct [:name, :display_name, :study_spec, :state, :create_time, :inactive_reason]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :study_spec, 3, type: Google.Cloud.Aiplatform.V1beta1.StudySpec
  field :state, 4, type: Google.Cloud.Aiplatform.V1beta1.Study.State, enum: true
  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :inactive_reason, 6, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.Trial.Parameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_id: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:parameter_id, :value]

  field :parameter_id, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Aiplatform.V1beta1.Trial do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t(),
          state: Google.Cloud.Aiplatform.V1beta1.Trial.State.t(),
          parameters: [Google.Cloud.Aiplatform.V1beta1.Trial.Parameter.t()],
          final_measurement: Google.Cloud.Aiplatform.V1beta1.Measurement.t() | nil,
          measurements: [Google.Cloud.Aiplatform.V1beta1.Measurement.t()],
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          client_id: String.t(),
          infeasible_reason: String.t(),
          custom_job: String.t()
        }

  defstruct [
    :name,
    :id,
    :state,
    :parameters,
    :final_measurement,
    :measurements,
    :start_time,
    :end_time,
    :client_id,
    :infeasible_reason,
    :custom_job
  ]

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :state, 3, type: Google.Cloud.Aiplatform.V1beta1.Trial.State, enum: true
  field :parameters, 4, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Trial.Parameter
  field :final_measurement, 5, type: Google.Cloud.Aiplatform.V1beta1.Measurement
  field :measurements, 6, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Measurement
  field :start_time, 7, type: Google.Protobuf.Timestamp
  field :end_time, 8, type: Google.Protobuf.Timestamp
  field :client_id, 9, type: :string
  field :infeasible_reason, 10, type: :string
  field :custom_job, 11, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.MetricSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_id: String.t(),
          goal: Google.Cloud.Aiplatform.V1beta1.StudySpec.MetricSpec.GoalType.t()
        }

  defstruct [:metric_id, :goal]

  field :metric_id, 1, type: :string
  field :goal, 2, type: Google.Cloud.Aiplatform.V1beta1.StudySpec.MetricSpec.GoalType, enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.DoubleValueSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_value: float | :infinity | :negative_infinity | :nan,
          max_value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:min_value, :max_value]

  field :min_value, 1, type: :double
  field :max_value, 2, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.IntegerValueSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_value: integer,
          max_value: integer
        }

  defstruct [:min_value, :max_value]

  field :min_value, 1, type: :int64
  field :max_value, 2, type: :int64
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.CategoricalValueSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.DiscreteValueSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ConditionalParameterSpec.DiscreteValueCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ConditionalParameterSpec.IntValueCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [integer]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :int64
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ConditionalParameterSpec.CategoricalValueCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [String.t()]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ConditionalParameterSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent_value_condition: {atom, any},
          parameter_spec: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.t() | nil
        }

  defstruct [:parent_value_condition, :parameter_spec]

  oneof :parent_value_condition, 0

  field :parent_discrete_values, 2,
    type:
      Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ConditionalParameterSpec.DiscreteValueCondition,
    oneof: 0

  field :parent_int_values, 3,
    type:
      Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ConditionalParameterSpec.IntValueCondition,
    oneof: 0

  field :parent_categorical_values, 4,
    type:
      Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ConditionalParameterSpec.CategoricalValueCondition,
    oneof: 0

  field :parameter_spec, 1, type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_value_spec: {atom, any},
          parameter_id: String.t(),
          scale_type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ScaleType.t(),
          conditional_parameter_specs: [
            Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ConditionalParameterSpec.t()
          ]
        }

  defstruct [:parameter_value_spec, :parameter_id, :scale_type, :conditional_parameter_specs]

  oneof :parameter_value_spec, 0

  field :double_value_spec, 2,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.DoubleValueSpec,
    oneof: 0

  field :integer_value_spec, 3,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.IntegerValueSpec,
    oneof: 0

  field :categorical_value_spec, 4,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.CategoricalValueSpec,
    oneof: 0

  field :discrete_value_spec, 5,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.DiscreteValueSpec,
    oneof: 0

  field :parameter_id, 1, type: :string

  field :scale_type, 6,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ScaleType,
    enum: true

  field :conditional_parameter_specs, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.ConditionalParameterSpec
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.DecayCurveAutomatedStoppingSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          use_elapsed_duration: boolean
        }

  defstruct [:use_elapsed_duration]

  field :use_elapsed_duration, 1, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.MedianAutomatedStoppingSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          use_elapsed_duration: boolean
        }

  defstruct [:use_elapsed_duration]

  field :use_elapsed_duration, 1, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec.ConvexStopConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_num_steps: integer,
          min_num_steps: integer,
          autoregressive_order: integer,
          learning_rate_parameter_name: String.t(),
          use_seconds: boolean
        }

  defstruct [
    :max_num_steps,
    :min_num_steps,
    :autoregressive_order,
    :learning_rate_parameter_name,
    :use_seconds
  ]

  field :max_num_steps, 1, type: :int64
  field :min_num_steps, 2, type: :int64
  field :autoregressive_order, 3, type: :int64
  field :learning_rate_parameter_name, 4, type: :string
  field :use_seconds, 5, type: :bool
end

defmodule Google.Cloud.Aiplatform.V1beta1.StudySpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          automated_stopping_spec: {atom, any},
          metrics: [Google.Cloud.Aiplatform.V1beta1.StudySpec.MetricSpec.t()],
          parameters: [Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec.t()],
          algorithm: Google.Cloud.Aiplatform.V1beta1.StudySpec.Algorithm.t(),
          observation_noise: Google.Cloud.Aiplatform.V1beta1.StudySpec.ObservationNoise.t(),
          measurement_selection_type:
            Google.Cloud.Aiplatform.V1beta1.StudySpec.MeasurementSelectionType.t()
        }

  defstruct [
    :automated_stopping_spec,
    :metrics,
    :parameters,
    :algorithm,
    :observation_noise,
    :measurement_selection_type
  ]

  oneof :automated_stopping_spec, 0

  field :decay_curve_stopping_spec, 4,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.DecayCurveAutomatedStoppingSpec,
    oneof: 0

  field :median_automated_stopping_spec, 5,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.MedianAutomatedStoppingSpec,
    oneof: 0

  field :convex_stop_config, 8,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ConvexStopConfig,
    oneof: 0

  field :metrics, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.StudySpec.MetricSpec

  field :parameters, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ParameterSpec

  field :algorithm, 3, type: Google.Cloud.Aiplatform.V1beta1.StudySpec.Algorithm, enum: true

  field :observation_noise, 6,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.ObservationNoise,
    enum: true

  field :measurement_selection_type, 7,
    type: Google.Cloud.Aiplatform.V1beta1.StudySpec.MeasurementSelectionType,
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1beta1.Measurement.Metric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metric_id: String.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:metric_id, :value]

  field :metric_id, 1, type: :string
  field :value, 2, type: :double
end

defmodule Google.Cloud.Aiplatform.V1beta1.Measurement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          elapsed_duration: Google.Protobuf.Duration.t() | nil,
          step_count: integer,
          metrics: [Google.Cloud.Aiplatform.V1beta1.Measurement.Metric.t()]
        }

  defstruct [:elapsed_duration, :step_count, :metrics]

  field :elapsed_duration, 1, type: Google.Protobuf.Duration
  field :step_count, 2, type: :int64
  field :metrics, 3, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Measurement.Metric
end
