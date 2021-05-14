defmodule Google.Appengine.V1.InboundServiceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INBOUND_SERVICE_UNSPECIFIED
          | :INBOUND_SERVICE_MAIL
          | :INBOUND_SERVICE_MAIL_BOUNCE
          | :INBOUND_SERVICE_XMPP_ERROR
          | :INBOUND_SERVICE_XMPP_MESSAGE
          | :INBOUND_SERVICE_XMPP_SUBSCRIBE
          | :INBOUND_SERVICE_XMPP_PRESENCE
          | :INBOUND_SERVICE_CHANNEL_PRESENCE
          | :INBOUND_SERVICE_WARMUP

  field :INBOUND_SERVICE_UNSPECIFIED, 0

  field :INBOUND_SERVICE_MAIL, 1

  field :INBOUND_SERVICE_MAIL_BOUNCE, 2

  field :INBOUND_SERVICE_XMPP_ERROR, 3

  field :INBOUND_SERVICE_XMPP_MESSAGE, 4

  field :INBOUND_SERVICE_XMPP_SUBSCRIBE, 5

  field :INBOUND_SERVICE_XMPP_PRESENCE, 6

  field :INBOUND_SERVICE_CHANNEL_PRESENCE, 7

  field :INBOUND_SERVICE_WARMUP, 9
end

defmodule Google.Appengine.V1.ServingStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :SERVING_STATUS_UNSPECIFIED | :SERVING | :STOPPED

  field :SERVING_STATUS_UNSPECIFIED, 0

  field :SERVING, 1

  field :STOPPED, 2
end

defmodule Google.Appengine.V1.EndpointsApiService.RolloutStrategy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED_ROLLOUT_STRATEGY | :FIXED | :MANAGED

  field :UNSPECIFIED_ROLLOUT_STRATEGY, 0

  field :FIXED, 1

  field :MANAGED, 2
end

defmodule Google.Appengine.V1.Version.BetaSettingsEntry do
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

defmodule Google.Appengine.V1.Version.EnvVariablesEntry do
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

defmodule Google.Appengine.V1.Version.BuildEnvVariablesEntry do
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

defmodule Google.Appengine.V1.Version do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scaling: {atom, any},
          name: String.t(),
          id: String.t(),
          inbound_services: [[Google.Appengine.V1.InboundServiceType.t()]],
          instance_class: String.t(),
          network: Google.Appengine.V1.Network.t() | nil,
          zones: [String.t()],
          resources: Google.Appengine.V1.Resources.t() | nil,
          runtime: String.t(),
          runtime_channel: String.t(),
          threadsafe: boolean,
          vm: boolean,
          beta_settings: %{String.t() => String.t()},
          env: String.t(),
          serving_status: Google.Appengine.V1.ServingStatus.t(),
          created_by: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          disk_usage_bytes: integer,
          runtime_api_version: String.t(),
          runtime_main_executable_path: String.t(),
          service_account: String.t(),
          handlers: [Google.Appengine.V1.UrlMap.t()],
          error_handlers: [Google.Appengine.V1.ErrorHandler.t()],
          libraries: [Google.Appengine.V1.Library.t()],
          api_config: Google.Appengine.V1.ApiConfigHandler.t() | nil,
          env_variables: %{String.t() => String.t()},
          build_env_variables: %{String.t() => String.t()},
          default_expiration: Google.Protobuf.Duration.t() | nil,
          health_check: Google.Appengine.V1.HealthCheck.t() | nil,
          readiness_check: Google.Appengine.V1.ReadinessCheck.t() | nil,
          liveness_check: Google.Appengine.V1.LivenessCheck.t() | nil,
          nobuild_files_regex: String.t(),
          deployment: Google.Appengine.V1.Deployment.t() | nil,
          version_url: String.t(),
          endpoints_api_service: Google.Appengine.V1.EndpointsApiService.t() | nil,
          entrypoint: Google.Appengine.V1.Entrypoint.t() | nil,
          vpc_access_connector: Google.Appengine.V1.VpcAccessConnector.t() | nil
        }

  defstruct [
    :scaling,
    :name,
    :id,
    :inbound_services,
    :instance_class,
    :network,
    :zones,
    :resources,
    :runtime,
    :runtime_channel,
    :threadsafe,
    :vm,
    :beta_settings,
    :env,
    :serving_status,
    :created_by,
    :create_time,
    :disk_usage_bytes,
    :runtime_api_version,
    :runtime_main_executable_path,
    :service_account,
    :handlers,
    :error_handlers,
    :libraries,
    :api_config,
    :env_variables,
    :build_env_variables,
    :default_expiration,
    :health_check,
    :readiness_check,
    :liveness_check,
    :nobuild_files_regex,
    :deployment,
    :version_url,
    :endpoints_api_service,
    :entrypoint,
    :vpc_access_connector
  ]

  oneof :scaling, 0
  field :name, 1, type: :string
  field :id, 2, type: :string
  field :automatic_scaling, 3, type: Google.Appengine.V1.AutomaticScaling, oneof: 0
  field :basic_scaling, 4, type: Google.Appengine.V1.BasicScaling, oneof: 0
  field :manual_scaling, 5, type: Google.Appengine.V1.ManualScaling, oneof: 0

  field :inbound_services, 6,
    repeated: true,
    type: Google.Appengine.V1.InboundServiceType,
    enum: true

  field :instance_class, 7, type: :string
  field :network, 8, type: Google.Appengine.V1.Network
  field :zones, 118, repeated: true, type: :string
  field :resources, 9, type: Google.Appengine.V1.Resources
  field :runtime, 10, type: :string
  field :runtime_channel, 117, type: :string
  field :threadsafe, 11, type: :bool
  field :vm, 12, type: :bool

  field :beta_settings, 13,
    repeated: true,
    type: Google.Appengine.V1.Version.BetaSettingsEntry,
    map: true

  field :env, 14, type: :string
  field :serving_status, 15, type: Google.Appengine.V1.ServingStatus, enum: true
  field :created_by, 16, type: :string
  field :create_time, 17, type: Google.Protobuf.Timestamp
  field :disk_usage_bytes, 18, type: :int64
  field :runtime_api_version, 21, type: :string
  field :runtime_main_executable_path, 22, type: :string
  field :service_account, 127, type: :string
  field :handlers, 100, repeated: true, type: Google.Appengine.V1.UrlMap
  field :error_handlers, 101, repeated: true, type: Google.Appengine.V1.ErrorHandler
  field :libraries, 102, repeated: true, type: Google.Appengine.V1.Library
  field :api_config, 103, type: Google.Appengine.V1.ApiConfigHandler

  field :env_variables, 104,
    repeated: true,
    type: Google.Appengine.V1.Version.EnvVariablesEntry,
    map: true

  field :build_env_variables, 125,
    repeated: true,
    type: Google.Appengine.V1.Version.BuildEnvVariablesEntry,
    map: true

  field :default_expiration, 105, type: Google.Protobuf.Duration
  field :health_check, 106, type: Google.Appengine.V1.HealthCheck
  field :readiness_check, 112, type: Google.Appengine.V1.ReadinessCheck
  field :liveness_check, 113, type: Google.Appengine.V1.LivenessCheck
  field :nobuild_files_regex, 107, type: :string
  field :deployment, 108, type: Google.Appengine.V1.Deployment
  field :version_url, 109, type: :string
  field :endpoints_api_service, 110, type: Google.Appengine.V1.EndpointsApiService
  field :entrypoint, 122, type: Google.Appengine.V1.Entrypoint
  field :vpc_access_connector, 121, type: Google.Appengine.V1.VpcAccessConnector
