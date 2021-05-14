defmodule Google.Devtools.Clouderrorreporting.V1beta1.TimedCountAlignment do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ERROR_COUNT_ALIGNMENT_UNSPECIFIED
          | :ALIGNMENT_EQUAL_ROUNDED
          | :ALIGNMENT_EQUAL_AT_END

  field :ERROR_COUNT_ALIGNMENT_UNSPECIFIED, 0

  field :ALIGNMENT_EQUAL_ROUNDED, 1

  field :ALIGNMENT_EQUAL_AT_END, 2
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupOrder do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :GROUP_ORDER_UNSPECIFIED
          | :COUNT_DESC
          | :LAST_SEEN_DESC
          | :CREATED_DESC
          | :AFFECTED_USERS_DESC

  field :GROUP_ORDER_UNSPECIFIED, 0

  field :COUNT_DESC, 1

  field :LAST_SEEN_DESC, 2

  field :CREATED_DESC, 3

  field :AFFECTED_USERS_DESC, 4
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange.Period do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PERIOD_UNSPECIFIED
          | :PERIOD_1_HOUR
          | :PERIOD_6_HOURS
          | :PERIOD_1_DAY
          | :PERIOD_1_WEEK
          | :PERIOD_30_DAYS

  field :PERIOD_UNSPECIFIED, 0

  field :PERIOD_1_HOUR, 1

  field :PERIOD_6_HOURS, 2

  field :PERIOD_1_DAY, 3

  field :PERIOD_1_WEEK, 4

  field :PERIOD_30_DAYS, 5
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ListGroupStatsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_name: String.t(),
          group_id: [String.t()],
          service_filter:
            Google.Devtools.Clouderrorreporting.V1beta1.ServiceContextFilter.t() | nil,
          time_range: Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange.t() | nil,
          timed_count_duration: Google.Protobuf.Duration.t() | nil,
          alignment: Google.Devtools.Clouderrorreporting.V1beta1.TimedCountAlignment.t(),
          alignment_time: Google.Protobuf.Timestamp.t() | nil,
          order: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupOrder.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [
    :project_name,
    :group_id,
    :service_filter,
    :time_range,
    :timed_count_duration,
    :alignment,
    :alignment_time,
    :order,
    :page_size,
    :page_token
  ]

  field :project_name, 1, type: :string
  field :group_id, 2, repeated: true, type: :string
  field :service_filter, 3, type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContextFilter
  field :time_range, 5, type: Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange
  field :timed_count_duration, 6, type: Google.Protobuf.Duration

  field :alignment, 7,
    type: Google.Devtools.Clouderrorreporting.V1beta1.TimedCountAlignment,
    enum: true

  field :alignment_time, 8, type: Google.Protobuf.Timestamp
  field :order, 9, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupOrder, enum: true
  field :page_size, 11, type: :int32
  field :page_token, 12, type: :string
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ListGroupStatsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_group_stats: [Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupStats.t()],
          next_page_token: String.t(),
          time_range_begin: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:error_group_stats, :next_page_token, :time_range_begin]

  field :error_group_stats, 1,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupStats

  field :next_page_token, 2, type: :string
  field :time_range_begin, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroupStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup.t() | nil,
          count: integer,
          affected_users_count: integer,
          timed_counts: [Google.Devtools.Clouderrorreporting.V1beta1.TimedCount.t()],
          first_seen_time: Google.Protobuf.Timestamp.t() | nil,
          last_seen_time: Google.Protobuf.Timestamp.t() | nil,
          affected_services: [Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext.t()],
          num_affected_services: integer,
          representative: Google.Devtools.Clouderrorreporting.V1beta1.ErrorEvent.t() | nil
        }

  defstruct [
    :group,
    :count,
    :affected_users_count,
    :timed_counts,
    :first_seen_time,
    :last_seen_time,
    :affected_services,
    :num_affected_services,
    :representative
  ]

  field :group, 1, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorGroup
  field :count, 2, type: :int64
  field :affected_users_count, 3, type: :int64

  field :timed_counts, 4,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.TimedCount

  field :first_seen_time, 5, type: Google.Protobuf.Timestamp
  field :last_seen_time, 6, type: Google.Protobuf.Timestamp

  field :affected_services, 7,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContext

  field :num_affected_services, 8, type: :int32
  field :representative, 9, type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorEvent
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.TimedCount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          count: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:count, :start_time, :end_time]

  field :count, 1, type: :int64
  field :start_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ListEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_name: String.t(),
          group_id: String.t(),
          service_filter:
            Google.Devtools.Clouderrorreporting.V1beta1.ServiceContextFilter.t() | nil,
          time_range: Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange.t() | nil,
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project_name, :group_id, :service_filter, :time_range, :page_size, :page_token]

  field :project_name, 1, type: :string
  field :group_id, 2, type: :string
  field :service_filter, 3, type: Google.Devtools.Clouderrorreporting.V1beta1.ServiceContextFilter
  field :time_range, 4, type: Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange
  field :page_size, 6, type: :int32
  field :page_token, 7, type: :string
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ListEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_events: [Google.Devtools.Clouderrorreporting.V1beta1.ErrorEvent.t()],
          next_page_token: String.t(),
          time_range_begin: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:error_events, :next_page_token, :time_range_begin]

  field :error_events, 1,
    repeated: true,
    type: Google.Devtools.Clouderrorreporting.V1beta1.ErrorEvent

  field :next_page_token, 2, type: :string
  field :time_range_begin, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          period: Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange.Period.t()
        }

  defstruct [:period]

  field :period, 1,
    type: Google.Devtools.Clouderrorreporting.V1beta1.QueryTimeRange.Period,
    enum: true
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.ServiceContextFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          version: String.t(),
          resource_type: String.t()
        }

  defstruct [:service, :version, :resource_type]

  field :service, 2, type: :string
  field :version, 3, type: :string
  field :resource_type, 4, type: :string
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.DeleteEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_name: String.t()
        }

  defstruct [:project_name]

  field :project_name, 1, type: :string
end

defmodule Google.Devtools.Clouderrorreporting.V1beta1.DeleteEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
