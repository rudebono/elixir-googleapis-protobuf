defmodule Google.Cloud.Dataproc.V1.GceClusterConfig.PrivateIpv6GoogleAccess do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED
          | :INHERIT_FROM_SUBNETWORK
          | :OUTBOUND
          | :BIDIRECTIONAL

  field :PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, 0
  field :INHERIT_FROM_SUBNETWORK, 1
  field :OUTBOUND, 2
  field :BIDIRECTIONAL, 3
end

defmodule Google.Cloud.Dataproc.V1.InstanceGroupConfig.Preemptibility do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PREEMPTIBILITY_UNSPECIFIED | :NON_PREEMPTIBLE | :PREEMPTIBLE

  field :PREEMPTIBILITY_UNSPECIFIED, 0
  field :NON_PREEMPTIBLE, 1
  field :PREEMPTIBLE, 2
end

defmodule Google.Cloud.Dataproc.V1.ClusterStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN
          | :CREATING
          | :RUNNING
          | :ERROR
          | :ERROR_DUE_TO_UPDATE
          | :DELETING
          | :UPDATING
          | :STOPPING
          | :STOPPED
          | :STARTING

  field :UNKNOWN, 0
  field :CREATING, 1
  field :RUNNING, 2
  field :ERROR, 3
  field :ERROR_DUE_TO_UPDATE, 9
  field :DELETING, 4
  field :UPDATING, 5
  field :STOPPING, 6
  field :STOPPED, 7
  field :STARTING, 8
end

defmodule Google.Cloud.Dataproc.V1.ClusterStatus.Substate do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNHEALTHY | :STALE_STATUS

  field :UNSPECIFIED, 0
  field :UNHEALTHY, 1
  field :STALE_STATUS, 2
end

