defmodule Google.Container.V1.SandboxConfig.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :GVISOR

  field :UNSPECIFIED, 0

  field :GVISOR, 1
end

defmodule Google.Container.V1.ReservationAffinity.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :NO_RESERVATION | :ANY_RESERVATION | :SPECIFIC_RESERVATION

  field :UNSPECIFIED, 0

  field :NO_RESERVATION, 1

  field :ANY_RESERVATION, 2

  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Container.V1.NodeTaint.Effect do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EFFECT_UNSPECIFIED | :NO_SCHEDULE | :PREFER_NO_SCHEDULE | :NO_EXECUTE

  field :EFFECT_UNSPECIFIED, 0

  field :NO_SCHEDULE, 1

  field :PREFER_NO_SCHEDULE, 2

  field :NO_EXECUTE, 3
end

defmodule Google.Container.V1.CloudRunConfig.LoadBalancerType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LOAD_BALANCER_TYPE_UNSPECIFIED
          | :LOAD_BALANCER_TYPE_EXTERNAL
          | :LOAD_BALANCER_TYPE_INTERNAL

  field :LOAD_BALANCER_TYPE_UNSPECIFIED, 0

  field :LOAD_BALANCER_TYPE_EXTERNAL, 1

  field :LOAD_BALANCER_TYPE_INTERNAL, 2
end

defmodule Google.Container.V1.NetworkPolicy.Provider do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PROVIDER_UNSPECIFIED | :CALICO

  field :PROVIDER_UNSPECIFIED, 0

  field :CALICO, 1
end

defmodule Google.Container.V1.Cluster.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATUS_UNSPECIFIED
          | :PROVISIONING
          | :RUNNING
          | :RECONCILING
          | :STOPPING
          | :ERROR
          | :DEGRADED

  field :STATUS_UNSPECIFIED, 0

  field :PROVISIONING, 1

  field :RUNNING, 2

  field :RECONCILING, 3

  field :STOPPING, 4

  field :ERROR, 5

  field :DEGRADED, 6
end

defmodule Google.Container.V1.Operation.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATUS_UNSPECIFIED | :PENDING | :RUNNING | :DONE | :ABORTING

  field :STATUS_UNSPECIFIED, 0

  field :PENDING, 1

  field :RUNNING, 2

  field :DONE, 3

  field :ABORTING, 4
end

defmodule Google.Container.V1.Operation.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TYPE_UNSPECIFIED
          | :CREATE_CLUSTER
          | :DELETE_CLUSTER
          | :UPGRADE_MASTER
          | :UPGRADE_NODES
          | :REPAIR_CLUSTER
          | :UPDATE_CLUSTER
          | :CREATE_NODE_POOL
          | :DELETE_NODE_POOL
          | :SET_NODE_POOL_MANAGEMENT
          | :AUTO_REPAIR_NODES
          | :AUTO_UPGRADE_NODES
          | :SET_LABELS
          | :SET_MASTER_AUTH
          | :SET_NODE_POOL_SIZE
          | :SET_NETWORK_POLICY
          | :SET_MAINTENANCE_POLICY

  field :TYPE_UNSPECIFIED, 0

  field :CREATE_CLUSTER, 1

  field :DELETE_CLUSTER, 2

  field :UPGRADE_MASTER, 3

  field :UPGRADE_NODES, 4

  field :REPAIR_CLUSTER, 5

  field :UPDATE_CLUSTER, 6

  field :CREATE_NODE_POOL, 7

  field :DELETE_NODE_POOL, 8

  field :SET_NODE_POOL_MANAGEMENT, 9

  field :AUTO_REPAIR_NODES, 10

  field :AUTO_UPGRADE_NODES, 11

  field :SET_LABELS, 12

  field :SET_MASTER_AUTH, 13

  field :SET_NODE_POOL_SIZE, 14

  field :SET_NETWORK_POLICY, 15

  field :SET_MAINTENANCE_POLICY, 16
end

defmodule Google.Container.V1.SetMasterAuthRequest.Action do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :SET_PASSWORD | :GENERATE_PASSWORD | :SET_USERNAME

  field :UNKNOWN, 0

  field :SET_PASSWORD, 1

  field :GENERATE_PASSWORD, 2

  field :SET_USERNAME, 3
end

defmodule Google.Container.V1.NodePool.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATUS_UNSPECIFIED
          | :PROVISIONING
          | :RUNNING
          | :RUNNING_WITH_ERROR
          | :RECONCILING
          | :STOPPING
          | :ERROR

  field :STATUS_UNSPECIFIED, 0

  field :PROVISIONING, 1

  field :RUNNING, 2

  field :RUNNING_WITH_ERROR, 3

  field :RECONCILING, 4

  field :STOPPING, 5

  field :ERROR, 6
end

defmodule Google.Container.V1.WorkloadMetadataConfig.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MODE_UNSPECIFIED | :GCE_METADATA | :GKE_METADATA

  field :MODE_UNSPECIFIED, 0

  field :GCE_METADATA, 1

  field :GKE_METADATA, 2
end

defmodule Google.Container.V1.StatusCondition.Code do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN
          | :GCE_STOCKOUT
          | :GKE_SERVICE_ACCOUNT_DELETED
          | :GCE_QUOTA_EXCEEDED
          | :SET_BY_OPERATOR
          | :CLOUD_KMS_KEY_ERROR

  field :UNKNOWN, 0

  field :GCE_STOCKOUT, 1

  field :GKE_SERVICE_ACCOUNT_DELETED, 2

  field :GCE_QUOTA_EXCEEDED, 3

  field :SET_BY_OPERATOR, 4

  field :CLOUD_KMS_KEY_ERROR, 7
end

defmodule Google.Container.V1.ReleaseChannel.Channel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :RAPID | :REGULAR | :STABLE

  field :UNSPECIFIED, 0

  field :RAPID, 1

  field :REGULAR, 2

  field :STABLE, 3
end

defmodule Google.Container.V1.DatabaseEncryption.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNKNOWN | :ENCRYPTED | :DECRYPTED

  field :UNKNOWN, 0

  field :ENCRYPTED, 1

  field :DECRYPTED, 2
end

defmodule Google.Container.V1.UsableSubnetworkSecondaryRange.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN
          | :UNUSED
          | :IN_USE_SERVICE
          | :IN_USE_SHAREABLE_POD
          | :IN_USE_MANAGED_POD

  field :UNKNOWN, 0

  field :UNUSED, 1

  field :IN_USE_SERVICE, 2

  field :IN_USE_SHAREABLE_POD, 3

  field :IN_USE_MANAGED_POD, 4
end

defmodule Google.Container.V1.NodeConfig.MetadataEntry do
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

defmodule Google.Container.V1.NodeConfig.LabelsEntry do
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

