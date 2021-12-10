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

  defstruct module_id: ""

  field :module_id, 1, type: :string, json_name: "moduleId"
end
defmodule Google.Monitoring.V3.Service.CloudEndpoints do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t()
        }

  defstruct service: ""

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

  defstruct location: "",
            cluster_name: "",
            service_namespace: "",
            service_name: ""

  field :location, 1, type: :string
  field :cluster_name, 2, type: :string, json_name: "clusterName"
  field :service_namespace, 3, type: :string, json_name: "serviceNamespace"
  field :service_name, 4, type: :string, json_name: "serviceName"
end
defmodule Google.Monitoring.V3.Service.MeshIstio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mesh_uid: String.t(),
          service_namespace: String.t(),
          service_name: String.t()
        }

  defstruct mesh_uid: "",
            service_namespace: "",
            service_name: ""

  field :mesh_uid, 1, type: :string, json_name: "meshUid"
  field :service_namespace, 3, type: :string, json_name: "serviceNamespace"
  field :service_name, 4, type: :string, json_name: "serviceName"
end
defmodule Google.Monitoring.V3.Service.IstioCanonicalService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mesh_uid: String.t(),
          canonical_service_namespace: String.t(),
          canonical_service: String.t()
        }

  defstruct mesh_uid: "",
            canonical_service_namespace: "",
            canonical_service: ""

  field :mesh_uid, 1, type: :string, json_name: "meshUid"
  field :canonical_service_namespace, 3, type: :string, json_name: "canonicalServiceNamespace"
  field :canonical_service, 4, type: :string, json_name: "canonicalService"
end
defmodule Google.Monitoring.V3.Service.Telemetry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Monitoring.V3.Service.UserLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Monitoring.V3.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identifier:
            {:custom, Google.Monitoring.V3.Service.Custom.t() | nil}
            | {:app_engine, Google.Monitoring.V3.Service.AppEngine.t() | nil}
            | {:cloud_endpoints, Google.Monitoring.V3.Service.CloudEndpoints.t() | nil}
            | {:cluster_istio, Google.Monitoring.V3.Service.ClusterIstio.t() | nil}
            | {:mesh_istio, Google.Monitoring.V3.Service.MeshIstio.t() | nil}
            | {:istio_canonical_service,
               Google.Monitoring.V3.Service.IstioCanonicalService.t() | nil},
          name: String.t(),
          display_name: String.t(),
          telemetry: Google.Monitoring.V3.Service.Telemetry.t() | nil,
          user_labels: %{String.t() => String.t()}
        }

  defstruct identifier: nil,
            name: "",
            display_name: "",
            telemetry: nil,
            user_labels: %{}

  oneof :identifier, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :custom, 6, type: Google.Monitoring.V3.Service.Custom, oneof: 0

  field :app_engine, 7,
    type: Google.Monitoring.V3.Service.AppEngine,
    json_name: "appEngine",
    oneof: 0

  field :cloud_endpoints, 8,
    type: Google.Monitoring.V3.Service.CloudEndpoints,
    json_name: "cloudEndpoints",
    oneof: 0

  field :cluster_istio, 9,
    type: Google.Monitoring.V3.Service.ClusterIstio,
    json_name: "clusterIstio",
    oneof: 0

  field :mesh_istio, 10,
    type: Google.Monitoring.V3.Service.MeshIstio,
    json_name: "meshIstio",
    oneof: 0

  field :istio_canonical_service, 11,
    type: Google.Monitoring.V3.Service.IstioCanonicalService,
    json_name: "istioCanonicalService",
    oneof: 0

  field :telemetry, 13, type: Google.Monitoring.V3.Service.Telemetry

  field :user_labels, 14,
    repeated: true,
    type: Google.Monitoring.V3.Service.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end
defmodule Google.Monitoring.V3.ServiceLevelObjective.UserLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Monitoring.V3.ServiceLevelObjective do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          period:
            {:rolling_period, Google.Protobuf.Duration.t() | nil}
            | {:calendar_period, Google.Type.CalendarPeriod.t()},
          name: String.t(),
          display_name: String.t(),
          service_level_indicator: Google.Monitoring.V3.ServiceLevelIndicator.t() | nil,
          goal: float | :infinity | :negative_infinity | :nan,
          user_labels: %{String.t() => String.t()}
        }

  defstruct period: nil,
            name: "",
            display_name: "",
            service_level_indicator: nil,
            goal: 0.0,
            user_labels: %{}

  oneof :period, 0

  field :name, 1, type: :string
  field :display_name, 11, type: :string, json_name: "displayName"

  field :service_level_indicator, 3,
    type: Google.Monitoring.V3.ServiceLevelIndicator,
    json_name: "serviceLevelIndicator"

  field :goal, 4, type: :double
  field :rolling_period, 5, type: Google.Protobuf.Duration, json_name: "rollingPeriod", oneof: 0

  field :calendar_period, 6,
    type: Google.Type.CalendarPeriod,
    json_name: "calendarPeriod",
    enum: true,
    oneof: 0

  field :user_labels, 12,
    repeated: true,
    type: Google.Monitoring.V3.ServiceLevelObjective.UserLabelsEntry,
    json_name: "userLabels",
    map: true