defmodule Google.Cloud.Dataproc.V1.ReservationAffinity.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :TYPE_UNSPECIFIED | :NO_RESERVATION | :ANY_RESERVATION | :SPECIFIC_RESERVATION

  field :TYPE_UNSPECIFIED, 0
  field :NO_RESERVATION, 1
  field :ANY_RESERVATION, 2
  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Cloud.Dataproc.V1.Cluster.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.Cluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          cluster_name: String.t(),
          config: Google.Cloud.Dataproc.V1.ClusterConfig.t() | nil,
          labels: %{String.t() => String.t()},
          status: Google.Cloud.Dataproc.V1.ClusterStatus.t() | nil,
          status_history: [Google.Cloud.Dataproc.V1.ClusterStatus.t()],
          cluster_uuid: String.t(),
          metrics: Google.Cloud.Dataproc.V1.ClusterMetrics.t() | nil
        }

  defstruct [
    :project_id,
    :cluster_name,
    :config,
    :labels,
    :status,
    :status_history,
    :cluster_uuid,
    :metrics
  ]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :cluster_name, 2, type: :string, json_name: "clusterName"
  field :config, 3, type: Google.Cloud.Dataproc.V1.ClusterConfig
  field :labels, 8, repeated: true, type: Google.Cloud.Dataproc.V1.Cluster.LabelsEntry, map: true
  field :status, 4, type: Google.Cloud.Dataproc.V1.ClusterStatus

  field :status_history, 7,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterStatus,
    json_name: "statusHistory"

  field :cluster_uuid, 6, type: :string, json_name: "clusterUuid"
  field :metrics, 9, type: Google.Cloud.Dataproc.V1.ClusterMetrics

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config_bucket: String.t(),
          temp_bucket: String.t(),
          gce_cluster_config: Google.Cloud.Dataproc.V1.GceClusterConfig.t() | nil,
          master_config: Google.Cloud.Dataproc.V1.InstanceGroupConfig.t() | nil,
          worker_config: Google.Cloud.Dataproc.V1.InstanceGroupConfig.t() | nil,
          secondary_worker_config: Google.Cloud.Dataproc.V1.InstanceGroupConfig.t() | nil,
          software_config: Google.Cloud.Dataproc.V1.SoftwareConfig.t() | nil,
          initialization_actions: [Google.Cloud.Dataproc.V1.NodeInitializationAction.t()],
          encryption_config: Google.Cloud.Dataproc.V1.EncryptionConfig.t() | nil,
          autoscaling_config: Google.Cloud.Dataproc.V1.AutoscalingConfig.t() | nil,
          security_config: Google.Cloud.Dataproc.V1.SecurityConfig.t() | nil,
          lifecycle_config: Google.Cloud.Dataproc.V1.LifecycleConfig.t() | nil,
          endpoint_config: Google.Cloud.Dataproc.V1.EndpointConfig.t() | nil,
          metastore_config: Google.Cloud.Dataproc.V1.MetastoreConfig.t() | nil,
          gke_cluster_config: Google.Cloud.Dataproc.V1.GkeClusterConfig.t() | nil
        }

  defstruct [
    :config_bucket,
    :temp_bucket,
    :gce_cluster_config,
    :master_config,
    :worker_config,
    :secondary_worker_config,
    :software_config,
    :initialization_actions,
    :encryption_config,
    :autoscaling_config,
    :security_config,
    :lifecycle_config,
    :endpoint_config,
    :metastore_config,
    :gke_cluster_config
  ]

  field :config_bucket, 1, type: :string, json_name: "configBucket"
  field :temp_bucket, 2, type: :string, json_name: "tempBucket"

  field :gce_cluster_config, 8,
    type: Google.Cloud.Dataproc.V1.GceClusterConfig,
    json_name: "gceClusterConfig"

  field :master_config, 9,
    type: Google.Cloud.Dataproc.V1.InstanceGroupConfig,
    json_name: "masterConfig"

  field :worker_config, 10,
    type: Google.Cloud.Dataproc.V1.InstanceGroupConfig,
    json_name: "workerConfig"

  field :secondary_worker_config, 12,
    type: Google.Cloud.Dataproc.V1.InstanceGroupConfig,
    json_name: "secondaryWorkerConfig"

  field :software_config, 13,
    type: Google.Cloud.Dataproc.V1.SoftwareConfig,
    json_name: "softwareConfig"

  field :initialization_actions, 11,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.NodeInitializationAction,
    json_name: "initializationActions"

  field :encryption_config, 15,
    type: Google.Cloud.Dataproc.V1.EncryptionConfig,
    json_name: "encryptionConfig"

  field :autoscaling_config, 18,
    type: Google.Cloud.Dataproc.V1.AutoscalingConfig,
    json_name: "autoscalingConfig"

  field :security_config, 16,
    type: Google.Cloud.Dataproc.V1.SecurityConfig,
    json_name: "securityConfig"

  field :lifecycle_config, 17,
    type: Google.Cloud.Dataproc.V1.LifecycleConfig,
    json_name: "lifecycleConfig"

  field :endpoint_config, 19,
    type: Google.Cloud.Dataproc.V1.EndpointConfig,
    json_name: "endpointConfig"

  field :metastore_config, 20,
    type: Google.Cloud.Dataproc.V1.MetastoreConfig,
    json_name: "metastoreConfig"

  field :gke_cluster_config, 21,
    type: Google.Cloud.Dataproc.V1.GkeClusterConfig,
    json_name: "gkeClusterConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.GkeClusterConfig.NamespacedGkeDeploymentTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_gke_cluster: String.t(),
          cluster_namespace: String.t()
        }

  defstruct [:target_gke_cluster, :cluster_namespace]

  field :target_gke_cluster, 1, type: :string, json_name: "targetGkeCluster"
  field :cluster_namespace, 2, type: :string, json_name: "clusterNamespace"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.GkeClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespaced_gke_deployment_target:
            Google.Cloud.Dataproc.V1.GkeClusterConfig.NamespacedGkeDeploymentTarget.t() | nil
        }

  defstruct [:namespaced_gke_deployment_target]

  field :namespaced_gke_deployment_target, 1,
    type: Google.Cloud.Dataproc.V1.GkeClusterConfig.NamespacedGkeDeploymentTarget,
    json_name: "namespacedGkeDeploymentTarget"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.EndpointConfig.HttpPortsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.EndpointConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_ports: %{String.t() => String.t()},
          enable_http_port_access: boolean
        }

  defstruct [:http_ports, :enable_http_port_access]

  field :http_ports, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.EndpointConfig.HttpPortsEntry,
    json_name: "httpPorts",
    map: true

  field :enable_http_port_access, 2, type: :bool, json_name: "enableHttpPortAccess"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.AutoscalingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_uri: String.t()
        }

  defstruct [:policy_uri]

  field :policy_uri, 1, type: :string, json_name: "policyUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.EncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gce_pd_kms_key_name: String.t()
        }

  defstruct [:gce_pd_kms_key_name]

  field :gce_pd_kms_key_name, 1, type: :string, json_name: "gcePdKmsKeyName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.GceClusterConfig.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.GceClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          zone_uri: String.t(),
          network_uri: String.t(),
          subnetwork_uri: String.t(),
          internal_ip_only: boolean,
          private_ipv6_google_access:
            Google.Cloud.Dataproc.V1.GceClusterConfig.PrivateIpv6GoogleAccess.t(),
          service_account: String.t(),
          service_account_scopes: [String.t()],
          tags: [String.t()],
          metadata: %{String.t() => String.t()},
          reservation_affinity: Google.Cloud.Dataproc.V1.ReservationAffinity.t() | nil,
          node_group_affinity: Google.Cloud.Dataproc.V1.NodeGroupAffinity.t() | nil,
          shielded_instance_config: Google.Cloud.Dataproc.V1.ShieldedInstanceConfig.t() | nil,
          confidential_instance_config:
            Google.Cloud.Dataproc.V1.ConfidentialInstanceConfig.t() | nil
        }

  defstruct [
    :zone_uri,
    :network_uri,
    :subnetwork_uri,
    :internal_ip_only,
    :private_ipv6_google_access,
    :service_account,
    :service_account_scopes,
    :tags,
    :metadata,
    :reservation_affinity,
    :node_group_affinity,
    :shielded_instance_config,
    :confidential_instance_config
  ]

  field :zone_uri, 1, type: :string, json_name: "zoneUri"
  field :network_uri, 2, type: :string, json_name: "networkUri"
  field :subnetwork_uri, 6, type: :string, json_name: "subnetworkUri"
  field :internal_ip_only, 7, type: :bool, json_name: "internalIpOnly"

  field :private_ipv6_google_access, 12,
    type: Google.Cloud.Dataproc.V1.GceClusterConfig.PrivateIpv6GoogleAccess,
    enum: true,
    json_name: "privateIpv6GoogleAccess"

  field :service_account, 8, type: :string, json_name: "serviceAccount"

  field :service_account_scopes, 3,
    repeated: true,
    type: :string,
    json_name: "serviceAccountScopes"

  field :tags, 4, repeated: true, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.GceClusterConfig.MetadataEntry,
    map: true

  field :reservation_affinity, 11,
    type: Google.Cloud.Dataproc.V1.ReservationAffinity,
    json_name: "reservationAffinity"

  field :node_group_affinity, 13,
    type: Google.Cloud.Dataproc.V1.NodeGroupAffinity,
    json_name: "nodeGroupAffinity"

  field :shielded_instance_config, 14,
    type: Google.Cloud.Dataproc.V1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig"

  field :confidential_instance_config, 15,
    type: Google.Cloud.Dataproc.V1.ConfidentialInstanceConfig,
    json_name: "confidentialInstanceConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.NodeGroupAffinity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          node_group_uri: String.t()
        }

  defstruct [:node_group_uri]

  field :node_group_uri, 1, type: :string, json_name: "nodeGroupUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ShieldedInstanceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_secure_boot: boolean,
          enable_vtpm: boolean,
          enable_integrity_monitoring: boolean
        }

  defstruct [:enable_secure_boot, :enable_vtpm, :enable_integrity_monitoring]

  field :enable_secure_boot, 1, type: :bool, json_name: "enableSecureBoot"
  field :enable_vtpm, 2, type: :bool, json_name: "enableVtpm"
  field :enable_integrity_monitoring, 3, type: :bool, json_name: "enableIntegrityMonitoring"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ConfidentialInstanceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_confidential_compute: boolean
        }

  defstruct [:enable_confidential_compute]

  field :enable_confidential_compute, 1, type: :bool, json_name: "enableConfidentialCompute"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.InstanceGroupConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          num_instances: integer,
          instance_names: [String.t()],
          image_uri: String.t(),
          machine_type_uri: String.t(),
          disk_config: Google.Cloud.Dataproc.V1.DiskConfig.t() | nil,
          is_preemptible: boolean,
          preemptibility: Google.Cloud.Dataproc.V1.InstanceGroupConfig.Preemptibility.t(),
          managed_group_config: Google.Cloud.Dataproc.V1.ManagedGroupConfig.t() | nil,
          accelerators: [Google.Cloud.Dataproc.V1.AcceleratorConfig.t()],
          min_cpu_platform: String.t()
        }

  defstruct [
    :num_instances,
    :instance_names,
    :image_uri,
    :machine_type_uri,
    :disk_config,
    :is_preemptible,
    :preemptibility,
    :managed_group_config,
    :accelerators,
    :min_cpu_platform
  ]

  field :num_instances, 1, type: :int32, json_name: "numInstances"
  field :instance_names, 2, repeated: true, type: :string, json_name: "instanceNames"
  field :image_uri, 3, type: :string, json_name: "imageUri"
  field :machine_type_uri, 4, type: :string, json_name: "machineTypeUri"
  field :disk_config, 5, type: Google.Cloud.Dataproc.V1.DiskConfig, json_name: "diskConfig"
  field :is_preemptible, 6, type: :bool, json_name: "isPreemptible"

  field :preemptibility, 10,
    type: Google.Cloud.Dataproc.V1.InstanceGroupConfig.Preemptibility,
    enum: true

  field :managed_group_config, 7,
    type: Google.Cloud.Dataproc.V1.ManagedGroupConfig,
    json_name: "managedGroupConfig"

  field :accelerators, 8, repeated: true, type: Google.Cloud.Dataproc.V1.AcceleratorConfig
  field :min_cpu_platform, 9, type: :string, json_name: "minCpuPlatform"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ManagedGroupConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_template_name: String.t(),
          instance_group_manager_name: String.t()
        }

  defstruct [:instance_template_name, :instance_group_manager_name]

  field :instance_template_name, 1, type: :string, json_name: "instanceTemplateName"
  field :instance_group_manager_name, 2, type: :string, json_name: "instanceGroupManagerName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.AcceleratorConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accelerator_type_uri: String.t(),
          accelerator_count: integer
        }

  defstruct [:accelerator_type_uri, :accelerator_count]

  field :accelerator_type_uri, 1, type: :string, json_name: "acceleratorTypeUri"
  field :accelerator_count, 2, type: :int32, json_name: "acceleratorCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.DiskConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          boot_disk_type: String.t(),
          boot_disk_size_gb: integer,
          num_local_ssds: integer
        }

  defstruct [:boot_disk_type, :boot_disk_size_gb, :num_local_ssds]

  field :boot_disk_type, 3, type: :string, json_name: "bootDiskType"
  field :boot_disk_size_gb, 1, type: :int32, json_name: "bootDiskSizeGb"
  field :num_local_ssds, 2, type: :int32, json_name: "numLocalSsds"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.NodeInitializationAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executable_file: String.t(),
          execution_timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:executable_file, :execution_timeout]

  field :executable_file, 1, type: :string, json_name: "executableFile"
  field :execution_timeout, 2, type: Google.Protobuf.Duration, json_name: "executionTimeout"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataproc.V1.ClusterStatus.State.t(),
          detail: String.t(),
          state_start_time: Google.Protobuf.Timestamp.t() | nil,
          substate: Google.Cloud.Dataproc.V1.ClusterStatus.Substate.t()
        }

  defstruct [:state, :detail, :state_start_time, :substate]

  field :state, 1, type: Google.Cloud.Dataproc.V1.ClusterStatus.State, enum: true
  field :detail, 2, type: :string
  field :state_start_time, 3, type: Google.Protobuf.Timestamp, json_name: "stateStartTime"
  field :substate, 4, type: Google.Cloud.Dataproc.V1.ClusterStatus.Substate, enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.SecurityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kerberos_config: Google.Cloud.Dataproc.V1.KerberosConfig.t() | nil,
          identity_config: Google.Cloud.Dataproc.V1.IdentityConfig.t() | nil
        }

  defstruct [:kerberos_config, :identity_config]

  field :kerberos_config, 1,
    type: Google.Cloud.Dataproc.V1.KerberosConfig,
    json_name: "kerberosConfig"

  field :identity_config, 2,
    type: Google.Cloud.Dataproc.V1.IdentityConfig,
    json_name: "identityConfig"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.KerberosConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_kerberos: boolean,
          root_principal_password_uri: String.t(),
          kms_key_uri: String.t(),
          keystore_uri: String.t(),
          truststore_uri: String.t(),
          keystore_password_uri: String.t(),
          key_password_uri: String.t(),
          truststore_password_uri: String.t(),
          cross_realm_trust_realm: String.t(),
          cross_realm_trust_kdc: String.t(),
          cross_realm_trust_admin_server: String.t(),
          cross_realm_trust_shared_password_uri: String.t(),
          kdc_db_key_uri: String.t(),
          tgt_lifetime_hours: integer,
          realm: String.t()
        }

  defstruct [
    :enable_kerberos,
    :root_principal_password_uri,
    :kms_key_uri,
    :keystore_uri,
    :truststore_uri,
    :keystore_password_uri,
    :key_password_uri,
    :truststore_password_uri,
    :cross_realm_trust_realm,
    :cross_realm_trust_kdc,
    :cross_realm_trust_admin_server,
    :cross_realm_trust_shared_password_uri,
    :kdc_db_key_uri,
    :tgt_lifetime_hours,
    :realm
  ]

  field :enable_kerberos, 1, type: :bool, json_name: "enableKerberos"
  field :root_principal_password_uri, 2, type: :string, json_name: "rootPrincipalPasswordUri"
  field :kms_key_uri, 3, type: :string, json_name: "kmsKeyUri"
  field :keystore_uri, 4, type: :string, json_name: "keystoreUri"
  field :truststore_uri, 5, type: :string, json_name: "truststoreUri"
  field :keystore_password_uri, 6, type: :string, json_name: "keystorePasswordUri"
  field :key_password_uri, 7, type: :string, json_name: "keyPasswordUri"
  field :truststore_password_uri, 8, type: :string, json_name: "truststorePasswordUri"
  field :cross_realm_trust_realm, 9, type: :string, json_name: "crossRealmTrustRealm"
  field :cross_realm_trust_kdc, 10, type: :string, json_name: "crossRealmTrustKdc"

  field :cross_realm_trust_admin_server, 11,
    type: :string,
    json_name: "crossRealmTrustAdminServer"

  field :cross_realm_trust_shared_password_uri, 12,
    type: :string,
    json_name: "crossRealmTrustSharedPasswordUri"

  field :kdc_db_key_uri, 13, type: :string, json_name: "kdcDbKeyUri"
  field :tgt_lifetime_hours, 14, type: :int32, json_name: "tgtLifetimeHours"
  field :realm, 15, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.IdentityConfig.UserServiceAccountMappingEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.IdentityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_service_account_mapping: %{String.t() => String.t()}
        }

  defstruct [:user_service_account_mapping]

  field :user_service_account_mapping, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.IdentityConfig.UserServiceAccountMappingEntry,
    json_name: "userServiceAccountMapping",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.SoftwareConfig.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.SoftwareConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_version: String.t(),
          properties: %{String.t() => String.t()},
          optional_components: [Google.Cloud.Dataproc.V1.Component.t()]
        }

  defstruct [:image_version, :properties, :optional_components]

  field :image_version, 1, type: :string, json_name: "imageVersion"

  field :properties, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.SoftwareConfig.PropertiesEntry,
    map: true

  field :optional_components, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.Component,
    enum: true,
    json_name: "optionalComponents"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.LifecycleConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ttl:
            {:auto_delete_time, Google.Protobuf.Timestamp.t() | nil}
            | {:auto_delete_ttl, Google.Protobuf.Duration.t() | nil},
          idle_delete_ttl: Google.Protobuf.Duration.t() | nil,
          idle_start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:ttl, :idle_delete_ttl, :idle_start_time]

  oneof :ttl, 0

  field :idle_delete_ttl, 1, type: Google.Protobuf.Duration, json_name: "idleDeleteTtl"

  field :auto_delete_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "autoDeleteTime",
    oneof: 0

  field :auto_delete_ttl, 3, type: Google.Protobuf.Duration, json_name: "autoDeleteTtl", oneof: 0
  field :idle_start_time, 4, type: Google.Protobuf.Timestamp, json_name: "idleStartTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.MetastoreConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dataproc_metastore_service: String.t()
        }

  defstruct [:dataproc_metastore_service]

  field :dataproc_metastore_service, 1, type: :string, json_name: "dataprocMetastoreService"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterMetrics.HdfsMetricsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterMetrics.YarnMetricsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hdfs_metrics: %{String.t() => integer},
          yarn_metrics: %{String.t() => integer}
        }

  defstruct [:hdfs_metrics, :yarn_metrics]

  field :hdfs_metrics, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterMetrics.HdfsMetricsEntry,
    json_name: "hdfsMetrics",
    map: true

  field :yarn_metrics, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterMetrics.YarnMetricsEntry,
    json_name: "yarnMetrics",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.CreateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster: Google.Cloud.Dataproc.V1.Cluster.t() | nil,
          request_id: String.t(),
          action_on_failed_primary_workers: Google.Cloud.Dataproc.V1.FailureAction.t()
        }

  defstruct [:project_id, :region, :cluster, :request_id, :action_on_failed_primary_workers]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :region, 3, type: :string
  field :cluster, 2, type: Google.Cloud.Dataproc.V1.Cluster
  field :request_id, 4, type: :string, json_name: "requestId"

  field :action_on_failed_primary_workers, 5,
    type: Google.Cloud.Dataproc.V1.FailureAction,
    enum: true,
    json_name: "actionOnFailedPrimaryWorkers"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.UpdateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster_name: String.t(),
          cluster: Google.Cloud.Dataproc.V1.Cluster.t() | nil,
          graceful_decommission_timeout: Google.Protobuf.Duration.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          request_id: String.t()
        }

  defstruct [
    :project_id,
    :region,
    :cluster_name,
    :cluster,
    :graceful_decommission_timeout,
    :update_mask,
    :request_id
  ]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :region, 5, type: :string
  field :cluster_name, 2, type: :string, json_name: "clusterName"
  field :cluster, 3, type: Google.Cloud.Dataproc.V1.Cluster

  field :graceful_decommission_timeout, 6,
    type: Google.Protobuf.Duration,
    json_name: "gracefulDecommissionTimeout"

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :request_id, 7, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.StopClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster_name: String.t(),
          cluster_uuid: String.t(),
          request_id: String.t()
        }

  defstruct [:project_id, :region, :cluster_name, :cluster_uuid, :request_id]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :region, 2, type: :string
  field :cluster_name, 3, type: :string, json_name: "clusterName"
  field :cluster_uuid, 4, type: :string, json_name: "clusterUuid"
  field :request_id, 5, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.StartClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster_name: String.t(),
          cluster_uuid: String.t(),
          request_id: String.t()
        }

  defstruct [:project_id, :region, :cluster_name, :cluster_uuid, :request_id]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :region, 2, type: :string
  field :cluster_name, 3, type: :string, json_name: "clusterName"
  field :cluster_uuid, 4, type: :string, json_name: "clusterUuid"
  field :request_id, 5, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.DeleteClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster_name: String.t(),
          cluster_uuid: String.t(),
          request_id: String.t()
        }

  defstruct [:project_id, :region, :cluster_name, :cluster_uuid, :request_id]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :region, 3, type: :string
  field :cluster_name, 2, type: :string, json_name: "clusterName"
  field :cluster_uuid, 4, type: :string, json_name: "clusterUuid"
  field :request_id, 5, type: :string, json_name: "requestId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.GetClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster_name: String.t()
        }

  defstruct [:project_id, :region, :cluster_name]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :region, 3, type: :string
  field :cluster_name, 2, type: :string, json_name: "clusterName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ListClustersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          filter: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project_id, :region, :filter, :page_size, :page_token]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :region, 4, type: :string
  field :filter, 5, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ListClustersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          clusters: [Google.Cloud.Dataproc.V1.Cluster.t()],
          next_page_token: String.t()
        }

  defstruct [:clusters, :next_page_token]

  field :clusters, 1, repeated: true, type: Google.Cloud.Dataproc.V1.Cluster
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.DiagnoseClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster_name: String.t()
        }

  defstruct [:project_id, :region, :cluster_name]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :region, 3, type: :string
  field :cluster_name, 2, type: :string, json_name: "clusterName"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.DiagnoseClusterResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t()
        }

  defstruct [:output_uri]

  field :output_uri, 1, type: :string, json_name: "outputUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ReservationAffinity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consume_reservation_type: Google.Cloud.Dataproc.V1.ReservationAffinity.Type.t(),
          key: String.t(),
          values: [String.t()]
        }

  defstruct [:consume_reservation_type, :key, :values]

  field :consume_reservation_type, 1,
    type: Google.Cloud.Dataproc.V1.ReservationAffinity.Type,
    enum: true,
    json_name: "consumeReservationType"

  field :key, 2, type: :string
  field :values, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Dataproc.V1.ClusterController.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataproc.v1.ClusterController"

  rpc :CreateCluster, Google.Cloud.Dataproc.V1.CreateClusterRequest, Google.Longrunning.Operation

  rpc :UpdateCluster, Google.Cloud.Dataproc.V1.UpdateClusterRequest, Google.Longrunning.Operation

  rpc :StopCluster, Google.Cloud.Dataproc.V1.StopClusterRequest, Google.Longrunning.Operation

  rpc :StartCluster, Google.Cloud.Dataproc.V1.StartClusterRequest, Google.Longrunning.Operation

  rpc :DeleteCluster, Google.Cloud.Dataproc.V1.DeleteClusterRequest, Google.Longrunning.Operation

  rpc :GetCluster, Google.Cloud.Dataproc.V1.GetClusterRequest, Google.Cloud.Dataproc.V1.Cluster

  rpc :ListClusters,
      Google.Cloud.Dataproc.V1.ListClustersRequest,
      Google.Cloud.Dataproc.V1.ListClustersResponse

  rpc :DiagnoseCluster,
      Google.Cloud.Dataproc.V1.DiagnoseClusterRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dataproc.V1.ClusterController.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataproc.V1.ClusterController.Service
end