defmodule Google.Container.V1.NodeConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t(),
          disk_size_gb: integer,
          oauth_scopes: [String.t()],
          service_account: String.t(),
          metadata: %{String.t() => String.t()},
          image_type: String.t(),
          labels: %{String.t() => String.t()},
          local_ssd_count: integer,
          tags: [String.t()],
          preemptible: boolean,
          accelerators: [Google.Container.V1.AcceleratorConfig.t()],
          disk_type: String.t(),
          min_cpu_platform: String.t(),
          workload_metadata_config: Google.Container.V1.WorkloadMetadataConfig.t() | nil,
          taints: [Google.Container.V1.NodeTaint.t()],
          sandbox_config: Google.Container.V1.SandboxConfig.t() | nil,
          node_group: String.t(),
          reservation_affinity: Google.Container.V1.ReservationAffinity.t() | nil,
          shielded_instance_config: Google.Container.V1.ShieldedInstanceConfig.t() | nil,
          boot_disk_kms_key: String.t()
        }

  defstruct [
    :machine_type,
    :disk_size_gb,
    :oauth_scopes,
    :service_account,
    :metadata,
    :image_type,
    :labels,
    :local_ssd_count,
    :tags,
    :preemptible,
    :accelerators,
    :disk_type,
    :min_cpu_platform,
    :workload_metadata_config,
    :taints,
    :sandbox_config,
    :node_group,
    :reservation_affinity,
    :shielded_instance_config,
    :boot_disk_kms_key
  ]

  field :machine_type, 1, type: :string
  field :disk_size_gb, 2, type: :int32
  field :oauth_scopes, 3, repeated: true, type: :string
  field :service_account, 9, type: :string

  field :metadata, 4,
    repeated: true,
    type: Google.Container.V1.NodeConfig.MetadataEntry,
    map: true

  field :image_type, 5, type: :string
  field :labels, 6, repeated: true, type: Google.Container.V1.NodeConfig.LabelsEntry, map: true
  field :local_ssd_count, 7, type: :int32
  field :tags, 8, repeated: true, type: :string
  field :preemptible, 10, type: :bool
  field :accelerators, 11, repeated: true, type: Google.Container.V1.AcceleratorConfig
  field :disk_type, 12, type: :string
  field :min_cpu_platform, 13, type: :string
  field :workload_metadata_config, 14, type: Google.Container.V1.WorkloadMetadataConfig
  field :taints, 15, repeated: true, type: Google.Container.V1.NodeTaint
  field :sandbox_config, 17, type: Google.Container.V1.SandboxConfig
  field :node_group, 18, type: :string
  field :reservation_affinity, 19, type: Google.Container.V1.ReservationAffinity
  field :shielded_instance_config, 20, type: Google.Container.V1.ShieldedInstanceConfig
  field :boot_disk_kms_key, 23, type: :string
end

defmodule Google.Container.V1.ShieldedInstanceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_secure_boot: boolean,
          enable_integrity_monitoring: boolean
        }

  defstruct [:enable_secure_boot, :enable_integrity_monitoring]

  field :enable_secure_boot, 1, type: :bool
  field :enable_integrity_monitoring, 2, type: :bool
end

defmodule Google.Container.V1.SandboxConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Container.V1.SandboxConfig.Type.t()
        }

  defstruct [:type]

  field :type, 2, type: Google.Container.V1.SandboxConfig.Type, enum: true
end

defmodule Google.Container.V1.ReservationAffinity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consume_reservation_type: Google.Container.V1.ReservationAffinity.Type.t(),
          key: String.t(),
          values: [String.t()]
        }

  defstruct [:consume_reservation_type, :key, :values]

  field :consume_reservation_type, 1,
    type: Google.Container.V1.ReservationAffinity.Type,
    enum: true

  field :key, 2, type: :string
  field :values, 3, repeated: true, type: :string
end

defmodule Google.Container.V1.NodeTaint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t(),
          effect: Google.Container.V1.NodeTaint.Effect.t()
        }

  defstruct [:key, :value, :effect]

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :effect, 3, type: Google.Container.V1.NodeTaint.Effect, enum: true
end

defmodule Google.Container.V1.MasterAuth do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t(),
          password: String.t(),
          client_certificate_config: Google.Container.V1.ClientCertificateConfig.t() | nil,
          cluster_ca_certificate: String.t(),
          client_certificate: String.t(),
          client_key: String.t()
        }

  defstruct [
    :username,
    :password,
    :client_certificate_config,
    :cluster_ca_certificate,
    :client_certificate,
    :client_key
  ]

  field :username, 1, type: :string, deprecated: true
  field :password, 2, type: :string, deprecated: true
  field :client_certificate_config, 3, type: Google.Container.V1.ClientCertificateConfig
  field :cluster_ca_certificate, 100, type: :string
  field :client_certificate, 101, type: :string
  field :client_key, 102, type: :string
end

defmodule Google.Container.V1.ClientCertificateConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issue_client_certificate: boolean
        }

  defstruct [:issue_client_certificate]

  field :issue_client_certificate, 1, type: :bool
end

defmodule Google.Container.V1.AddonsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_load_balancing: Google.Container.V1.HttpLoadBalancing.t() | nil,
          horizontal_pod_autoscaling: Google.Container.V1.HorizontalPodAutoscaling.t() | nil,
          kubernetes_dashboard: Google.Container.V1.KubernetesDashboard.t() | nil,
          network_policy_config: Google.Container.V1.NetworkPolicyConfig.t() | nil,
          cloud_run_config: Google.Container.V1.CloudRunConfig.t() | nil,
          dns_cache_config: Google.Container.V1.DnsCacheConfig.t() | nil,
          config_connector_config: Google.Container.V1.ConfigConnectorConfig.t() | nil
        }

  defstruct [
    :http_load_balancing,
    :horizontal_pod_autoscaling,
    :kubernetes_dashboard,
    :network_policy_config,
    :cloud_run_config,
    :dns_cache_config,
    :config_connector_config
  ]

  field :http_load_balancing, 1, type: Google.Container.V1.HttpLoadBalancing
  field :horizontal_pod_autoscaling, 2, type: Google.Container.V1.HorizontalPodAutoscaling
  field :kubernetes_dashboard, 3, type: Google.Container.V1.KubernetesDashboard, deprecated: true
  field :network_policy_config, 4, type: Google.Container.V1.NetworkPolicyConfig
  field :cloud_run_config, 7, type: Google.Container.V1.CloudRunConfig
  field :dns_cache_config, 8, type: Google.Container.V1.DnsCacheConfig
  field :config_connector_config, 10, type: Google.Container.V1.ConfigConnectorConfig
end

defmodule Google.Container.V1.HttpLoadBalancing do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean
        }

  defstruct [:disabled]

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.HorizontalPodAutoscaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean
        }

  defstruct [:disabled]

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.KubernetesDashboard do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean
        }

  defstruct [:disabled]

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.NetworkPolicyConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean
        }

  defstruct [:disabled]

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.DnsCacheConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.PrivateClusterMasterGlobalAccessConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.PrivateClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_private_nodes: boolean,
          enable_private_endpoint: boolean,
          master_ipv4_cidr_block: String.t(),
          private_endpoint: String.t(),
          public_endpoint: String.t(),
          peering_name: String.t(),
          master_global_access_config:
            Google.Container.V1.PrivateClusterMasterGlobalAccessConfig.t() | nil
        }

  defstruct [
    :enable_private_nodes,
    :enable_private_endpoint,
    :master_ipv4_cidr_block,
    :private_endpoint,
    :public_endpoint,
    :peering_name,
    :master_global_access_config
  ]

  field :enable_private_nodes, 1, type: :bool
  field :enable_private_endpoint, 2, type: :bool
  field :master_ipv4_cidr_block, 3, type: :string
  field :private_endpoint, 4, type: :string
  field :public_endpoint, 5, type: :string
  field :peering_name, 7, type: :string

  field :master_global_access_config, 8,
    type: Google.Container.V1.PrivateClusterMasterGlobalAccessConfig
end

defmodule Google.Container.V1.AuthenticatorGroupsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          security_group: String.t()
        }

  defstruct [:enabled, :security_group]

  field :enabled, 1, type: :bool
  field :security_group, 2, type: :string
end

defmodule Google.Container.V1.CloudRunConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean,
          load_balancer_type: Google.Container.V1.CloudRunConfig.LoadBalancerType.t()
        }

  defstruct [:disabled, :load_balancer_type]

  field :disabled, 1, type: :bool

  field :load_balancer_type, 3,
    type: Google.Container.V1.CloudRunConfig.LoadBalancerType,
    enum: true
end