end
defmodule Google.Monitoring.V3.ServiceLevelIndicator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:basic_sli, Google.Monitoring.V3.BasicSli.t() | nil}
            | {:request_based, Google.Monitoring.V3.RequestBasedSli.t() | nil}
            | {:windows_based, Google.Monitoring.V3.WindowsBasedSli.t() | nil}
        }

  defstruct type: nil

  oneof :type, 0

  field :basic_sli, 4, type: Google.Monitoring.V3.BasicSli, json_name: "basicSli", oneof: 0

  field :request_based, 1,
    type: Google.Monitoring.V3.RequestBasedSli,
    json_name: "requestBased",
    oneof: 0

  field :windows_based, 2,
    type: Google.Monitoring.V3.WindowsBasedSli,
    json_name: "windowsBased",
    oneof: 0
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

  defstruct threshold: nil

  field :threshold, 3, type: Google.Protobuf.Duration
end
defmodule Google.Monitoring.V3.BasicSli do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sli_criteria:
            {:availability, Google.Monitoring.V3.BasicSli.AvailabilityCriteria.t() | nil}
            | {:latency, Google.Monitoring.V3.BasicSli.LatencyCriteria.t() | nil},
          method: [String.t()],
          location: [String.t()],
          version: [String.t()]
        }

  defstruct sli_criteria: nil,
            method: [],
            location: [],
            version: []

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

  defstruct min: 0.0,
            max: 0.0

  field :min, 1, type: :double
  field :max, 2, type: :double
end
defmodule Google.Monitoring.V3.RequestBasedSli do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          method:
            {:good_total_ratio, Google.Monitoring.V3.TimeSeriesRatio.t() | nil}
            | {:distribution_cut, Google.Monitoring.V3.DistributionCut.t() | nil}
        }

  defstruct method: nil

  oneof :method, 0

  field :good_total_ratio, 1,
    type: Google.Monitoring.V3.TimeSeriesRatio,
    json_name: "goodTotalRatio",
    oneof: 0

  field :distribution_cut, 3,
    type: Google.Monitoring.V3.DistributionCut,
    json_name: "distributionCut",
    oneof: 0
end
defmodule Google.Monitoring.V3.TimeSeriesRatio do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          good_service_filter: String.t(),
          bad_service_filter: String.t(),
          total_service_filter: String.t()
        }

  defstruct good_service_filter: "",
            bad_service_filter: "",
            total_service_filter: ""

  field :good_service_filter, 4, type: :string, json_name: "goodServiceFilter"
  field :bad_service_filter, 5, type: :string, json_name: "badServiceFilter"
  field :total_service_filter, 6, type: :string, json_name: "totalServiceFilter"
end
defmodule Google.Monitoring.V3.DistributionCut do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          distribution_filter: String.t(),
          range: Google.Monitoring.V3.Range.t() | nil
        }

  defstruct distribution_filter: "",
            range: nil

  field :distribution_filter, 4, type: :string, json_name: "distributionFilter"
  field :range, 5, type: Google.Monitoring.V3.Range
end
defmodule Google.Monitoring.V3.WindowsBasedSli.PerformanceThreshold do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            {:performance, Google.Monitoring.V3.RequestBasedSli.t() | nil}
            | {:basic_sli_performance, Google.Monitoring.V3.BasicSli.t() | nil},
          threshold: float | :infinity | :negative_infinity | :nan
        }

  defstruct type: nil,
            threshold: 0.0

  oneof :type, 0

  field :performance, 1, type: Google.Monitoring.V3.RequestBasedSli, oneof: 0

  field :basic_sli_performance, 3,
    type: Google.Monitoring.V3.BasicSli,
    json_name: "basicSliPerformance",
    oneof: 0

  field :threshold, 2, type: :double
end
defmodule Google.Monitoring.V3.WindowsBasedSli.MetricRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series: String.t(),
          range: Google.Monitoring.V3.Range.t() | nil
        }

  defstruct time_series: "",
            range: nil

  field :time_series, 1, type: :string, json_name: "timeSeries"
  field :range, 4, type: Google.Monitoring.V3.Range
end
defmodule Google.Monitoring.V3.WindowsBasedSli do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          window_criterion:
            {:good_bad_metric_filter, String.t()}
            | {:good_total_ratio_threshold,
               Google.Monitoring.V3.WindowsBasedSli.PerformanceThreshold.t() | nil}
            | {:metric_mean_in_range, Google.Monitoring.V3.WindowsBasedSli.MetricRange.t() | nil}
            | {:metric_sum_in_range, Google.Monitoring.V3.WindowsBasedSli.MetricRange.t() | nil},
          window_period: Google.Protobuf.Duration.t() | nil
        }

  defstruct window_criterion: nil,
            window_period: nil

  oneof :window_criterion, 0

  field :good_bad_metric_filter, 5, type: :string, json_name: "goodBadMetricFilter", oneof: 0

  field :good_total_ratio_threshold, 2,
    type: Google.Monitoring.V3.WindowsBasedSli.PerformanceThreshold,
    json_name: "goodTotalRatioThreshold",
    oneof: 0

  field :metric_mean_in_range, 6,
    type: Google.Monitoring.V3.WindowsBasedSli.MetricRange,
    json_name: "metricMeanInRange",
    oneof: 0

  field :metric_sum_in_range, 7,
    type: Google.Monitoring.V3.WindowsBasedSli.MetricRange,
    json_name: "metricSumInRange",
    oneof: 0

  field :window_period, 4, type: Google.Protobuf.Duration, json_name: "windowPeriod"
end