end

defmodule Google.Appengine.V1.EndpointsApiService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config_id: String.t(),
          rollout_strategy: Google.Appengine.V1.EndpointsApiService.RolloutStrategy.t(),
          disable_trace_sampling: boolean
        }

  defstruct [:name, :config_id, :rollout_strategy, :disable_trace_sampling]

  field :name, 1, type: :string
  field :config_id, 2, type: :string

  field :rollout_strategy, 3,
    type: Google.Appengine.V1.EndpointsApiService.RolloutStrategy,
    enum: true

  field :disable_trace_sampling, 4, type: :bool
end

defmodule Google.Appengine.V1.AutomaticScaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cool_down_period: Google.Protobuf.Duration.t() | nil,
          cpu_utilization: Google.Appengine.V1.CpuUtilization.t() | nil,
          max_concurrent_requests: integer,
          max_idle_instances: integer,
          max_total_instances: integer,
          max_pending_latency: Google.Protobuf.Duration.t() | nil,
          min_idle_instances: integer,
          min_total_instances: integer,
          min_pending_latency: Google.Protobuf.Duration.t() | nil,
          request_utilization: Google.Appengine.V1.RequestUtilization.t() | nil,
          disk_utilization: Google.Appengine.V1.DiskUtilization.t() | nil,
          network_utilization: Google.Appengine.V1.NetworkUtilization.t() | nil,
          standard_scheduler_settings: Google.Appengine.V1.StandardSchedulerSettings.t() | nil
        }

  defstruct [
    :cool_down_period,
    :cpu_utilization,
    :max_concurrent_requests,
    :max_idle_instances,
    :max_total_instances,
    :max_pending_latency,
    :min_idle_instances,
    :min_total_instances,
    :min_pending_latency,
    :request_utilization,
    :disk_utilization,
    :network_utilization,
    :standard_scheduler_settings
  ]

  field :cool_down_period, 1, type: Google.Protobuf.Duration
  field :cpu_utilization, 2, type: Google.Appengine.V1.CpuUtilization
  field :max_concurrent_requests, 3, type: :int32
  field :max_idle_instances, 4, type: :int32
  field :max_total_instances, 5, type: :int32
  field :max_pending_latency, 6, type: Google.Protobuf.Duration
  field :min_idle_instances, 7, type: :int32
  field :min_total_instances, 8, type: :int32
  field :min_pending_latency, 9, type: Google.Protobuf.Duration
  field :request_utilization, 10, type: Google.Appengine.V1.RequestUtilization
  field :disk_utilization, 11, type: Google.Appengine.V1.DiskUtilization
  field :network_utilization, 12, type: Google.Appengine.V1.NetworkUtilization
  field :standard_scheduler_settings, 20, type: Google.Appengine.V1.StandardSchedulerSettings