defmodule Google.Container.V1.ConfigConnectorConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.MasterAuthorizedNetworksConfig.CidrBlock do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display_name: String.t(),
          cidr_block: String.t()
        }

  defstruct [:display_name, :cidr_block]

  field :display_name, 1, type: :string
  field :cidr_block, 2, type: :string
end

defmodule Google.Container.V1.MasterAuthorizedNetworksConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          cidr_blocks: [Google.Container.V1.MasterAuthorizedNetworksConfig.CidrBlock.t()]
        }

  defstruct [:enabled, :cidr_blocks]

  field :enabled, 1, type: :bool

  field :cidr_blocks, 2,
    repeated: true,
    type: Google.Container.V1.MasterAuthorizedNetworksConfig.CidrBlock
end

defmodule Google.Container.V1.LegacyAbac do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.NetworkPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          provider: Google.Container.V1.NetworkPolicy.Provider.t(),
          enabled: boolean
        }

  defstruct [:provider, :enabled]

  field :provider, 1, type: Google.Container.V1.NetworkPolicy.Provider, enum: true
  field :enabled, 2, type: :bool
end

defmodule Google.Container.V1.BinaryAuthorization do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.IPAllocationPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          use_ip_aliases: boolean,
          create_subnetwork: boolean,
          subnetwork_name: String.t(),
          cluster_ipv4_cidr: String.t(),
          node_ipv4_cidr: String.t(),
          services_ipv4_cidr: String.t(),
          cluster_secondary_range_name: String.t(),
          services_secondary_range_name: String.t(),
          cluster_ipv4_cidr_block: String.t(),
          node_ipv4_cidr_block: String.t(),
          services_ipv4_cidr_block: String.t(),
          tpu_ipv4_cidr_block: String.t(),
          use_routes: boolean
        }

  defstruct [
    :use_ip_aliases,
    :create_subnetwork,
    :subnetwork_name,
    :cluster_ipv4_cidr,
    :node_ipv4_cidr,
    :services_ipv4_cidr,
    :cluster_secondary_range_name,
    :services_secondary_range_name,
    :cluster_ipv4_cidr_block,
    :node_ipv4_cidr_block,
    :services_ipv4_cidr_block,
    :tpu_ipv4_cidr_block,
    :use_routes
  ]

  field :use_ip_aliases, 1, type: :bool
  field :create_subnetwork, 2, type: :bool
  field :subnetwork_name, 3, type: :string
  field :cluster_ipv4_cidr, 4, type: :string, deprecated: true
  field :node_ipv4_cidr, 5, type: :string, deprecated: true
  field :services_ipv4_cidr, 6, type: :string, deprecated: true
  field :cluster_secondary_range_name, 7, type: :string
  field :services_secondary_range_name, 8, type: :string
  field :cluster_ipv4_cidr_block, 9, type: :string
  field :node_ipv4_cidr_block, 10, type: :string
  field :services_ipv4_cidr_block, 11, type: :string
  field :tpu_ipv4_cidr_block, 13, type: :string
  field :use_routes, 15, type: :bool
end

defmodule Google.Container.V1.Cluster.ResourceLabelsEntry do
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

