defmodule Google.Monitoring.V3.ServiceLevelObjective.View do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :VIEW_UNSPECIFIED | :FULL | :EXPLICIT

  field :VIEW_UNSPECIFIED, 0

  field :FULL, 2

  field :EXPLICIT, 1
end

defmodule Google.Monitoring.V3.Service.Custom do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Monitoring.V3.Service.AppEngine do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          module_id: String.t()
        }

  defstruct [:module_id]

  field :module_id, 1, type: :string
end

defmodule Google.Monitoring.V3.Service.CloudEndpoints do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t()
        }

  defstruct [:service]

  field :service, 1, type: :string
end

defmodule Google.Monitoring.V3.Service.ClusterIstio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          cluster_name: String.t(),
          service_namespace: String.t(),
          service_name: String.t()
        }

  defstruct [:location, :cluster_name, :service_namespace, :service_name]

  field :location, 1, type: :string
  field :cluster_name, 2, type: :string
  field :service_namespace, 3, type: :string
  field :service_name, 4, type: :string
end

defmodule Google.Monitoring.V3.Service.MeshIstio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mesh_uid: String.t(),
          service_namespace: String.t(),
          service_name: String.t()
        }

  defstruct [:mesh_uid, :service_namespace, :service_name]

  field :mesh_uid, 1, type: :string
  field :service_namespace, 3, type: :string
  field :service_name, 4, type: :string
end

defmodule Google.Monitoring.V3.Service.IstioCanonicalService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mesh_uid: String.t(),
          canonical_service_namespace: String.t(),
          canonical_service: String.t()
        }

  defstruct [:mesh_uid, :canonical_service_namespace, :canonical_service]

  field :mesh_uid, 1, type: :string
  field :canonical_service_namespace, 3, type: :string
  field :canonical_service, 4, type: :string
end

defmodule Google.Monitoring.V3.Service.Telemetry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Monitoring.V3.Service.UserLabelsEntry do
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

defmodule Google.Monitoring.V3.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identifier: {atom, any},
          name: String.t(),
          display_name: String.t(),
          telemetry: Google.Monitoring.V3.Service.Telemetry.t() | nil,
          user_labels: %{String.t() => String.t()}
        }

  defstruct [:identifier, :name, :display_name, :telemetry, :user_labels]

  oneof :identifier, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :custom, 6, type: Google.Monitoring.V3.Service.Custom, oneof: 0
  field :app_engine, 7, type: Google.Monitoring.V3.Service.AppEngine, oneof: 0
  field :cloud_endpoints, 8, type: Google.Monitoring.V3.Service.CloudEndpoints, oneof: 0
  field :cluster_istio, 9, type: Google.Monitoring.V3.Service.ClusterIstio, oneof: 0
  field :mesh_istio, 10, type: Google.Monitoring.V3.Service.MeshIstio, oneof: 0

  field :istio_canonical_service, 11,
    type: Google.Monitoring.V3.Service.IstioCanonicalService,
    oneof: 0

  field :telemetry, 13, type: Google.Monitoring.V3.Service.Telemetry

  field :user_labels, 14,
    repeated: true,
    type: Google.Monitoring.V3.Service.UserLabelsEntry,
    map: true
end

defmodule Google.Monitoring.V3.ServiceLevelObjective.UserLabelsEntry do
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

defmodule Google.Monitoring.V3.ServiceLevelObjective do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          period: {atom, any},
          name: String.t(),
          display_name: String.t(),
          service_level_indicator: Google.Monitoring.V3.ServiceLevelIndicator.t() | nil,
          goal: float | :infinity | :negative_infinity | :nan,
          user_labels: %{String.t() => String.t()}
        }

  defstruct [:period, :name, :display_name, :service_level_indicator, :goal, :user_labels]

  oneof :period, 0
  field :name, 1, type: :string
  field :display_name, 11, type: :string
  field :service_level_indicator, 3, type: Google.Monitoring.V3.ServiceLevelIndicator
  field :goal, 4, type: :double
  field :rolling_period, 5, type: Google.Protobuf.Duration, oneof: 0
  field :calendar_period, 6, type: Google.Type.CalendarPeriod, enum: true, oneof: 0

  field :user_labels, 12,
    repeated: true,
    type: Google.Monitoring.V3.ServiceLevelObjective.UserLabelsEntry,
    map: true
