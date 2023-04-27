defmodule Google.Cloud.Aiplatform.V1.Study.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
  field :COMPLETED, 3
end

defmodule Google.Cloud.Aiplatform.V1.Trial.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :REQUESTED, 1
  field :ACTIVE, 2
  field :STOPPING, 3
  field :SUCCEEDED, 4
  field :INFEASIBLE, 5
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.Algorithm do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ALGORITHM_UNSPECIFIED, 0
  field :GRID_SEARCH, 2
  field :RANDOM_SEARCH, 3
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ObservationNoise do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :OBSERVATION_NOISE_UNSPECIFIED, 0
  field :LOW, 1
  field :HIGH, 2
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.MeasurementSelectionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MEASUREMENT_SELECTION_TYPE_UNSPECIFIED, 0
  field :LAST_MEASUREMENT, 1
  field :BEST_MEASUREMENT, 2
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.MetricSpec.GoalType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :GOAL_TYPE_UNSPECIFIED, 0
  field :MAXIMIZE, 1
  field :MINIMIZE, 2
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ScaleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SCALE_TYPE_UNSPECIFIED, 0
  field :UNIT_LINEAR_SCALE, 1
  field :UNIT_LOG_SCALE, 2
  field :UNIT_REVERSE_LOG_SCALE, 3
end

defmodule Google.Cloud.Aiplatform.V1.Study do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :study_spec, 3,
    type: Google.Cloud.Aiplatform.V1.StudySpec,
    json_name: "studySpec",
    deprecated: false

  field :state, 4, type: Google.Cloud.Aiplatform.V1.Study.State, enum: true, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :inactive_reason, 6, type: :string, json_name: "inactiveReason", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Trial.Parameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parameter_id, 1, type: :string, json_name: "parameterId", deprecated: false
  field :value, 2, type: Google.Protobuf.Value, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Trial.WebAccessUrisEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Aiplatform.V1.Trial do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string, deprecated: false
  field :state, 3, type: Google.Cloud.Aiplatform.V1.Trial.State, enum: true, deprecated: false

  field :parameters, 4,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Trial.Parameter,
    deprecated: false

  field :final_measurement, 5,
    type: Google.Cloud.Aiplatform.V1.Measurement,
    json_name: "finalMeasurement",
    deprecated: false

  field :measurements, 6,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Measurement,
    deprecated: false

  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 8, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :client_id, 9, type: :string, json_name: "clientId", deprecated: false
  field :infeasible_reason, 10, type: :string, json_name: "infeasibleReason", deprecated: false
  field :custom_job, 11, type: :string, json_name: "customJob", deprecated: false

  field :web_access_uris, 12,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Trial.WebAccessUrisEntry,
    json_name: "webAccessUris",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.MetricSpec.SafetyMetricConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :safety_threshold, 1, type: :double, json_name: "safetyThreshold"

  field :desired_min_safe_trials_fraction, 2,
    proto3_optional: true,
    type: :double,
    json_name: "desiredMinSafeTrialsFraction"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.MetricSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metric_id, 1, type: :string, json_name: "metricId", deprecated: false

  field :goal, 2,
    type: Google.Cloud.Aiplatform.V1.StudySpec.MetricSpec.GoalType,
    enum: true,
    deprecated: false

  field :safety_config, 3,
    proto3_optional: true,
    type: Google.Cloud.Aiplatform.V1.StudySpec.MetricSpec.SafetyMetricConfig,
    json_name: "safetyConfig"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.DoubleValueSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_value, 1, type: :double, json_name: "minValue", deprecated: false
  field :max_value, 2, type: :double, json_name: "maxValue", deprecated: false
  field :default_value, 4, proto3_optional: true, type: :double, json_name: "defaultValue"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.IntegerValueSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_value, 1, type: :int64, json_name: "minValue", deprecated: false
  field :max_value, 2, type: :int64, json_name: "maxValue", deprecated: false
  field :default_value, 4, proto3_optional: true, type: :int64, json_name: "defaultValue"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.CategoricalValueSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
  field :default_value, 3, proto3_optional: true, type: :string, json_name: "defaultValue"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.DiscreteValueSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: :double, deprecated: false
  field :default_value, 3, proto3_optional: true, type: :double, json_name: "defaultValue"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ConditionalParameterSpec.DiscreteValueCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: :double, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ConditionalParameterSpec.IntValueCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: :int64, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ConditionalParameterSpec.CategoricalValueCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ConditionalParameterSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :parent_value_condition, 0

  field :parent_discrete_values, 2,
    type:
      Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ConditionalParameterSpec.DiscreteValueCondition,
    json_name: "parentDiscreteValues",
    oneof: 0

  field :parent_int_values, 3,
    type:
      Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ConditionalParameterSpec.IntValueCondition,
    json_name: "parentIntValues",
    oneof: 0

  field :parent_categorical_values, 4,
    type:
      Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ConditionalParameterSpec.CategoricalValueCondition,
    json_name: "parentCategoricalValues",
    oneof: 0

  field :parameter_spec, 1,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec,
    json_name: "parameterSpec",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :parameter_value_spec, 0

  field :double_value_spec, 2,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.DoubleValueSpec,
    json_name: "doubleValueSpec",
    oneof: 0

  field :integer_value_spec, 3,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.IntegerValueSpec,
    json_name: "integerValueSpec",
    oneof: 0

  field :categorical_value_spec, 4,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.CategoricalValueSpec,
    json_name: "categoricalValueSpec",
    oneof: 0

  field :discrete_value_spec, 5,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.DiscreteValueSpec,
    json_name: "discreteValueSpec",
    oneof: 0

  field :parameter_id, 1, type: :string, json_name: "parameterId", deprecated: false

  field :scale_type, 6,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ScaleType,
    json_name: "scaleType",
    enum: true

  field :conditional_parameter_specs, 10,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec.ConditionalParameterSpec,
    json_name: "conditionalParameterSpecs"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.DecayCurveAutomatedStoppingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_elapsed_duration, 1, type: :bool, json_name: "useElapsedDuration"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.MedianAutomatedStoppingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :use_elapsed_duration, 1, type: :bool, json_name: "useElapsedDuration"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec.ConvexAutomatedStoppingSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :max_step_count, 1, type: :int64, json_name: "maxStepCount"
  field :min_step_count, 2, type: :int64, json_name: "minStepCount"
  field :min_measurement_count, 3, type: :int64, json_name: "minMeasurementCount"
  field :learning_rate_parameter_name, 4, type: :string, json_name: "learningRateParameterName"
  field :use_elapsed_duration, 5, type: :bool, json_name: "useElapsedDuration"

  field :update_all_stopped_trials, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "updateAllStoppedTrials"