defmodule Google.Container.V1.Cluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          initial_node_count: integer,
          node_config: Google.Container.V1.NodeConfig.t() | nil,
          master_auth: Google.Container.V1.MasterAuth.t() | nil,
          logging_service: String.t(),
          monitoring_service: String.t(),
          network: String.t(),
          cluster_ipv4_cidr: String.t(),
          addons_config: Google.Container.V1.AddonsConfig.t() | nil,
          subnetwork: String.t(),
          node_pools: [Google.Container.V1.NodePool.t()],
          locations: [String.t()],
          enable_kubernetes_alpha: boolean,
          resource_labels: %{String.t() => String.t()},
          label_fingerprint: String.t(),
          legacy_abac: Google.Container.V1.LegacyAbac.t() | nil,
          network_policy: Google.Container.V1.NetworkPolicy.t() | nil,
          ip_allocation_policy: Google.Container.V1.IPAllocationPolicy.t() | nil,
          master_authorized_networks_config:
            Google.Container.V1.MasterAuthorizedNetworksConfig.t() | nil,
          maintenance_policy: Google.Container.V1.MaintenancePolicy.t() | nil,
          binary_authorization: Google.Container.V1.BinaryAuthorization.t() | nil,
          autoscaling: Google.Container.V1.ClusterAutoscaling.t() | nil,
          network_config: Google.Container.V1.NetworkConfig.t() | nil,
          default_max_pods_constraint: Google.Container.V1.MaxPodsConstraint.t() | nil,
          resource_usage_export_config: Google.Container.V1.ResourceUsageExportConfig.t() | nil,
          authenticator_groups_config: Google.Container.V1.AuthenticatorGroupsConfig.t() | nil,
          private_cluster_config: Google.Container.V1.PrivateClusterConfig.t() | nil,
          database_encryption: Google.Container.V1.DatabaseEncryption.t() | nil,
          vertical_pod_autoscaling: Google.Container.V1.VerticalPodAutoscaling.t() | nil,
          shielded_nodes: Google.Container.V1.ShieldedNodes.t() | nil,
          release_channel: Google.Container.V1.ReleaseChannel.t() | nil,
          workload_identity_config: Google.Container.V1.WorkloadIdentityConfig.t() | nil,
          self_link: String.t(),
          zone: String.t(),
          endpoint: String.t(),
          initial_cluster_version: String.t(),
          current_master_version: String.t(),
          current_node_version: String.t(),
          create_time: String.t(),
          status: Google.Container.V1.Cluster.Status.t(),
          status_message: String.t(),
          node_ipv4_cidr_size: integer,
          services_ipv4_cidr: String.t(),
          instance_group_urls: [String.t()],
          current_node_count: integer,
          expire_time: String.t(),
          location: String.t(),
          enable_tpu: boolean,
          tpu_ipv4_cidr_block: String.t(),
          conditions: [Google.Container.V1.StatusCondition.t()]
        }

  defstruct [
    :name,
    :description,
    :initial_node_count,
    :node_config,
    :master_auth,
    :logging_service,
    :monitoring_service,
    :network,
    :cluster_ipv4_cidr,
    :addons_config,
    :subnetwork,
    :node_pools,
    :locations,
    :enable_kubernetes_alpha,
    :resource_labels,
    :label_fingerprint,
    :legacy_abac,
    :network_policy,
    :ip_allocation_policy,
    :master_authorized_networks_config,
    :maintenance_policy,
    :binary_authorization,
    :autoscaling,
    :network_config,
    :default_max_pods_constraint,
    :resource_usage_export_config,
    :authenticator_groups_config,
    :private_cluster_config,
    :database_encryption,
    :vertical_pod_autoscaling,
    :shielded_nodes,
    :release_channel,
    :workload_identity_config,
    :self_link,
    :zone,
    :endpoint,
    :initial_cluster_version,
    :current_master_version,
    :current_node_version,
    :create_time,
    :status,
    :status_message,
    :node_ipv4_cidr_size,
    :services_ipv4_cidr,
    :instance_group_urls,
    :current_node_count,
    :expire_time,
    :location,
    :enable_tpu,
    :tpu_ipv4_cidr_block,
    :conditions
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :initial_node_count, 3, type: :int32, deprecated: true
  field :node_config, 4, type: Google.Container.V1.NodeConfig, deprecated: true
  field :master_auth, 5, type: Google.Container.V1.MasterAuth
  field :logging_service, 6, type: :string
  field :monitoring_service, 7, type: :string
  field :network, 8, type: :string
  field :cluster_ipv4_cidr, 9, type: :string
  field :addons_config, 10, type: Google.Container.V1.AddonsConfig
  field :subnetwork, 11, type: :string
  field :node_pools, 12, repeated: true, type: Google.Container.V1.NodePool
  field :locations, 13, repeated: true, type: :string
  field :enable_kubernetes_alpha, 14, type: :bool

  field :resource_labels, 15,
    repeated: true,
    type: Google.Container.V1.Cluster.ResourceLabelsEntry,
    map: true

  field :label_fingerprint, 16, type: :string
  field :legacy_abac, 18, type: Google.Container.V1.LegacyAbac
  field :network_policy, 19, type: Google.Container.V1.NetworkPolicy
  field :ip_allocation_policy, 20, type: Google.Container.V1.IPAllocationPolicy

  field :master_authorized_networks_config, 22,
    type: Google.Container.V1.MasterAuthorizedNetworksConfig

  field :maintenance_policy, 23, type: Google.Container.V1.MaintenancePolicy
  field :binary_authorization, 24, type: Google.Container.V1.BinaryAuthorization
  field :autoscaling, 26, type: Google.Container.V1.ClusterAutoscaling
  field :network_config, 27, type: Google.Container.V1.NetworkConfig
  field :default_max_pods_constraint, 30, type: Google.Container.V1.MaxPodsConstraint
  field :resource_usage_export_config, 33, type: Google.Container.V1.ResourceUsageExportConfig
  field :authenticator_groups_config, 34, type: Google.Container.V1.AuthenticatorGroupsConfig
  field :private_cluster_config, 37, type: Google.Container.V1.PrivateClusterConfig
  field :database_encryption, 38, type: Google.Container.V1.DatabaseEncryption
  field :vertical_pod_autoscaling, 39, type: Google.Container.V1.VerticalPodAutoscaling
  field :shielded_nodes, 40, type: Google.Container.V1.ShieldedNodes
  field :release_channel, 41, type: Google.Container.V1.ReleaseChannel
  field :workload_identity_config, 43, type: Google.Container.V1.WorkloadIdentityConfig
  field :self_link, 100, type: :string
  field :zone, 101, type: :string, deprecated: true
  field :endpoint, 102, type: :string
  field :initial_cluster_version, 103, type: :string
  field :current_master_version, 104, type: :string
  field :current_node_version, 105, type: :string, deprecated: true
  field :create_time, 106, type: :string
  field :status, 107, type: Google.Container.V1.Cluster.Status, enum: true
  field :status_message, 108, type: :string, deprecated: true
  field :node_ipv4_cidr_size, 109, type: :int32
  field :services_ipv4_cidr, 110, type: :string
  field :instance_group_urls, 111, repeated: true, type: :string, deprecated: true
  field :current_node_count, 112, type: :int32, deprecated: true
  field :expire_time, 113, type: :string
  field :location, 114, type: :string
  field :enable_tpu, 115, type: :bool
  field :tpu_ipv4_cidr_block, 116, type: :string
  field :conditions, 118, repeated: true, type: Google.Container.V1.StatusCondition
end

defmodule Google.Container.V1.ClusterUpdate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          desired_node_version: String.t(),
          desired_monitoring_service: String.t(),
          desired_addons_config: Google.Container.V1.AddonsConfig.t() | nil,
          desired_node_pool_id: String.t(),
          desired_image_type: String.t(),
          desired_database_encryption: Google.Container.V1.DatabaseEncryption.t() | nil,
          desired_workload_identity_config: Google.Container.V1.WorkloadIdentityConfig.t() | nil,
          desired_shielded_nodes: Google.Container.V1.ShieldedNodes.t() | nil,
          desired_node_pool_autoscaling: Google.Container.V1.NodePoolAutoscaling.t() | nil,
          desired_locations: [String.t()],
          desired_master_authorized_networks_config:
            Google.Container.V1.MasterAuthorizedNetworksConfig.t() | nil,
          desired_cluster_autoscaling: Google.Container.V1.ClusterAutoscaling.t() | nil,
          desired_binary_authorization: Google.Container.V1.BinaryAuthorization.t() | nil,
          desired_logging_service: String.t(),
          desired_resource_usage_export_config:
            Google.Container.V1.ResourceUsageExportConfig.t() | nil,
          desired_vertical_pod_autoscaling: Google.Container.V1.VerticalPodAutoscaling.t() | nil,
          desired_private_cluster_config: Google.Container.V1.PrivateClusterConfig.t() | nil,
          desired_intra_node_visibility_config:
            Google.Container.V1.IntraNodeVisibilityConfig.t() | nil,
          desired_default_snat_status: Google.Container.V1.DefaultSnatStatus.t() | nil,
          desired_release_channel: Google.Container.V1.ReleaseChannel.t() | nil,
          desired_master_version: String.t()
        }

  defstruct [
    :desired_node_version,
    :desired_monitoring_service,
    :desired_addons_config,
    :desired_node_pool_id,
    :desired_image_type,
    :desired_database_encryption,
    :desired_workload_identity_config,
    :desired_shielded_nodes,
    :desired_node_pool_autoscaling,
    :desired_locations,
    :desired_master_authorized_networks_config,
    :desired_cluster_autoscaling,
    :desired_binary_authorization,
    :desired_logging_service,
    :desired_resource_usage_export_config,
    :desired_vertical_pod_autoscaling,
    :desired_private_cluster_config,
    :desired_intra_node_visibility_config,
    :desired_default_snat_status,
    :desired_release_channel,
    :desired_master_version
  ]

  field :desired_node_version, 4, type: :string
  field :desired_monitoring_service, 5, type: :string
  field :desired_addons_config, 6, type: Google.Container.V1.AddonsConfig
  field :desired_node_pool_id, 7, type: :string
  field :desired_image_type, 8, type: :string
  field :desired_database_encryption, 46, type: Google.Container.V1.DatabaseEncryption
  field :desired_workload_identity_config, 47, type: Google.Container.V1.WorkloadIdentityConfig
  field :desired_shielded_nodes, 48, type: Google.Container.V1.ShieldedNodes
  field :desired_node_pool_autoscaling, 9, type: Google.Container.V1.NodePoolAutoscaling
  field :desired_locations, 10, repeated: true, type: :string

  field :desired_master_authorized_networks_config, 12,
    type: Google.Container.V1.MasterAuthorizedNetworksConfig

  field :desired_cluster_autoscaling, 15, type: Google.Container.V1.ClusterAutoscaling
  field :desired_binary_authorization, 16, type: Google.Container.V1.BinaryAuthorization
  field :desired_logging_service, 19, type: :string

  field :desired_resource_usage_export_config, 21,
    type: Google.Container.V1.ResourceUsageExportConfig

  field :desired_vertical_pod_autoscaling, 22, type: Google.Container.V1.VerticalPodAutoscaling
  field :desired_private_cluster_config, 25, type: Google.Container.V1.PrivateClusterConfig

  field :desired_intra_node_visibility_config, 26,
    type: Google.Container.V1.IntraNodeVisibilityConfig

  field :desired_default_snat_status, 28, type: Google.Container.V1.DefaultSnatStatus
  field :desired_release_channel, 31, type: Google.Container.V1.ReleaseChannel
  field :desired_master_version, 100, type: :string
end

