defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.EnvironmentConfig.EnvironmentSize do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ENVIRONMENT_SIZE_UNSPECIFIED
          | :ENVIRONMENT_SIZE_SMALL
          | :ENVIRONMENT_SIZE_MEDIUM
          | :ENVIRONMENT_SIZE_LARGE

  field :ENVIRONMENT_SIZE_UNSPECIFIED, 0

  field :ENVIRONMENT_SIZE_SMALL, 1

  field :ENVIRONMENT_SIZE_MEDIUM, 2

  field :ENVIRONMENT_SIZE_LARGE, 3
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :RUNNING | :UPDATING | :DELETING | :ERROR

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :RUNNING, 2

  field :UPDATING, 3

  field :DELETING, 4

  field :ERROR, 5
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.CheckUpgradeResponse.ConflictResult do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONFLICT_RESULT_UNSPECIFIED | :CONFLICT | :NO_CONFLICT

  field :CONFLICT_RESULT_UNSPECIFIED, 0

  field :CONFLICT, 1

  field :NO_CONFLICT, 2
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          environment: Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment.t() | nil
        }

  defstruct [:parent, :environment]

  field :parent, 1, type: :string
  field :environment, 2, type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.ListEnvironmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environments: [Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment.t()],
          next_page_token: String.t()
        }

  defstruct [:environments, :next_page_token]

  field :environments, 1,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.UpdateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          environment: Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :environment, :update_mask]

  field :name, 2, type: :string
  field :environment, 1, type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.RestartWebServerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.EnvironmentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gke_cluster: String.t(),
          dag_gcs_prefix: String.t(),
          node_count: integer,
          software_config:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.SoftwareConfig.t() | nil,
          node_config: Google.Cloud.Orchestration.Airflow.Service.V1beta1.NodeConfig.t() | nil,
          private_environment_config:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.PrivateEnvironmentConfig.t() | nil,
          web_server_network_access_control:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.WebServerNetworkAccessControl.t()
            | nil,
          database_config:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.DatabaseConfig.t() | nil,
          web_server_config:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.WebServerConfig.t() | nil,
          airflow_uri: String.t(),
          encryption_config:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.EncryptionConfig.t() | nil,
          maintenance_window:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.MaintenanceWindow.t() | nil,
          workloads_config:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.t() | nil,
          environment_size:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.EnvironmentConfig.EnvironmentSize.t()
        }

  defstruct [
    :gke_cluster,
    :dag_gcs_prefix,
    :node_count,
    :software_config,
    :node_config,
    :private_environment_config,
    :web_server_network_access_control,
    :database_config,
    :web_server_config,
    :airflow_uri,
    :encryption_config,
    :maintenance_window,
    :workloads_config,
    :environment_size
  ]

  field :gke_cluster, 1, type: :string
  field :dag_gcs_prefix, 2, type: :string
  field :node_count, 3, type: :int32

  field :software_config, 4,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.SoftwareConfig

  field :node_config, 5, type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.NodeConfig

  field :private_environment_config, 7,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.PrivateEnvironmentConfig

  field :web_server_network_access_control, 9,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.WebServerNetworkAccessControl

  field :database_config, 10,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.DatabaseConfig

  field :web_server_config, 11,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.WebServerConfig

  field :airflow_uri, 6, type: :string

  field :encryption_config, 12,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.EncryptionConfig

  field :maintenance_window, 13,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.MaintenanceWindow

  field :workloads_config, 15,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig

  field :environment_size, 16,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.EnvironmentConfig.EnvironmentSize,
    enum: true
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.WebServerNetworkAccessControl.AllowedIpRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: String.t(),
          description: String.t()
        }

  defstruct [:value, :description]

  field :value, 1, type: :string
  field :description, 2, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.WebServerNetworkAccessControl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_ip_ranges: [
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.WebServerNetworkAccessControl.AllowedIpRange.t()
          ]
        }

  defstruct [:allowed_ip_ranges]

  field :allowed_ip_ranges, 1,
    repeated: true,
    type:
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.WebServerNetworkAccessControl.AllowedIpRange
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.SoftwareConfig.AirflowConfigOverridesEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.SoftwareConfig.PypiPackagesEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.SoftwareConfig.EnvVariablesEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.SoftwareConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_version: String.t(),
          airflow_config_overrides: %{String.t() => String.t()},
          pypi_packages: %{String.t() => String.t()},
          env_variables: %{String.t() => String.t()},
          python_version: String.t()
        }

  defstruct [
    :image_version,
    :airflow_config_overrides,
    :pypi_packages,
    :env_variables,
    :python_version
  ]

  field :image_version, 1, type: :string

  field :airflow_config_overrides, 2,
    repeated: true,
    type:
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.SoftwareConfig.AirflowConfigOverridesEntry,
    map: true

  field :pypi_packages, 3,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.SoftwareConfig.PypiPackagesEntry,
    map: true

  field :env_variables, 4,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.SoftwareConfig.EnvVariablesEntry,
    map: true

  field :python_version, 6, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.IPAllocationPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          use_ip_aliases: boolean,
          cluster_secondary_range_name: String.t(),
          services_secondary_range_name: String.t(),
          cluster_ipv4_cidr_block: String.t(),
          services_ipv4_cidr_block: String.t()
        }

  defstruct [
    :use_ip_aliases,
    :cluster_secondary_range_name,
    :services_secondary_range_name,
    :cluster_ipv4_cidr_block,
    :services_ipv4_cidr_block
  ]

  field :use_ip_aliases, 1, type: :bool
  field :cluster_secondary_range_name, 2, type: :string
  field :services_secondary_range_name, 3, type: :string
  field :cluster_ipv4_cidr_block, 4, type: :string
  field :services_ipv4_cidr_block, 5, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.NodeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          machine_type: String.t(),
          network: String.t(),
          subnetwork: String.t(),
          disk_size_gb: integer,
          oauth_scopes: [String.t()],
          service_account: String.t(),
          tags: [String.t()],
          ip_allocation_policy:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.IPAllocationPolicy.t() | nil,
          max_pods_per_node: integer
        }

  defstruct [
    :location,
    :machine_type,
    :network,
    :subnetwork,
    :disk_size_gb,
    :oauth_scopes,
    :service_account,
    :tags,
    :ip_allocation_policy,
    :max_pods_per_node
  ]

  field :location, 1, type: :string
  field :machine_type, 2, type: :string
  field :network, 3, type: :string
  field :subnetwork, 4, type: :string
  field :disk_size_gb, 5, type: :int32
  field :oauth_scopes, 6, repeated: true, type: :string
  field :service_account, 7, type: :string
  field :tags, 8, repeated: true, type: :string

  field :ip_allocation_policy, 9,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.IPAllocationPolicy

  field :max_pods_per_node, 10, type: :int32
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.PrivateClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_private_endpoint: boolean,
          master_ipv4_cidr_block: String.t(),
          master_ipv4_reserved_range: String.t()
        }

  defstruct [:enable_private_endpoint, :master_ipv4_cidr_block, :master_ipv4_reserved_range]

  field :enable_private_endpoint, 1, type: :bool
  field :master_ipv4_cidr_block, 2, type: :string
  field :master_ipv4_reserved_range, 3, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.PrivateEnvironmentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_private_environment: boolean,
          private_cluster_config:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.PrivateClusterConfig.t() | nil,
          web_server_ipv4_cidr_block: String.t(),
          cloud_sql_ipv4_cidr_block: String.t(),
          web_server_ipv4_reserved_range: String.t(),
          cloud_composer_network_ipv4_cidr_block: String.t(),
          cloud_composer_network_ipv4_reserved_range: String.t()
        }

  defstruct [
    :enable_private_environment,
    :private_cluster_config,
    :web_server_ipv4_cidr_block,
    :cloud_sql_ipv4_cidr_block,
    :web_server_ipv4_reserved_range,
    :cloud_composer_network_ipv4_cidr_block,
    :cloud_composer_network_ipv4_reserved_range
  ]

  field :enable_private_environment, 1, type: :bool

  field :private_cluster_config, 2,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.PrivateClusterConfig

  field :web_server_ipv4_cidr_block, 3, type: :string
  field :cloud_sql_ipv4_cidr_block, 4, type: :string
  field :web_server_ipv4_reserved_range, 5, type: :string
  field :cloud_composer_network_ipv4_cidr_block, 7, type: :string
  field :cloud_composer_network_ipv4_reserved_range, 8, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.DatabaseConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t()
        }

  defstruct [:machine_type]

  field :machine_type, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.WebServerConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t()
        }

  defstruct [:machine_type]

  field :machine_type, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.EncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct [:kms_key_name]

  field :kms_key_name, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.MaintenanceWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          recurrence: String.t()
        }

  defstruct [:start_time, :end_time, :recurrence]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :recurrence, 3, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.SchedulerResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu: float | :infinity | :negative_infinity | :nan,
          memory_gb: float | :infinity | :negative_infinity | :nan,
          storage_gb: float | :infinity | :negative_infinity | :nan,
          count: integer
        }

  defstruct [:cpu, :memory_gb, :storage_gb, :count]

  field :cpu, 1, type: :float
  field :memory_gb, 2, type: :float
  field :storage_gb, 3, type: :float
  field :count, 4, type: :int32
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.WebServerResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu: float | :infinity | :negative_infinity | :nan,
          memory_gb: float | :infinity | :negative_infinity | :nan,
          storage_gb: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:cpu, :memory_gb, :storage_gb]

  field :cpu, 1, type: :float
  field :memory_gb, 2, type: :float
  field :storage_gb, 3, type: :float
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.WorkerResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cpu: float | :infinity | :negative_infinity | :nan,
          memory_gb: float | :infinity | :negative_infinity | :nan,
          storage_gb: float | :infinity | :negative_infinity | :nan,
          min_count: integer,
          max_count: integer
        }

  defstruct [:cpu, :memory_gb, :storage_gb, :min_count, :max_count]

  field :cpu, 1, type: :float
  field :memory_gb, 2, type: :float
  field :storage_gb, 3, type: :float
  field :min_count, 4, type: :int32
  field :max_count, 5, type: :int32
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          scheduler:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.SchedulerResource.t()
            | nil,
          web_server:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.WebServerResource.t()
            | nil,
          worker:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.WorkerResource.t()
            | nil
        }

  defstruct [:scheduler, :web_server, :worker]

  field :scheduler, 1,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.SchedulerResource

  field :web_server, 2,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.WebServerResource

  field :worker, 3,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.WorkloadsConfig.WorkerResource
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment.LabelsEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: Google.Cloud.Orchestration.Airflow.Service.V1beta1.EnvironmentConfig.t() | nil,
          uuid: String.t(),
          state: Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :config, :uuid, :state, :create_time, :update_time, :labels]

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.EnvironmentConfig
  field :uuid, 3, type: :string

  field :state, 4,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment.State,
    enum: true

  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.CheckUpgradeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environment: String.t(),
          image_version: String.t()
        }

  defstruct [:environment, :image_version]

  field :environment, 1, type: :string
  field :image_version, 2, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.CheckUpgradeResponse.PypiDependenciesEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.CheckUpgradeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_log_uri: String.t(),
          contains_pypi_modules_conflict:
            Google.Cloud.Orchestration.Airflow.Service.V1beta1.CheckUpgradeResponse.ConflictResult.t(),
          pypi_conflict_build_log_extract: String.t(),
          image_version: String.t(),
          pypi_dependencies: %{String.t() => String.t()}
        }

  defstruct [
    :build_log_uri,
    :contains_pypi_modules_conflict,
    :pypi_conflict_build_log_extract,
    :image_version,
    :pypi_dependencies
  ]

  field :build_log_uri, 1, type: :string

  field :contains_pypi_modules_conflict, 4,
    type: Google.Cloud.Orchestration.Airflow.Service.V1beta1.CheckUpgradeResponse.ConflictResult,
    enum: true

  field :pypi_conflict_build_log_extract, 3, type: :string
  field :image_version, 5, type: :string

  field :pypi_dependencies, 6,
    repeated: true,
    type:
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.CheckUpgradeResponse.PypiDependenciesEntry,
    map: true
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environments.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.orchestration.airflow.service.v1beta1.Environments"

  rpc :CreateEnvironment,
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.CreateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :GetEnvironment,
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.GetEnvironmentRequest,
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environment

  rpc :ListEnvironments,
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.ListEnvironmentsRequest,
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.ListEnvironmentsResponse

  rpc :UpdateEnvironment,
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.UpdateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteEnvironment,
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.DeleteEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :RestartWebServer,
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.RestartWebServerRequest,
      Google.Longrunning.Operation

  rpc :CheckUpgrade,
      Google.Cloud.Orchestration.Airflow.Service.V1beta1.CheckUpgradeRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Orchestration.Airflow.Service.V1beta1.Environments.Service
end