end

defmodule Google.Cloud.Aiplatform.V1.StudySpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :automated_stopping_spec, 0

  field :decay_curve_stopping_spec, 4,
    type: Google.Cloud.Aiplatform.V1.StudySpec.DecayCurveAutomatedStoppingSpec,
    json_name: "decayCurveStoppingSpec",
    oneof: 0

  field :median_automated_stopping_spec, 5,
    type: Google.Cloud.Aiplatform.V1.StudySpec.MedianAutomatedStoppingSpec,
    json_name: "medianAutomatedStoppingSpec",
    oneof: 0

  field :convex_automated_stopping_spec, 9,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ConvexAutomatedStoppingSpec,
    json_name: "convexAutomatedStoppingSpec",
    oneof: 0

  field :metrics, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.StudySpec.MetricSpec,
    deprecated: false

  field :parameters, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ParameterSpec,
    deprecated: false

  field :algorithm, 3, type: Google.Cloud.Aiplatform.V1.StudySpec.Algorithm, enum: true

  field :observation_noise, 6,
    type: Google.Cloud.Aiplatform.V1.StudySpec.ObservationNoise,
    json_name: "observationNoise",
    enum: true

  field :measurement_selection_type, 7,
    type: Google.Cloud.Aiplatform.V1.StudySpec.MeasurementSelectionType,
    json_name: "measurementSelectionType",
    enum: true
end

defmodule Google.Cloud.Aiplatform.V1.Measurement.Metric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :metric_id, 1, type: :string, json_name: "metricId", deprecated: false
  field :value, 2, type: :double, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1.Measurement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :elapsed_duration, 1,
    type: Google.Protobuf.Duration,
    json_name: "elapsedDuration",
    deprecated: false

  field :step_count, 2, type: :int64, json_name: "stepCount", deprecated: false

  field :metrics, 3,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1.Measurement.Metric,
    deprecated: false
end