defmodule Google.Container.V1.Operation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          zone: String.t(),
          operation_type: Google.Container.V1.Operation.Type.t(),
          status: Google.Container.V1.Operation.Status.t(),
          detail: String.t(),
          status_message: String.t(),
          self_link: String.t(),
          target_link: String.t(),
          location: String.t(),
          start_time: String.t(),
          end_time: String.t(),
          progress: Google.Container.V1.OperationProgress.t() | nil,
          cluster_conditions: [Google.Container.V1.StatusCondition.t()],
          nodepool_conditions: [Google.Container.V1.StatusCondition.t()]
        }

  defstruct [
    :name,
    :zone,
    :operation_type,
    :status,
    :detail,
    :status_message,
    :self_link,
    :target_link,
    :location,
    :start_time,
    :end_time,
    :progress,
    :cluster_conditions,
    :nodepool_conditions
  ]

  field :name, 1, type: :string
  field :zone, 2, type: :string, deprecated: true
  field :operation_type, 3, type: Google.Container.V1.Operation.Type, enum: true
  field :status, 4, type: Google.Container.V1.Operation.Status, enum: true
  field :detail, 8, type: :string
  field :status_message, 5, type: :string
  field :self_link, 6, type: :string
  field :target_link, 7, type: :string
  field :location, 9, type: :string
  field :start_time, 10, type: :string
  field :end_time, 11, type: :string
  field :progress, 12, type: Google.Container.V1.OperationProgress
  field :cluster_conditions, 13, repeated: true, type: Google.Container.V1.StatusCondition
  field :nodepool_conditions, 14, repeated: true, type: Google.Container.V1.StatusCondition
end

defmodule Google.Container.V1.OperationProgress.Metric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any},
          name: String.t()
        }

  defstruct [:value, :name]

  oneof :value, 0
  field :name, 1, type: :string
  field :int_value, 2, type: :int64, oneof: 0
  field :double_value, 3, type: :double, oneof: 0
  field :string_value, 4, type: :string, oneof: 0
end

defmodule Google.Container.V1.OperationProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          status: Google.Container.V1.Operation.Status.t(),
          metrics: [Google.Container.V1.OperationProgress.Metric.t()],
          stages: [Google.Container.V1.OperationProgress.t()]
        }

  defstruct [:name, :status, :metrics, :stages]

  field :name, 1, type: :string
  field :status, 2, type: Google.Container.V1.Operation.Status, enum: true
  field :metrics, 3, repeated: true, type: Google.Container.V1.OperationProgress.Metric
  field :stages, 4, repeated: true, type: Google.Container.V1.OperationProgress
end

defmodule Google.Container.V1.CreateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster: Google.Container.V1.Cluster.t() | nil,
          parent: String.t()
        }

  defstruct [:project_id, :zone, :cluster, :parent]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster, 3, type: Google.Container.V1.Cluster
  field :parent, 5, type: :string
end

defmodule Google.Container.V1.GetClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :name, 5, type: :string
end

defmodule Google.Container.V1.UpdateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          update: Google.Container.V1.ClusterUpdate.t() | nil,
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :update, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :update, 4, type: Google.Container.V1.ClusterUpdate
  field :name, 5, type: :string
end

defmodule Google.Container.V1.UpdateNodePoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          node_pool_id: String.t(),
          node_version: String.t(),
          image_type: String.t(),
          name: String.t(),
          locations: [String.t()],
          workload_metadata_config: Google.Container.V1.WorkloadMetadataConfig.t() | nil,
          upgrade_settings: Google.Container.V1.NodePool.UpgradeSettings.t() | nil
        }

  defstruct [
    :project_id,
    :zone,
    :cluster_id,
    :node_pool_id,
    :node_version,
    :image_type,
    :name,
    :locations,
    :workload_metadata_config,
    :upgrade_settings
  ]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :node_pool_id, 4, type: :string, deprecated: true
  field :node_version, 5, type: :string
  field :image_type, 6, type: :string
  field :name, 8, type: :string
  field :locations, 13, repeated: true, type: :string
  field :workload_metadata_config, 14, type: Google.Container.V1.WorkloadMetadataConfig
  field :upgrade_settings, 15, type: Google.Container.V1.NodePool.UpgradeSettings
end

defmodule Google.Container.V1.SetNodePoolAutoscalingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          node_pool_id: String.t(),
          autoscaling: Google.Container.V1.NodePoolAutoscaling.t() | nil,
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :node_pool_id, :autoscaling, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :node_pool_id, 4, type: :string, deprecated: true
  field :autoscaling, 5, type: Google.Container.V1.NodePoolAutoscaling
  field :name, 6, type: :string
end

defmodule Google.Container.V1.SetLoggingServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          logging_service: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :logging_service, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :logging_service, 4, type: :string
  field :name, 5, type: :string
end

defmodule Google.Container.V1.SetMonitoringServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          monitoring_service: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :monitoring_service, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :monitoring_service, 4, type: :string
  field :name, 6, type: :string
end

defmodule Google.Container.V1.SetAddonsConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          addons_config: Google.Container.V1.AddonsConfig.t() | nil,
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :addons_config, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :addons_config, 4, type: Google.Container.V1.AddonsConfig
  field :name, 6, type: :string
end

defmodule Google.Container.V1.SetLocationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          locations: [String.t()],
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :locations, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :locations, 4, repeated: true, type: :string
  field :name, 6, type: :string
end

defmodule Google.Container.V1.UpdateMasterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          master_version: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :master_version, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :master_version, 4, type: :string
  field :name, 7, type: :string
end

defmodule Google.Container.V1.SetMasterAuthRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          action: Google.Container.V1.SetMasterAuthRequest.Action.t(),
          update: Google.Container.V1.MasterAuth.t() | nil,
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :action, :update, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :action, 4, type: Google.Container.V1.SetMasterAuthRequest.Action, enum: true
  field :update, 5, type: Google.Container.V1.MasterAuth
  field :name, 7, type: :string
end

defmodule Google.Container.V1.DeleteClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :name, 4, type: :string
end

defmodule Google.Container.V1.ListClustersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          parent: String.t()
        }

  defstruct [:project_id, :zone, :parent]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :parent, 4, type: :string
end

defmodule Google.Container.V1.ListClustersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          clusters: [Google.Container.V1.Cluster.t()],
          missing_zones: [String.t()]
        }

  defstruct [:clusters, :missing_zones]

  field :clusters, 1, repeated: true, type: Google.Container.V1.Cluster
  field :missing_zones, 2, repeated: true, type: :string
end

defmodule Google.Container.V1.GetOperationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          operation_id: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :operation_id, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :operation_id, 3, type: :string, deprecated: true
  field :name, 5, type: :string
end

defmodule Google.Container.V1.ListOperationsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          parent: String.t()
        }

  defstruct [:project_id, :zone, :parent]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :parent, 4, type: :string
end

defmodule Google.Container.V1.CancelOperationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          operation_id: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :operation_id, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :operation_id, 3, type: :string, deprecated: true
  field :name, 4, type: :string
end

defmodule Google.Container.V1.ListOperationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operations: [Google.Container.V1.Operation.t()],
          missing_zones: [String.t()]
        }

  defstruct [:operations, :missing_zones]

  field :operations, 1, repeated: true, type: Google.Container.V1.Operation
  field :missing_zones, 2, repeated: true, type: :string
end

defmodule Google.Container.V1.GetServerConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :name, 4, type: :string
end

defmodule Google.Container.V1.ServerConfig.ReleaseChannelConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Container.V1.ReleaseChannel.Channel.t(),
          default_version: String.t(),
          valid_versions: [String.t()]
        }

  defstruct [:channel, :default_version, :valid_versions]

  field :channel, 1, type: Google.Container.V1.ReleaseChannel.Channel, enum: true
  field :default_version, 2, type: :string
  field :valid_versions, 4, repeated: true, type: :string
end

defmodule Google.Container.V1.ServerConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          default_cluster_version: String.t(),
          valid_node_versions: [String.t()],
          default_image_type: String.t(),
          valid_image_types: [String.t()],
          valid_master_versions: [String.t()],
          channels: [Google.Container.V1.ServerConfig.ReleaseChannelConfig.t()]
        }

  defstruct [
    :default_cluster_version,
    :valid_node_versions,
    :default_image_type,
    :valid_image_types,
    :valid_master_versions,
    :channels
  ]

  field :default_cluster_version, 1, type: :string
  field :valid_node_versions, 3, repeated: true, type: :string
  field :default_image_type, 4, type: :string
  field :valid_image_types, 5, repeated: true, type: :string
  field :valid_master_versions, 6, repeated: true, type: :string
  field :channels, 9, repeated: true, type: Google.Container.V1.ServerConfig.ReleaseChannelConfig
