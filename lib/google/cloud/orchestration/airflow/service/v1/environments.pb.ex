defmodule Google.Cloud.Orchestration.Airflow.Service.V1.Environment.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :RUNNING, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :ERROR, 5
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse.ConflictResult do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :CONFLICT_RESULT_UNSPECIFIED, 0
  field :CONFLICT, 1
  field :NO_CONFLICT, 2
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string
  field :environment, 2, type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ListEnvironmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :environments, 1,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.UpdateEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 2, type: :string
  field :environment, 1, type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.EnvironmentConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gke_cluster, 1, type: :string, json_name: "gkeCluster"
  field :dag_gcs_prefix, 2, type: :string, json_name: "dagGcsPrefix"
  field :node_count, 3, type: :int32, json_name: "nodeCount"

  field :software_config, 4,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig,
    json_name: "softwareConfig"

  field :node_config, 5,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.NodeConfig,
    json_name: "nodeConfig"

  field :private_environment_config, 7,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.PrivateEnvironmentConfig,
    json_name: "privateEnvironmentConfig"

  field :web_server_network_access_control, 8,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl,
    json_name: "webServerNetworkAccessControl",
    deprecated: false

  field :database_config, 9,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.DatabaseConfig,
    json_name: "databaseConfig",
    deprecated: false

  field :web_server_config, 10,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.WebServerConfig,
    json_name: "webServerConfig",
    deprecated: false

  field :encryption_config, 11,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :airflow_uri, 6, type: :string, json_name: "airflowUri"
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl.AllowedIpRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :value, 1, type: :string
  field :description, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :allowed_ip_ranges, 1,
    repeated: true,
    type:
      Google.Cloud.Orchestration.Airflow.Service.V1.WebServerNetworkAccessControl.AllowedIpRange,
    json_name: "allowedIpRanges"
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.DatabaseConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.WebServerConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType", deprecated: false
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.EncryptionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName", deprecated: false
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.AirflowConfigOverridesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.PypiPackagesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.EnvVariablesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :image_version, 1, type: :string, json_name: "imageVersion"

  field :airflow_config_overrides, 2,
    repeated: true,
    type:
      Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.AirflowConfigOverridesEntry,
    json_name: "airflowConfigOverrides",
    map: true

  field :pypi_packages, 3,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.PypiPackagesEntry,
    json_name: "pypiPackages",
    map: true

  field :env_variables, 4,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.SoftwareConfig.EnvVariablesEntry,
    json_name: "envVariables",
    map: true

  field :python_version, 6, type: :string, json_name: "pythonVersion"
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.IPAllocationPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :cluster_ip_allocation, 0
  oneof :services_ip_allocation, 1

  field :use_ip_aliases, 1, type: :bool, json_name: "useIpAliases", deprecated: false

  field :cluster_secondary_range_name, 2,
    type: :string,
    json_name: "clusterSecondaryRangeName",
    oneof: 0,
    deprecated: false

  field :cluster_ipv4_cidr_block, 4,
    type: :string,
    json_name: "clusterIpv4CidrBlock",
    oneof: 0,
    deprecated: false

  field :services_secondary_range_name, 3,
    type: :string,
    json_name: "servicesSecondaryRangeName",
    oneof: 1,
    deprecated: false

  field :services_ipv4_cidr_block, 5,
    type: :string,
    json_name: "servicesIpv4CidrBlock",
    oneof: 1,
    deprecated: false
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.NodeConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :location, 1, type: :string
  field :machine_type, 2, type: :string, json_name: "machineType"
  field :network, 3, type: :string
  field :subnetwork, 4, type: :string
  field :disk_size_gb, 5, type: :int32, json_name: "diskSizeGb"
  field :oauth_scopes, 6, repeated: true, type: :string, json_name: "oauthScopes"
  field :service_account, 7, type: :string, json_name: "serviceAccount"
  field :tags, 8, repeated: true, type: :string

  field :ip_allocation_policy, 9,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.IPAllocationPolicy,
    json_name: "ipAllocationPolicy",
    deprecated: false
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.PrivateClusterConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :enable_private_endpoint, 1,
    type: :bool,
    json_name: "enablePrivateEndpoint",
    deprecated: false

  field :master_ipv4_cidr_block, 2,
    type: :string,
    json_name: "masterIpv4CidrBlock",
    deprecated: false

  field :master_ipv4_reserved_range, 3,
    type: :string,
    json_name: "masterIpv4ReservedRange",
    deprecated: false
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.PrivateEnvironmentConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :enable_private_environment, 1,
    type: :bool,
    json_name: "enablePrivateEnvironment",
    deprecated: false

  field :private_cluster_config, 2,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.PrivateClusterConfig,
    json_name: "privateClusterConfig",
    deprecated: false

  field :web_server_ipv4_cidr_block, 3,
    type: :string,
    json_name: "webServerIpv4CidrBlock",
    deprecated: false

  field :cloud_sql_ipv4_cidr_block, 4,
    type: :string,
    json_name: "cloudSqlIpv4CidrBlock",
    deprecated: false

  field :web_server_ipv4_reserved_range, 5,
    type: :string,
    json_name: "webServerIpv4ReservedRange",
    deprecated: false
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.Environment.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.Environment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :config, 2, type: Google.Cloud.Orchestration.Airflow.Service.V1.EnvironmentConfig
  field :uuid, 3, type: :string

  field :state, 4,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment.State,
    enum: true

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.Environment.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse.PypiDependenciesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :build_log_uri, 1, type: :string, json_name: "buildLogUri", deprecated: false

  field :contains_pypi_modules_conflict, 4,
    type: Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse.ConflictResult,
    json_name: "containsPypiModulesConflict",
    enum: true,
    deprecated: false

  field :pypi_conflict_build_log_extract, 3,
    type: :string,
    json_name: "pypiConflictBuildLogExtract",
    deprecated: false

  field :image_version, 5, type: :string, json_name: "imageVersion"

  field :pypi_dependencies, 6,
    repeated: true,
    type:
      Google.Cloud.Orchestration.Airflow.Service.V1.CheckUpgradeResponse.PypiDependenciesEntry,
    json_name: "pypiDependencies",
    map: true
end
defmodule Google.Cloud.Orchestration.Airflow.Service.V1.Environments.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.orchestration.airflow.service.v1.Environments",
    protoc_gen_elixir_version: "0.10.0"

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
