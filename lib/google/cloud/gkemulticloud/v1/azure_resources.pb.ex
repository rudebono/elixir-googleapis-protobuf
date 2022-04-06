defmodule Google.Cloud.Gkemulticloud.V1.AzureCluster.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PROVISIONING
          | :RUNNING
          | :RECONCILING
          | :STOPPING
          | :ERROR
          | :DEGRADED

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RECONCILING, 3
  field :STOPPING, 4
  field :ERROR, 5
  field :DEGRADED, 6
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureNodePool.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PROVISIONING
          | :RUNNING
          | :RECONCILING
          | :STOPPING
          | :ERROR
          | :DEGRADED

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RECONCILING, 3
  field :STOPPING, 4
  field :ERROR, 5
  field :DEGRADED, 6
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureCluster.AnnotationsEntry do
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
defmodule Google.Cloud.Gkemulticloud.V1.AzureCluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          azure_region: String.t(),
          resource_group_id: String.t(),
          azure_client: String.t(),
          networking: Google.Cloud.Gkemulticloud.V1.AzureClusterNetworking.t() | nil,
          control_plane: Google.Cloud.Gkemulticloud.V1.AzureControlPlane.t() | nil,
          authorization: Google.Cloud.Gkemulticloud.V1.AzureAuthorization.t() | nil,
          state: Google.Cloud.Gkemulticloud.V1.AzureCluster.State.t(),
          endpoint: String.t(),
          uid: String.t(),
          reconciling: boolean,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          annotations: %{String.t() => String.t()},
          workload_identity_config:
            Google.Cloud.Gkemulticloud.V1.WorkloadIdentityConfig.t() | nil,
          cluster_ca_certificate: String.t(),
          fleet: Google.Cloud.Gkemulticloud.V1.Fleet.t() | nil,
          managed_resources: Google.Cloud.Gkemulticloud.V1.AzureClusterResources.t() | nil,
          logging_config: Google.Cloud.Gkemulticloud.V1.LoggingConfig.t() | nil
        }

  defstruct name: "",
            description: "",
            azure_region: "",
            resource_group_id: "",
            azure_client: "",
            networking: nil,
            control_plane: nil,
            authorization: nil,
            state: :STATE_UNSPECIFIED,
            endpoint: "",
            uid: "",
            reconciling: false,
            create_time: nil,
            update_time: nil,
            etag: "",
            annotations: %{},
            workload_identity_config: nil,
            cluster_ca_certificate: "",
            fleet: nil,
            managed_resources: nil,
            logging_config: nil

  field :name, 1, type: :string
  field :description, 2, type: :string, deprecated: false
  field :azure_region, 3, type: :string, json_name: "azureRegion", deprecated: false
  field :resource_group_id, 17, type: :string, json_name: "resourceGroupId", deprecated: false
  field :azure_client, 16, type: :string, json_name: "azureClient", deprecated: false

  field :networking, 4,
    type: Google.Cloud.Gkemulticloud.V1.AzureClusterNetworking,
    deprecated: false

  field :control_plane, 5,
    type: Google.Cloud.Gkemulticloud.V1.AzureControlPlane,
    json_name: "controlPlane",
    deprecated: false

  field :authorization, 6,
    type: Google.Cloud.Gkemulticloud.V1.AzureAuthorization,
    deprecated: false

  field :state, 7,
    type: Google.Cloud.Gkemulticloud.V1.AzureCluster.State,
    enum: true,
    deprecated: false

  field :endpoint, 8, type: :string, deprecated: false
  field :uid, 9, type: :string, deprecated: false
  field :reconciling, 10, type: :bool, deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 13, type: :string

  field :annotations, 14,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureCluster.AnnotationsEntry,
    map: true,
    deprecated: false

  field :workload_identity_config, 18,
    type: Google.Cloud.Gkemulticloud.V1.WorkloadIdentityConfig,
    json_name: "workloadIdentityConfig",
    deprecated: false

  field :cluster_ca_certificate, 19,
    type: :string,
    json_name: "clusterCaCertificate",
    deprecated: false

  field :fleet, 20, type: Google.Cloud.Gkemulticloud.V1.Fleet, deprecated: false

  field :managed_resources, 21,
    type: Google.Cloud.Gkemulticloud.V1.AzureClusterResources,
    json_name: "managedResources",
    deprecated: false

  field :logging_config, 23,
    type: Google.Cloud.Gkemulticloud.V1.LoggingConfig,
    json_name: "loggingConfig",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureClusterNetworking do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          virtual_network_id: String.t(),
          pod_address_cidr_blocks: [String.t()],
          service_address_cidr_blocks: [String.t()],
          service_load_balancer_subnet_id: String.t()
        }

  defstruct virtual_network_id: "",
            pod_address_cidr_blocks: [],
            service_address_cidr_blocks: [],
            service_load_balancer_subnet_id: ""

  field :virtual_network_id, 1, type: :string, json_name: "virtualNetworkId", deprecated: false

  field :pod_address_cidr_blocks, 2,
    repeated: true,
    type: :string,
    json_name: "podAddressCidrBlocks",
    deprecated: false

  field :service_address_cidr_blocks, 3,
    repeated: true,
    type: :string,
    json_name: "serviceAddressCidrBlocks",
    deprecated: false

  field :service_load_balancer_subnet_id, 5,
    type: :string,
    json_name: "serviceLoadBalancerSubnetId",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureControlPlane.TagsEntry do
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
defmodule Google.Cloud.Gkemulticloud.V1.AzureControlPlane do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          subnet_id: String.t(),
          vm_size: String.t(),
          ssh_config: Google.Cloud.Gkemulticloud.V1.AzureSshConfig.t() | nil,
          root_volume: Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate.t() | nil,
          main_volume: Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate.t() | nil,
          database_encryption: Google.Cloud.Gkemulticloud.V1.AzureDatabaseEncryption.t() | nil,
          proxy_config: Google.Cloud.Gkemulticloud.V1.AzureProxyConfig.t() | nil,
          config_encryption: Google.Cloud.Gkemulticloud.V1.AzureConfigEncryption.t() | nil,
          tags: %{String.t() => String.t()},
          replica_placements: [Google.Cloud.Gkemulticloud.V1.ReplicaPlacement.t()],
          endpoint_subnet_id: String.t()
        }

  defstruct version: "",
            subnet_id: "",
            vm_size: "",
            ssh_config: nil,
            root_volume: nil,
            main_volume: nil,
            database_encryption: nil,
            proxy_config: nil,
            config_encryption: nil,
            tags: %{},
            replica_placements: [],
            endpoint_subnet_id: ""

  field :version, 1, type: :string, deprecated: false
  field :subnet_id, 2, type: :string, json_name: "subnetId", deprecated: false
  field :vm_size, 3, type: :string, json_name: "vmSize", deprecated: false

  field :ssh_config, 11,
    type: Google.Cloud.Gkemulticloud.V1.AzureSshConfig,
    json_name: "sshConfig",
    deprecated: false

  field :root_volume, 4,
    type: Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate,
    json_name: "rootVolume",
    deprecated: false

  field :main_volume, 5,
    type: Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate,
    json_name: "mainVolume",
    deprecated: false

  field :database_encryption, 10,
    type: Google.Cloud.Gkemulticloud.V1.AzureDatabaseEncryption,
    json_name: "databaseEncryption",
    deprecated: false

  field :proxy_config, 12,
    type: Google.Cloud.Gkemulticloud.V1.AzureProxyConfig,
    json_name: "proxyConfig",
    deprecated: false

  field :config_encryption, 14,
    type: Google.Cloud.Gkemulticloud.V1.AzureConfigEncryption,
    json_name: "configEncryption",
    deprecated: false

  field :tags, 7,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureControlPlane.TagsEntry,
    map: true,
    deprecated: false

  field :replica_placements, 13,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.ReplicaPlacement,
    json_name: "replicaPlacements",
    deprecated: false

  field :endpoint_subnet_id, 15, type: :string, json_name: "endpointSubnetId", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.ReplicaPlacement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subnet_id: String.t(),
          azure_availability_zone: String.t()
        }

  defstruct subnet_id: "",
            azure_availability_zone: ""

  field :subnet_id, 1, type: :string, json_name: "subnetId", deprecated: false

  field :azure_availability_zone, 2,
    type: :string,
    json_name: "azureAvailabilityZone",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureProxyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_group_id: String.t(),
          secret_id: String.t()
        }

  defstruct resource_group_id: "",
            secret_id: ""

  field :resource_group_id, 1, type: :string, json_name: "resourceGroupId"
  field :secret_id, 2, type: :string, json_name: "secretId"
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureDatabaseEncryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_id: String.t()
        }

  defstruct key_id: ""

  field :key_id, 3, type: :string, json_name: "keyId", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureConfigEncryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key_id: String.t(),
          public_key: String.t()
        }

  defstruct key_id: "",
            public_key: ""

  field :key_id, 2, type: :string, json_name: "keyId", deprecated: false
  field :public_key, 3, type: :string, json_name: "publicKey", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          size_gib: integer
        }

  defstruct size_gib: 0

  field :size_gib, 1, type: :int32, json_name: "sizeGib", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureClient.AnnotationsEntry do
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
defmodule Google.Cloud.Gkemulticloud.V1.AzureClient do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          tenant_id: String.t(),
          application_id: String.t(),
          annotations: %{String.t() => String.t()},
          pem_certificate: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            tenant_id: "",
            application_id: "",
            annotations: %{},
            pem_certificate: "",
            uid: "",
            create_time: nil

  field :name, 1, type: :string
  field :tenant_id, 2, type: :string, json_name: "tenantId", deprecated: false
  field :application_id, 3, type: :string, json_name: "applicationId", deprecated: false

  field :annotations, 8,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureClient.AnnotationsEntry,
    map: true,
    deprecated: false

  field :pem_certificate, 7, type: :string, json_name: "pemCertificate", deprecated: false
  field :uid, 5, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureAuthorization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          admin_users: [Google.Cloud.Gkemulticloud.V1.AzureClusterUser.t()]
        }

  defstruct admin_users: []

  field :admin_users, 1,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureClusterUser,
    json_name: "adminUsers",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureClusterUser do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t()
        }

  defstruct username: ""

  field :username, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureNodePool.AnnotationsEntry do
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
defmodule Google.Cloud.Gkemulticloud.V1.AzureNodePool do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          version: String.t(),
          config: Google.Cloud.Gkemulticloud.V1.AzureNodeConfig.t() | nil,
          subnet_id: String.t(),
          autoscaling: Google.Cloud.Gkemulticloud.V1.AzureNodePoolAutoscaling.t() | nil,
          state: Google.Cloud.Gkemulticloud.V1.AzureNodePool.State.t(),
          uid: String.t(),
          reconciling: boolean,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          annotations: %{String.t() => String.t()},
          max_pods_constraint: Google.Cloud.Gkemulticloud.V1.MaxPodsConstraint.t() | nil,
          azure_availability_zone: String.t()
        }

  defstruct name: "",
            version: "",
            config: nil,
            subnet_id: "",
            autoscaling: nil,
            state: :STATE_UNSPECIFIED,
            uid: "",
            reconciling: false,
            create_time: nil,
            update_time: nil,
            etag: "",
            annotations: %{},
            max_pods_constraint: nil,
            azure_availability_zone: ""

  field :name, 1, type: :string
  field :version, 2, type: :string, deprecated: false
  field :config, 22, type: Google.Cloud.Gkemulticloud.V1.AzureNodeConfig, deprecated: false
  field :subnet_id, 3, type: :string, json_name: "subnetId", deprecated: false

  field :autoscaling, 4,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePoolAutoscaling,
    deprecated: false

  field :state, 6,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePool.State,
    enum: true,
    deprecated: false

  field :uid, 8, type: :string, deprecated: false
  field :reconciling, 9, type: :bool, deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 12, type: :string

  field :annotations, 13,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodePool.AnnotationsEntry,
    map: true,
    deprecated: false

  field :max_pods_constraint, 21,
    type: Google.Cloud.Gkemulticloud.V1.MaxPodsConstraint,
    json_name: "maxPodsConstraint",
    deprecated: false

  field :azure_availability_zone, 23,
    type: :string,
    json_name: "azureAvailabilityZone",
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureNodeConfig.TagsEntry do
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
defmodule Google.Cloud.Gkemulticloud.V1.AzureNodeConfig.LabelsEntry do
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
defmodule Google.Cloud.Gkemulticloud.V1.AzureNodeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          vm_size: String.t(),
          root_volume: Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate.t() | nil,
          tags: %{String.t() => String.t()},
          image_type: String.t(),
          ssh_config: Google.Cloud.Gkemulticloud.V1.AzureSshConfig.t() | nil,
          proxy_config: Google.Cloud.Gkemulticloud.V1.AzureProxyConfig.t() | nil,
          config_encryption: Google.Cloud.Gkemulticloud.V1.AzureConfigEncryption.t() | nil,
          taints: [Google.Cloud.Gkemulticloud.V1.NodeTaint.t()],
          labels: %{String.t() => String.t()}
        }

  defstruct vm_size: "",
            root_volume: nil,
            tags: %{},
            image_type: "",
            ssh_config: nil,
            proxy_config: nil,
            config_encryption: nil,
            taints: [],
            labels: %{}

  field :vm_size, 1, type: :string, json_name: "vmSize", deprecated: false

  field :root_volume, 2,
    type: Google.Cloud.Gkemulticloud.V1.AzureDiskTemplate,
    json_name: "rootVolume",
    deprecated: false

  field :tags, 3,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodeConfig.TagsEntry,
    map: true,
    deprecated: false

  field :image_type, 8, type: :string, json_name: "imageType", deprecated: false

  field :ssh_config, 7,
    type: Google.Cloud.Gkemulticloud.V1.AzureSshConfig,
    json_name: "sshConfig",
    deprecated: false

  field :proxy_config, 9,
    type: Google.Cloud.Gkemulticloud.V1.AzureProxyConfig,
    json_name: "proxyConfig",
    deprecated: false

  field :config_encryption, 12,
    type: Google.Cloud.Gkemulticloud.V1.AzureConfigEncryption,
    json_name: "configEncryption",
    deprecated: false

  field :taints, 10,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.NodeTaint,
    deprecated: false

  field :labels, 11,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureNodeConfig.LabelsEntry,
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureNodePoolAutoscaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_node_count: integer,
          max_node_count: integer
        }

  defstruct min_node_count: 0,
            max_node_count: 0

  field :min_node_count, 1, type: :int32, json_name: "minNodeCount", deprecated: false
  field :max_node_count, 2, type: :int32, json_name: "maxNodeCount", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureServerConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          valid_versions: [Google.Cloud.Gkemulticloud.V1.AzureK8sVersionInfo.t()],
          supported_azure_regions: [String.t()]
        }

  defstruct name: "",
            valid_versions: [],
            supported_azure_regions: []

  field :name, 1, type: :string

  field :valid_versions, 2,
    repeated: true,
    type: Google.Cloud.Gkemulticloud.V1.AzureK8sVersionInfo,
    json_name: "validVersions"

  field :supported_azure_regions, 3,
    repeated: true,
    type: :string,
    json_name: "supportedAzureRegions"
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureK8sVersionInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t()
        }

  defstruct version: ""

  field :version, 1, type: :string
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureSshConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authorized_key: String.t()
        }

  defstruct authorized_key: ""

  field :authorized_key, 1, type: :string, json_name: "authorizedKey", deprecated: false
end
defmodule Google.Cloud.Gkemulticloud.V1.AzureClusterResources do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network_security_group_id: String.t(),
          control_plane_application_security_group_id: String.t()
        }

  defstruct network_security_group_id: "",
            control_plane_application_security_group_id: ""

  field :network_security_group_id, 1,
    type: :string,
    json_name: "networkSecurityGroupId",
    deprecated: false

  field :control_plane_application_security_group_id, 2,
    type: :string,
    json_name: "controlPlaneApplicationSecurityGroupId",
    deprecated: false
end