end

defmodule Google.Container.V1.CreateNodePoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          node_pool: Google.Container.V1.NodePool.t() | nil,
          parent: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :node_pool, :parent]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :node_pool, 4, type: Google.Container.V1.NodePool
  field :parent, 6, type: :string
end

defmodule Google.Container.V1.DeleteNodePoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          node_pool_id: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :node_pool_id, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :node_pool_id, 4, type: :string, deprecated: true
  field :name, 6, type: :string
end

defmodule Google.Container.V1.ListNodePoolsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          parent: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :parent]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :parent, 5, type: :string
end

defmodule Google.Container.V1.GetNodePoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          node_pool_id: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :node_pool_id, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :node_pool_id, 4, type: :string, deprecated: true
  field :name, 6, type: :string
end

defmodule Google.Container.V1.NodePool.UpgradeSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_surge: integer,
          max_unavailable: integer
        }

  defstruct [:max_surge, :max_unavailable]

  field :max_surge, 1, type: :int32
  field :max_unavailable, 2, type: :int32
end

defmodule Google.Container.V1.NodePool do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          config: Google.Container.V1.NodeConfig.t() | nil,
          initial_node_count: integer,
          locations: [String.t()],
          self_link: String.t(),
          version: String.t(),
          instance_group_urls: [String.t()],
          status: Google.Container.V1.NodePool.Status.t(),
          status_message: String.t(),
          autoscaling: Google.Container.V1.NodePoolAutoscaling.t() | nil,
          management: Google.Container.V1.NodeManagement.t() | nil,
          max_pods_constraint: Google.Container.V1.MaxPodsConstraint.t() | nil,
          conditions: [Google.Container.V1.StatusCondition.t()],
          pod_ipv4_cidr_size: integer,
          upgrade_settings: Google.Container.V1.NodePool.UpgradeSettings.t() | nil
        }

  defstruct [
    :name,
    :config,
    :initial_node_count,
    :locations,
    :self_link,
    :version,
    :instance_group_urls,
    :status,
    :status_message,
    :autoscaling,
    :management,
    :max_pods_constraint,
    :conditions,
    :pod_ipv4_cidr_size,
    :upgrade_settings
  ]

  field :name, 1, type: :string
  field :config, 2, type: Google.Container.V1.NodeConfig
  field :initial_node_count, 3, type: :int32
  field :locations, 13, repeated: true, type: :string
  field :self_link, 100, type: :string
  field :version, 101, type: :string
  field :instance_group_urls, 102, repeated: true, type: :string
  field :status, 103, type: Google.Container.V1.NodePool.Status, enum: true
  field :status_message, 104, type: :string, deprecated: true
  field :autoscaling, 4, type: Google.Container.V1.NodePoolAutoscaling
  field :management, 5, type: Google.Container.V1.NodeManagement
  field :max_pods_constraint, 6, type: Google.Container.V1.MaxPodsConstraint
  field :conditions, 105, repeated: true, type: Google.Container.V1.StatusCondition
  field :pod_ipv4_cidr_size, 7, type: :int32
  field :upgrade_settings, 107, type: Google.Container.V1.NodePool.UpgradeSettings
end

defmodule Google.Container.V1.NodeManagement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auto_upgrade: boolean,
          auto_repair: boolean,
          upgrade_options: Google.Container.V1.AutoUpgradeOptions.t() | nil
        }

  defstruct [:auto_upgrade, :auto_repair, :upgrade_options]

  field :auto_upgrade, 1, type: :bool
  field :auto_repair, 2, type: :bool
  field :upgrade_options, 10, type: Google.Container.V1.AutoUpgradeOptions
end

defmodule Google.Container.V1.AutoUpgradeOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auto_upgrade_start_time: String.t(),
          description: String.t()
        }

  defstruct [:auto_upgrade_start_time, :description]

  field :auto_upgrade_start_time, 1, type: :string
  field :description, 2, type: :string
end

defmodule Google.Container.V1.MaintenancePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          window: Google.Container.V1.MaintenanceWindow.t() | nil,
          resource_version: String.t()
        }

  defstruct [:window, :resource_version]

  field :window, 1, type: Google.Container.V1.MaintenanceWindow
  field :resource_version, 3, type: :string
end

defmodule Google.Container.V1.MaintenanceWindow.MaintenanceExclusionsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Container.V1.TimeWindow.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Container.V1.TimeWindow
end

defmodule Google.Container.V1.MaintenanceWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy: {atom, any},
          maintenance_exclusions: %{String.t() => Google.Container.V1.TimeWindow.t() | nil}
        }

  defstruct [:policy, :maintenance_exclusions]

  oneof :policy, 0
  field :daily_maintenance_window, 2, type: Google.Container.V1.DailyMaintenanceWindow, oneof: 0
  field :recurring_window, 3, type: Google.Container.V1.RecurringTimeWindow, oneof: 0

  field :maintenance_exclusions, 4,
    repeated: true,
    type: Google.Container.V1.MaintenanceWindow.MaintenanceExclusionsEntry,
    map: true
end

defmodule Google.Container.V1.TimeWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:start_time, :end_time]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Container.V1.RecurringTimeWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          window: Google.Container.V1.TimeWindow.t() | nil,
          recurrence: String.t()
        }

  defstruct [:window, :recurrence]

  field :window, 1, type: Google.Container.V1.TimeWindow
  field :recurrence, 2, type: :string
end

defmodule Google.Container.V1.DailyMaintenanceWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: String.t(),
          duration: String.t()
        }

  defstruct [:start_time, :duration]

  field :start_time, 2, type: :string
  field :duration, 3, type: :string
end

defmodule Google.Container.V1.SetNodePoolManagementRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          node_pool_id: String.t(),
          management: Google.Container.V1.NodeManagement.t() | nil,
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :node_pool_id, :management, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :node_pool_id, 4, type: :string, deprecated: true
  field :management, 5, type: Google.Container.V1.NodeManagement
  field :name, 7, type: :string
end

defmodule Google.Container.V1.SetNodePoolSizeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          node_pool_id: String.t(),
          node_count: integer,
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :node_pool_id, :node_count, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :node_pool_id, 4, type: :string, deprecated: true
  field :node_count, 5, type: :int32
  field :name, 7, type: :string
end

defmodule Google.Container.V1.RollbackNodePoolUpgradeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          node_pool_id: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :node_pool_id, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :node_pool_id, 4, type: :string, deprecated: true
  field :name, 6, type: :string
end

defmodule Google.Container.V1.ListNodePoolsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_pools: [Google.Container.V1.NodePool.t()]
        }

  defstruct [:node_pools]

  field :node_pools, 1, repeated: true, type: Google.Container.V1.NodePool
end

defmodule Google.Container.V1.ClusterAutoscaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_node_autoprovisioning: boolean,
          resource_limits: [Google.Container.V1.ResourceLimit.t()],
          autoprovisioning_node_pool_defaults:
            Google.Container.V1.AutoprovisioningNodePoolDefaults.t() | nil,
          autoprovisioning_locations: [String.t()]
        }

  defstruct [
    :enable_node_autoprovisioning,
    :resource_limits,
    :autoprovisioning_node_pool_defaults,
    :autoprovisioning_locations
  ]

  field :enable_node_autoprovisioning, 1, type: :bool
  field :resource_limits, 2, repeated: true, type: Google.Container.V1.ResourceLimit

  field :autoprovisioning_node_pool_defaults, 4,
    type: Google.Container.V1.AutoprovisioningNodePoolDefaults

  field :autoprovisioning_locations, 5, repeated: true, type: :string