end

defmodule Google.Monitoring.V3.ServiceLevelIndicator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {atom, any}
        }

  defstruct [:type]

  oneof :type, 0
  field :basic_sli, 4, type: Google.Monitoring.V3.BasicSli, oneof: 0
  field :request_based, 1, type: Google.Monitoring.V3.RequestBasedSli, oneof: 0
  field :windows_based, 2, type: Google.Monitoring.V3.WindowsBasedSli, oneof: 0
end

defmodule Google.Monitoring.V3.BasicSli.AvailabilityCriteria do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Monitoring.V3.BasicSli.LatencyCriteria do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threshold: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:threshold]

  field :threshold, 3, type: Google.Protobuf.Duration
end

defmodule Google.Monitoring.V3.BasicSli do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sli_criteria: {atom, any},
          method: [String.t()],
          location: [String.t()],
          version: [String.t()]
        }

  defstruct [:sli_criteria, :method, :location, :version]

  oneof :sli_criteria, 0
  field :method, 7, repeated: true, type: :string
  field :location, 8, repeated: true, type: :string
  field :version, 9, repeated: true, type: :string
  field :availability, 2, type: Google.Monitoring.V3.BasicSli.AvailabilityCriteria, oneof: 0
  field :latency, 3, type: Google.Monitoring.V3.BasicSli.LatencyCriteria, oneof: 0
end

defmodule Google.Monitoring.V3.Range do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min: float | :infinity | :negative_infinity | :nan,
          max: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:min, :max]

  field :min, 1, type: :double
  field :max, 2, type: :double
end

defmodule Google.Monitoring.V3.RequestBasedSli do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method: {atom, any}
        }

  defstruct [:method]

  oneof :method, 0
  field :good_total_ratio, 1, type: Google.Monitoring.V3.TimeSeriesRatio, oneof: 0
  field :distribution_cut, 3, type: Google.Monitoring.V3.DistributionCut, oneof: 0
end

defmodule Google.Monitoring.V3.TimeSeriesRatio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          good_service_filter: String.t(),
          bad_service_filter: String.t(),
          total_service_filter: String.t()
        }

  defstruct [:good_service_filter, :bad_service_filter, :total_service_filter]

  field :good_service_filter, 4, type: :string
  field :bad_service_filter, 5, type: :string
  field :total_service_filter, 6, type: :string
end

defmodule Google.Monitoring.V3.DistributionCut do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          distribution_filter: String.t(),
          range: Google.Monitoring.V3.Range.t() | nil
        }

  defstruct [:distribution_filter, :range]

  field :distribution_filter, 4, type: :string
  field :range, 5, type: Google.Monitoring.V3.Range
end

defmodule Google.Monitoring.V3.WindowsBasedSli.PerformanceThreshold do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: {atom, any},
          threshold: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:type, :threshold]

  oneof :type, 0
  field :performance, 1, type: Google.Monitoring.V3.RequestBasedSli, oneof: 0
  field :basic_sli_performance, 3, type: Google.Monitoring.V3.BasicSli, oneof: 0
  field :threshold, 2, type: :double
end

defmodule Google.Monitoring.V3.WindowsBasedSli.MetricRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series: String.t(),
          range: Google.Monitoring.V3.Range.t() | nil
        }

  defstruct [:time_series, :range]

  field :time_series, 1, type: :string
  field :range, 4, type: Google.Monitoring.V3.Range
end

defmodule Google.Monitoring.V3.WindowsBasedSli do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          window_criterion: {atom, any},
          window_period: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:window_criterion, :window_period]

  oneof :window_criterion, 0
  field :good_bad_metric_filter, 5, type: :string, oneof: 0

  field :good_total_ratio_threshold, 2,
    type: Google.Monitoring.V3.WindowsBasedSli.PerformanceThreshold,
    oneof: 0

  field :metric_mean_in_range, 6, type: Google.Monitoring.V3.WindowsBasedSli.MetricRange, oneof: 0
  field :metric_sum_in_range, 7, type: Google.Monitoring.V3.WindowsBasedSli.MetricRange, oneof: 0
  field :window_period, 4, type: Google.Protobuf.Duration
end
