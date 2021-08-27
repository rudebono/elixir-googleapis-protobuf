defmodule Google.Monitoring.V3.AlertPolicy.ConditionCombinerType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :COMBINE_UNSPECIFIED | :AND | :OR | :AND_WITH_MATCHING_RESOURCE

  field :COMBINE_UNSPECIFIED, 0

  field :AND, 1

  field :OR, 2

  field :AND_WITH_MATCHING_RESOURCE, 3
end

defmodule Google.Monitoring.V3.AlertPolicy.Documentation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          mime_type: String.t()
        }

  defstruct [:content, :mime_type]

  field :content, 1, type: :string
  field :mime_type, 2, type: :string
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.Trigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {atom, any}
        }

  defstruct [:type]

  oneof :type, 0
  field :count, 1, type: :int32, oneof: 0
  field :percent, 2, type: :double, oneof: 0
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.MetricThreshold do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          aggregations: [Google.Monitoring.V3.Aggregation.t()],
          denominator_filter: String.t(),
          denominator_aggregations: [Google.Monitoring.V3.Aggregation.t()],
          comparison: Google.Monitoring.V3.ComparisonType.t(),
          threshold_value: float | :infinity | :negative_infinity | :nan,
          duration: Google.Protobuf.Duration.t() | nil,
          trigger: Google.Monitoring.V3.AlertPolicy.Condition.Trigger.t() | nil
        }

  defstruct [
    :filter,
    :aggregations,
    :denominator_filter,
    :denominator_aggregations,
    :comparison,
    :threshold_value,
    :duration,
    :trigger
  ]

  field :filter, 2, type: :string
  field :aggregations, 8, repeated: true, type: Google.Monitoring.V3.Aggregation
  field :denominator_filter, 9, type: :string
  field :denominator_aggregations, 10, repeated: true, type: Google.Monitoring.V3.Aggregation
  field :comparison, 4, type: Google.Monitoring.V3.ComparisonType, enum: true
  field :threshold_value, 5, type: :double
  field :duration, 6, type: Google.Protobuf.Duration
  field :trigger, 7, type: Google.Monitoring.V3.AlertPolicy.Condition.Trigger
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.MetricAbsence do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          aggregations: [Google.Monitoring.V3.Aggregation.t()],
          duration: Google.Protobuf.Duration.t() | nil,
          trigger: Google.Monitoring.V3.AlertPolicy.Condition.Trigger.t() | nil
        }

  defstruct [:filter, :aggregations, :duration, :trigger]

  field :filter, 1, type: :string
  field :aggregations, 5, repeated: true, type: Google.Monitoring.V3.Aggregation
  field :duration, 2, type: Google.Protobuf.Duration
  field :trigger, 3, type: Google.Monitoring.V3.AlertPolicy.Condition.Trigger
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.LogMatch.LabelExtractorsEntry do
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

defmodule Google.Monitoring.V3.AlertPolicy.Condition.LogMatch do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t(),
          label_extractors: %{String.t() => String.t()}
        }

  defstruct [:filter, :label_extractors]

  field :filter, 1, type: :string

  field :label_extractors, 2,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.Condition.LogMatch.LabelExtractorsEntry,
    map: true
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition.MonitoringQueryLanguageCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query: String.t(),
          duration: Google.Protobuf.Duration.t() | nil,
          trigger: Google.Monitoring.V3.AlertPolicy.Condition.Trigger.t() | nil
        }

  defstruct [:query, :duration, :trigger]

  field :query, 1, type: :string
  field :duration, 2, type: Google.Protobuf.Duration
  field :trigger, 3, type: Google.Monitoring.V3.AlertPolicy.Condition.Trigger
end

defmodule Google.Monitoring.V3.AlertPolicy.Condition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          condition: {atom, any},
          name: String.t(),
          display_name: String.t()
        }

  defstruct [:condition, :name, :display_name]

  oneof :condition, 0
  field :name, 12, type: :string
  field :display_name, 6, type: :string

  field :condition_threshold, 1,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MetricThreshold,
    oneof: 0

  field :condition_absent, 2,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MetricAbsence,
    oneof: 0

  field :condition_matched_log, 20,
    type: Google.Monitoring.V3.AlertPolicy.Condition.LogMatch,
    oneof: 0

  field :condition_monitoring_query_language, 19,
    type: Google.Monitoring.V3.AlertPolicy.Condition.MonitoringQueryLanguageCondition,
    oneof: 0
end

defmodule Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationRateLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          period: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:period]

  field :period, 1, type: Google.Protobuf.Duration
end

defmodule Google.Monitoring.V3.AlertPolicy.AlertStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notification_rate_limit:
            Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationRateLimit.t() | nil
        }

  defstruct [:notification_rate_limit]

  field :notification_rate_limit, 1,
    type: Google.Monitoring.V3.AlertPolicy.AlertStrategy.NotificationRateLimit
end

defmodule Google.Monitoring.V3.AlertPolicy.UserLabelsEntry do
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

defmodule Google.Monitoring.V3.AlertPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          documentation: Google.Monitoring.V3.AlertPolicy.Documentation.t() | nil,
          user_labels: %{String.t() => String.t()},
          conditions: [Google.Monitoring.V3.AlertPolicy.Condition.t()],
          combiner: Google.Monitoring.V3.AlertPolicy.ConditionCombinerType.t(),
          enabled: Google.Protobuf.BoolValue.t() | nil,
          validity: Google.Rpc.Status.t() | nil,
          notification_channels: [String.t()],
          creation_record: Google.Monitoring.V3.MutationRecord.t() | nil,
          mutation_record: Google.Monitoring.V3.MutationRecord.t() | nil,
          alert_strategy: Google.Monitoring.V3.AlertPolicy.AlertStrategy.t() | nil
        }

  defstruct [
    :name,
    :display_name,
    :documentation,
    :user_labels,
    :conditions,
    :combiner,
    :enabled,
    :validity,
    :notification_channels,
    :creation_record,
    :mutation_record,
    :alert_strategy
  ]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :documentation, 13, type: Google.Monitoring.V3.AlertPolicy.Documentation

  field :user_labels, 16,
    repeated: true,
    type: Google.Monitoring.V3.AlertPolicy.UserLabelsEntry,
    map: true

  field :conditions, 12, repeated: true, type: Google.Monitoring.V3.AlertPolicy.Condition
  field :combiner, 6, type: Google.Monitoring.V3.AlertPolicy.ConditionCombinerType, enum: true
  field :enabled, 17, type: Google.Protobuf.BoolValue
  field :validity, 18, type: Google.Rpc.Status
  field :notification_channels, 14, repeated: true, type: :string
  field :creation_record, 10, type: Google.Monitoring.V3.MutationRecord
  field :mutation_record, 11, type: Google.Monitoring.V3.MutationRecord
  field :alert_strategy, 21, type: Google.Monitoring.V3.AlertPolicy.AlertStrategy
end