end

defmodule Google.Container.V1.AutoprovisioningNodePoolDefaults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oauth_scopes: [String.t()],
          service_account: String.t(),
          upgrade_settings: Google.Container.V1.NodePool.UpgradeSettings.t() | nil,
          management: Google.Container.V1.NodeManagement.t() | nil,
          min_cpu_platform: String.t(),
          disk_size_gb: integer,
          disk_type: String.t(),
          shielded_instance_config: Google.Container.V1.ShieldedInstanceConfig.t() | nil,
          boot_disk_kms_key: String.t()
        }

  defstruct [
    :oauth_scopes,
    :service_account,
    :upgrade_settings,
    :management,
    :min_cpu_platform,
    :disk_size_gb,
    :disk_type,
    :shielded_instance_config,
    :boot_disk_kms_key
  ]

  field :oauth_scopes, 1, repeated: true, type: :string
  field :service_account, 2, type: :string
  field :upgrade_settings, 3, type: Google.Container.V1.NodePool.UpgradeSettings
  field :management, 4, type: Google.Container.V1.NodeManagement
  field :min_cpu_platform, 5, type: :string
  field :disk_size_gb, 6, type: :int32
  field :disk_type, 7, type: :string
  field :shielded_instance_config, 8, type: Google.Container.V1.ShieldedInstanceConfig
  field :boot_disk_kms_key, 9, type: :string
end

defmodule Google.Container.V1.ResourceLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_type: String.t(),
          minimum: integer,
          maximum: integer
        }

  defstruct [:resource_type, :minimum, :maximum]

  field :resource_type, 1, type: :string
  field :minimum, 2, type: :int64
  field :maximum, 3, type: :int64
end

defmodule Google.Container.V1.NodePoolAutoscaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          min_node_count: integer,
          max_node_count: integer,
          autoprovisioned: boolean
        }

  defstruct [:enabled, :min_node_count, :max_node_count, :autoprovisioned]

  field :enabled, 1, type: :bool
  field :min_node_count, 2, type: :int32
  field :max_node_count, 3, type: :int32
  field :autoprovisioned, 4, type: :bool
end

defmodule Google.Container.V1.SetLabelsRequest.ResourceLabelsEntry do
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

defmodule Google.Container.V1.SetLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          resource_labels: %{String.t() => String.t()},
          label_fingerprint: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :resource_labels, :label_fingerprint, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true

  field :resource_labels, 4,
    repeated: true,
    type: Google.Container.V1.SetLabelsRequest.ResourceLabelsEntry,
    map: true

  field :label_fingerprint, 5, type: :string
  field :name, 7, type: :string
end

defmodule Google.Container.V1.SetLegacyAbacRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          enabled: boolean,
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :enabled, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :enabled, 4, type: :bool
  field :name, 6, type: :string
end

defmodule Google.Container.V1.StartIPRotationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          name: String.t(),
          rotate_credentials: boolean
        }

  defstruct [:project_id, :zone, :cluster_id, :name, :rotate_credentials]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :name, 6, type: :string
  field :rotate_credentials, 7, type: :bool
end

defmodule Google.Container.V1.CompleteIPRotationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :name, 7, type: :string
end

defmodule Google.Container.V1.AcceleratorConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accelerator_count: integer,
          accelerator_type: String.t()
        }

  defstruct [:accelerator_count, :accelerator_type]

  field :accelerator_count, 1, type: :int64
  field :accelerator_type, 2, type: :string
end

defmodule Google.Container.V1.WorkloadMetadataConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mode: Google.Container.V1.WorkloadMetadataConfig.Mode.t()
        }

  defstruct [:mode]

  field :mode, 2, type: Google.Container.V1.WorkloadMetadataConfig.Mode, enum: true
end

defmodule Google.Container.V1.SetNetworkPolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          network_policy: Google.Container.V1.NetworkPolicy.t() | nil,
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :network_policy, :name]

  field :project_id, 1, type: :string, deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, deprecated: true
  field :network_policy, 4, type: Google.Container.V1.NetworkPolicy
  field :name, 6, type: :string
end

defmodule Google.Container.V1.SetMaintenancePolicyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          zone: String.t(),
          cluster_id: String.t(),
          maintenance_policy: Google.Container.V1.MaintenancePolicy.t() | nil,
          name: String.t()
        }

  defstruct [:project_id, :zone, :cluster_id, :maintenance_policy, :name]

  field :project_id, 1, type: :string
  field :zone, 2, type: :string
  field :cluster_id, 3, type: :string
  field :maintenance_policy, 4, type: Google.Container.V1.MaintenancePolicy
  field :name, 5, type: :string
end

defmodule Google.Container.V1.StatusCondition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Container.V1.StatusCondition.Code.t(),
          message: String.t()
        }

  defstruct [:code, :message]

  field :code, 1, type: Google.Container.V1.StatusCondition.Code, enum: true
  field :message, 2, type: :string
end

defmodule Google.Container.V1.NetworkConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          network: String.t(),
          subnetwork: String.t(),
          enable_intra_node_visibility: boolean,
          default_snat_status: Google.Container.V1.DefaultSnatStatus.t() | nil
        }

  defstruct [:network, :subnetwork, :enable_intra_node_visibility, :default_snat_status]

  field :network, 1, type: :string
  field :subnetwork, 2, type: :string
  field :enable_intra_node_visibility, 5, type: :bool
  field :default_snat_status, 7, type: Google.Container.V1.DefaultSnatStatus
end

defmodule Google.Container.V1.GetOpenIDConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Container.V1.GetOpenIDConfigResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          issuer: String.t(),
          jwks_uri: String.t(),
          response_types_supported: [String.t()],
          subject_types_supported: [String.t()],
          id_token_signing_alg_values_supported: [String.t()],
          claims_supported: [String.t()],
          grant_types: [String.t()]
        }

  defstruct [
    :issuer,
    :jwks_uri,
    :response_types_supported,
    :subject_types_supported,
    :id_token_signing_alg_values_supported,
    :claims_supported,
    :grant_types
  ]

  field :issuer, 1, type: :string
  field :jwks_uri, 2, type: :string
  field :response_types_supported, 3, repeated: true, type: :string
  field :subject_types_supported, 4, repeated: true, type: :string
  field :id_token_signing_alg_values_supported, 5, repeated: true, type: :string
  field :claims_supported, 6, repeated: true, type: :string
  field :grant_types, 7, repeated: true, type: :string
end

defmodule Google.Container.V1.GetJSONWebKeysRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Container.V1.Jwk do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kty: String.t(),
          alg: String.t(),
          use: String.t(),
          kid: String.t(),
          n: String.t(),
          e: String.t(),
          x: String.t(),
          y: String.t(),
          crv: String.t()
        }

  defstruct [:kty, :alg, :use, :kid, :n, :e, :x, :y, :crv]

  field :kty, 1, type: :string
  field :alg, 2, type: :string
  field :use, 3, type: :string
  field :kid, 4, type: :string
  field :n, 5, type: :string
  field :e, 6, type: :string
  field :x, 7, type: :string
  field :y, 8, type: :string
  field :crv, 9, type: :string
end

defmodule Google.Container.V1.GetJSONWebKeysResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keys: [Google.Container.V1.Jwk.t()]
        }

  defstruct [:keys]

  field :keys, 1, repeated: true, type: Google.Container.V1.Jwk
end

defmodule Google.Container.V1.ReleaseChannel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          channel: Google.Container.V1.ReleaseChannel.Channel.t()
        }

  defstruct [:channel]

  field :channel, 1, type: Google.Container.V1.ReleaseChannel.Channel, enum: true
end

defmodule Google.Container.V1.IntraNodeVisibilityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.MaxPodsConstraint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_pods_per_node: integer
        }

  defstruct [:max_pods_per_node]

  field :max_pods_per_node, 1, type: :int64
