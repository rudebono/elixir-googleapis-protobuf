defmodule Google.Cloud.Orchestration.Airflow.Service.V1.Environment.State do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse.ConflictResult do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CONFLICT_RESULT_UNSPECIFIED | :CONFLICT | :NO_CONFLICT

  field :CONFLICT_RESULT_UNSPECIFIED, 0

  field :CONFLICT, 1

  field :NO_CONFLICT, 2
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          environment: Google.Cloud.Orchestration.Airflow.Service.V1.Environment.t() | nil
        }

  defstruct [:parent, :environment]

  field :parent, 1, type: :string
  field :environment, 2, type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ListEnvironmentsRequest do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environments: [Google.Cloud.Orchestration.Airflow.Service.V1.Environment.t()],
          next_page_token: String.t()
        }

  defstruct [:environments, :next_page_token]

  field :environments, 1,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.UpdateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          environment: Google.Cloud.Orchestration.Airflow.Service.V1.Environment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :environment, :update_mask]

  field :name, 2, type: :string
  field :environment, 1, type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.EnvironmentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gke_cluster: String.t(),
          dag_gcs_prefix: String.t(),
          node_count: integer,
          software_config: Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.t() | nil,
          node_config: Google.Cloud.Orchestration.Airflow.Service.V1.NodeConfig.t() | nil,
          private_environment_config:
            Google.Cloud.Orchestration.Airflow.Service.V1.PrivateEnvironmentConfig.t() | nil,
          web_server_network_access_control:
            Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl.t() | nil,
          database_config: Google.Cloud.Orchestration.Airflow.Service.V1.DatabaseConfig.t() | nil,
          web_server_config:
            Google.Cloud.Orchestration.Airflow.Service.V1.WebServerConfig.t() | nil,
          encryption_config:
            Google.Cloud.Orchestration.Airflow.Service.V1.EncryptionConfig.t() | nil,
          airflow_uri: String.t()
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
    :encryption_config,
    :airflow_uri
  ]

  field :gke_cluster, 1, type: :string
  field :dag_gcs_prefix, 2, type: :string
  field :node_count, 3, type: :int32
  field :software_config, 4, type: Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig
  field :node_config, 5, type: Google.Cloud.Orchestration.Airflow.Service.V1.NodeConfig

  field :private_environment_config, 7,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.PrivateEnvironmentConfig

  field :web_server_network_access_control, 8,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl

  field :database_config, 9, type: Google.Cloud.Orchestration.Airflow.Service.V1.DatabaseConfig

  field :web_server_config, 10,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.WebServerConfig

  field :encryption_config, 11,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.EncryptionConfig

  field :airflow_uri, 6, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl.AllowedIpRange do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_ip_ranges: [
            Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl.AllowedIpRange.t()
          ]
        }

  defstruct [:allowed_ip_ranges]

  field :allowed_ip_ranges, 1,
    repeated: true,
    type:
      Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl.AllowedIpRange
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.DatabaseConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t()
        }

  defstruct [:machine_type]

  field :machine_type, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.WebServerConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t()
        }

  defstruct [:machine_type]

  field :machine_type, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.EncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t()
        }

  defstruct [:kms_key_name]

  field :kms_key_name, 1, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.AirflowConfigOverridesEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.PypiPackagesEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.EnvVariablesEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig do
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
      Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.AirflowConfigOverridesEntry,
    map: true

  field :pypi_packages, 3,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.PypiPackagesEntry,
    map: true

  field :env_variables, 4,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.EnvVariablesEntry,
    map: true

  field :python_version, 6, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.IPAllocationPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cluster_ip_allocation: {atom, any},
          services_ip_allocation: {atom, any},
          use_ip_aliases: boolean
        }

  defstruct [:cluster_ip_allocation, :services_ip_allocation, :use_ip_aliases]

  oneof :cluster_ip_allocation, 0
  oneof :services_ip_allocation, 1
  field :use_ip_aliases, 1, type: :bool
  field :cluster_secondary_range_name, 2, type: :string, oneof: 0
  field :cluster_ipv4_cidr_block, 4, type: :string, oneof: 0
  field :services_secondary_range_name, 3, type: :string, oneof: 1
  field :services_ipv4_cidr_block, 5, type: :string, oneof: 1
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.NodeConfig do
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
            Google.Cloud.Orchestration.Airflow.Service.V1.IPAllocationPolicy.t() | nil
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
    :ip_allocation_policy
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
    type: Google.Cloud.Orchestration.Airflow.Service.V1.IPAllocationPolicy
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.PrivateClusterConfig do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.PrivateEnvironmentConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_private_environment: boolean,
          private_cluster_config:
            Google.Cloud.Orchestration.Airflow.Service.V1.PrivateClusterConfig.t() | nil,
          web_server_ipv4_cidr_block: String.t(),
          cloud_sql_ipv4_cidr_block: String.t(),
          web_server_ipv4_reserved_range: String.t()
        }

  defstruct [
    :enable_private_environment,
    :private_cluster_config,
    :web_server_ipv4_cidr_block,
    :cloud_sql_ipv4_cidr_block,
    :web_server_ipv4_reserved_range
  ]

  field :enable_private_environment, 1, type: :bool

  field :private_cluster_config, 2,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.PrivateClusterConfig

  field :web_server_ipv4_cidr_block, 3, type: :string
  field :cloud_sql_ipv4_cidr_block, 4, type: :string
  field :web_server_ipv4_reserved_range, 5, type: :string
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.Environment.LabelsEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.Environment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: Google.Cloud.Orchestration.Airflow.Service.V1.EnvironmentConfig.t() | nil,
          uuid: String.t(),
          state: Google.Cloud.Orchestration.Airflow.Service.V1.Environment.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :config, :uuid, :state, :create_time, :update_time, :labels]

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Orchestration.Airflow.Service.V1.EnvironmentConfig
  field :uuid, 3, type: :string

  field :state, 4,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment.State,
    enum: true

  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :update_time, 6, type: Google.Protobuf.Timestamp

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse.PypiDependenciesEntry do
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

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_log_uri: String.t(),
          contains_pypi_modules_conflict:
            Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse.ConflictResult.t(),
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
    type: Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse.ConflictResult,
    enum: true

  field :pypi_conflict_build_log_extract, 3, type: :string
  field :image_version, 5, type: :string

  field :pypi_dependencies, 6,
    repeated: true,
    type:
      Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse.PypiDependenciesEntry,
    map: true
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.Environments.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.orchestration.airflow.service.v1.Environments"

  rpc :CreateEnvironment,
      Google.Cloud.Orchestration.Airflow.Service.V1.CreateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :GetEnvironment,
      Google.Cloud.Orchestration.Airflow.Service.V1.GetEnvironmentRequest,
      Google.Cloud.Orchestration.Airflow.Service.V1.Environment

  rpc :ListEnvironments,
      Google.Cloud.Orchestration.Airflow.Service.V1.ListEnvironmentsRequest,
      Google.Cloud.Orchestration.Airflow.Service.V1.ListEnvironmentsResponse

  rpc :UpdateEnvironment,
      Google.Cloud.Orchestration.Airflow.Service.V1.UpdateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteEnvironment,
      Google.Cloud.Orchestration.Airflow.Service.V1.DeleteEnvironmentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Orchestration.Airflow.Service.V1.Environments.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Orchestration.Airflow.Service.V1.Environments.Service
end