end

defmodule Google.Appengine.V1.BasicScaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          idle_timeout: Google.Protobuf.Duration.t() | nil,
          max_instances: integer
        }

  defstruct [:idle_timeout, :max_instances]

  field :idle_timeout, 1, type: Google.Protobuf.Duration
  field :max_instances, 2, type: :int32
end

defmodule Google.Appengine.V1.ManualScaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: integer
        }

  defstruct [:instances]

  field :instances, 1, type: :int32
end

defmodule Google.Appengine.V1.CpuUtilization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          aggregation_window_length: Google.Protobuf.Duration.t() | nil,
          target_utilization: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:aggregation_window_length, :target_utilization]

  field :aggregation_window_length, 1, type: Google.Protobuf.Duration
  field :target_utilization, 2, type: :double
end

defmodule Google.Appengine.V1.RequestUtilization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_request_count_per_second: integer,
          target_concurrent_requests: integer
        }

  defstruct [:target_request_count_per_second, :target_concurrent_requests]

  field :target_request_count_per_second, 1, type: :int32
  field :target_concurrent_requests, 2, type: :int32
end

defmodule Google.Appengine.V1.DiskUtilization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_write_bytes_per_second: integer,
          target_write_ops_per_second: integer,
          target_read_bytes_per_second: integer,
          target_read_ops_per_second: integer
        }

  defstruct [
    :target_write_bytes_per_second,
    :target_write_ops_per_second,
    :target_read_bytes_per_second,
    :target_read_ops_per_second
  ]

  field :target_write_bytes_per_second, 14, type: :int32
  field :target_write_ops_per_second, 15, type: :int32
  field :target_read_bytes_per_second, 16, type: :int32
  field :target_read_ops_per_second, 17, type: :int32
end

defmodule Google.Appengine.V1.NetworkUtilization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_sent_bytes_per_second: integer,
          target_sent_packets_per_second: integer,
          target_received_bytes_per_second: integer,
          target_received_packets_per_second: integer
        }

  defstruct [
    :target_sent_bytes_per_second,
    :target_sent_packets_per_second,
    :target_received_bytes_per_second,
    :target_received_packets_per_second
  ]

  field :target_sent_bytes_per_second, 1, type: :int32
  field :target_sent_packets_per_second, 11, type: :int32
  field :target_received_bytes_per_second, 12, type: :int32
  field :target_received_packets_per_second, 13, type: :int32
end

defmodule Google.Appengine.V1.StandardSchedulerSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpu_utilization: float | :infinity | :negative_infinity | :nan,
          target_throughput_utilization: float | :infinity | :negative_infinity | :nan,
          min_instances: integer,
          max_instances: integer
        }

  defstruct [
    :target_cpu_utilization,
    :target_throughput_utilization,
    :min_instances,
    :max_instances
  ]

  field :target_cpu_utilization, 1, type: :double
  field :target_throughput_utilization, 2, type: :double
  field :min_instances, 3, type: :int32
  field :max_instances, 4, type: :int32
end

defmodule Google.Appengine.V1.Network do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          forwarded_ports: [String.t()],
          instance_tag: String.t(),
          name: String.t(),
          subnetwork_name: String.t(),
          session_affinity: boolean
        }

  defstruct [:forwarded_ports, :instance_tag, :name, :subnetwork_name, :session_affinity]

  field :forwarded_ports, 1, repeated: true, type: :string
  field :instance_tag, 2, type: :string
  field :name, 3, type: :string
  field :subnetwork_name, 4, type: :string
  field :session_affinity, 5, type: :bool
end

defmodule Google.Appengine.V1.Volume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          volume_type: String.t(),
          size_gb: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:name, :volume_type, :size_gb]

  field :name, 1, type: :string
  field :volume_type, 2, type: :string
  field :size_gb, 3, type: :double
end

defmodule Google.Appengine.V1.Resources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu: float | :infinity | :negative_infinity | :nan,
          disk_gb: float | :infinity | :negative_infinity | :nan,
          memory_gb: float | :infinity | :negative_infinity | :nan,
          volumes: [Google.Appengine.V1.Volume.t()],
          kms_key_reference: String.t()
        }

  defstruct [:cpu, :disk_gb, :memory_gb, :volumes, :kms_key_reference]

  field :cpu, 1, type: :double
  field :disk_gb, 2, type: :double
  field :memory_gb, 3, type: :double
  field :volumes, 4, repeated: true, type: Google.Appengine.V1.Volume
  field :kms_key_reference, 5, type: :string
end

defmodule Google.Appengine.V1.VpcAccessConnector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Appengine.V1.Entrypoint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          command: {atom, any}
        }

  defstruct [:command]

  oneof :command, 0
  field :shell, 1, type: :string, oneof: 0
end