end

defmodule Google.Container.V1.WorkloadIdentityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload_pool: String.t()
        }

  defstruct [:workload_pool]

  field :workload_pool, 2, type: :string
end

defmodule Google.Container.V1.DatabaseEncryption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Container.V1.DatabaseEncryption.State.t(),
          key_name: String.t()
        }

  defstruct [:state, :key_name]

  field :state, 2, type: Google.Container.V1.DatabaseEncryption.State, enum: true
  field :key_name, 1, type: :string
end

defmodule Google.Container.V1.ListUsableSubnetworksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :filter, :page_size, :page_token]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Container.V1.ListUsableSubnetworksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subnetworks: [Google.Container.V1.UsableSubnetwork.t()],
          next_page_token: String.t()
        }

  defstruct [:subnetworks, :next_page_token]

  field :subnetworks, 1, repeated: true, type: Google.Container.V1.UsableSubnetwork
  field :next_page_token, 2, type: :string
end

defmodule Google.Container.V1.UsableSubnetworkSecondaryRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          range_name: String.t(),
          ip_cidr_range: String.t(),
          status: Google.Container.V1.UsableSubnetworkSecondaryRange.Status.t()
        }

  defstruct [:range_name, :ip_cidr_range, :status]

  field :range_name, 1, type: :string
  field :ip_cidr_range, 2, type: :string
  field :status, 3, type: Google.Container.V1.UsableSubnetworkSecondaryRange.Status, enum: true
end

defmodule Google.Container.V1.UsableSubnetwork do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subnetwork: String.t(),
          network: String.t(),
          ip_cidr_range: String.t(),
          secondary_ip_ranges: [Google.Container.V1.UsableSubnetworkSecondaryRange.t()],
          status_message: String.t()
        }

  defstruct [:subnetwork, :network, :ip_cidr_range, :secondary_ip_ranges, :status_message]

  field :subnetwork, 1, type: :string
  field :network, 2, type: :string
  field :ip_cidr_range, 3, type: :string

  field :secondary_ip_ranges, 4,
    repeated: true,
    type: Google.Container.V1.UsableSubnetworkSecondaryRange

  field :status_message, 5, type: :string
end

defmodule Google.Container.V1.ResourceUsageExportConfig.BigQueryDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataset_id: String.t()
        }

  defstruct [:dataset_id]

  field :dataset_id, 1, type: :string
end

defmodule Google.Container.V1.ResourceUsageExportConfig.ConsumptionMeteringConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.ResourceUsageExportConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bigquery_destination:
            Google.Container.V1.ResourceUsageExportConfig.BigQueryDestination.t() | nil,
          enable_network_egress_metering: boolean,
          consumption_metering_config:
            Google.Container.V1.ResourceUsageExportConfig.ConsumptionMeteringConfig.t() | nil
        }

  defstruct [:bigquery_destination, :enable_network_egress_metering, :consumption_metering_config]

  field :bigquery_destination, 1,
    type: Google.Container.V1.ResourceUsageExportConfig.BigQueryDestination

  field :enable_network_egress_metering, 2, type: :bool

  field :consumption_metering_config, 3,
    type: Google.Container.V1.ResourceUsageExportConfig.ConsumptionMeteringConfig
end

defmodule Google.Container.V1.VerticalPodAutoscaling do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.DefaultSnatStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean
        }

  defstruct [:disabled]

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.ShieldedNodes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.ClusterManager.Service do
  @moduledoc false
  use GRPC.Service, name: "google.container.v1.ClusterManager"

  rpc :ListClusters,
      Google.Container.V1.ListClustersRequest,
      Google.Container.V1.ListClustersResponse

  rpc :GetCluster, Google.Container.V1.GetClusterRequest, Google.Container.V1.Cluster

  rpc :CreateCluster, Google.Container.V1.CreateClusterRequest, Google.Container.V1.Operation

  rpc :UpdateCluster, Google.Container.V1.UpdateClusterRequest, Google.Container.V1.Operation

  rpc :UpdateNodePool, Google.Container.V1.UpdateNodePoolRequest, Google.Container.V1.Operation

  rpc :SetNodePoolAutoscaling,
      Google.Container.V1.SetNodePoolAutoscalingRequest,
      Google.Container.V1.Operation

  rpc :SetLoggingService,
      Google.Container.V1.SetLoggingServiceRequest,
      Google.Container.V1.Operation

  rpc :SetMonitoringService,
      Google.Container.V1.SetMonitoringServiceRequest,
      Google.Container.V1.Operation

  rpc :SetAddonsConfig, Google.Container.V1.SetAddonsConfigRequest, Google.Container.V1.Operation

  rpc :SetLocations, Google.Container.V1.SetLocationsRequest, Google.Container.V1.Operation

  rpc :UpdateMaster, Google.Container.V1.UpdateMasterRequest, Google.Container.V1.Operation

  rpc :SetMasterAuth, Google.Container.V1.SetMasterAuthRequest, Google.Container.V1.Operation

  rpc :DeleteCluster, Google.Container.V1.DeleteClusterRequest, Google.Container.V1.Operation

  rpc :ListOperations,
      Google.Container.V1.ListOperationsRequest,
      Google.Container.V1.ListOperationsResponse

  rpc :GetOperation, Google.Container.V1.GetOperationRequest, Google.Container.V1.Operation

  rpc :CancelOperation, Google.Container.V1.CancelOperationRequest, Google.Protobuf.Empty

  rpc :GetServerConfig,
      Google.Container.V1.GetServerConfigRequest,
      Google.Container.V1.ServerConfig

  rpc :GetJSONWebKeys,
      Google.Container.V1.GetJSONWebKeysRequest,
      Google.Container.V1.GetJSONWebKeysResponse

  rpc :ListNodePools,
      Google.Container.V1.ListNodePoolsRequest,
      Google.Container.V1.ListNodePoolsResponse

  rpc :GetNodePool, Google.Container.V1.GetNodePoolRequest, Google.Container.V1.NodePool

  rpc :CreateNodePool, Google.Container.V1.CreateNodePoolRequest, Google.Container.V1.Operation

  rpc :DeleteNodePool, Google.Container.V1.DeleteNodePoolRequest, Google.Container.V1.Operation

  rpc :RollbackNodePoolUpgrade,
      Google.Container.V1.RollbackNodePoolUpgradeRequest,
      Google.Container.V1.Operation

  rpc :SetNodePoolManagement,
      Google.Container.V1.SetNodePoolManagementRequest,
      Google.Container.V1.Operation

  rpc :SetLabels, Google.Container.V1.SetLabelsRequest, Google.Container.V1.Operation

  rpc :SetLegacyAbac, Google.Container.V1.SetLegacyAbacRequest, Google.Container.V1.Operation

  rpc :StartIPRotation, Google.Container.V1.StartIPRotationRequest, Google.Container.V1.Operation

  rpc :CompleteIPRotation,
      Google.Container.V1.CompleteIPRotationRequest,
      Google.Container.V1.Operation

  rpc :SetNodePoolSize, Google.Container.V1.SetNodePoolSizeRequest, Google.Container.V1.Operation

  rpc :SetNetworkPolicy,
      Google.Container.V1.SetNetworkPolicyRequest,
      Google.Container.V1.Operation

  rpc :SetMaintenancePolicy,
      Google.Container.V1.SetMaintenancePolicyRequest,
      Google.Container.V1.Operation

  rpc :ListUsableSubnetworks,
      Google.Container.V1.ListUsableSubnetworksRequest,
      Google.Container.V1.ListUsableSubnetworksResponse
end

defmodule Google.Container.V1.ClusterManager.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Container.V1.ClusterManager.Service
end
