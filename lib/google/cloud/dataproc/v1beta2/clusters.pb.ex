defmodule Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig.Preemptibility do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PREEMPTIBILITY_UNSPECIFIED | :NON_PREEMPTIBLE | :PREEMPTIBLE

  field :PREEMPTIBILITY_UNSPECIFIED, 0

  field :NON_PREEMPTIBLE, 1

  field :PREEMPTIBLE, 2
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterStatus.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNKNOWN
          | :CREATING
          | :RUNNING
          | :ERROR
          | :DELETING
          | :UPDATING
          | :STOPPING
          | :STOPPED
          | :STARTING

  field :UNKNOWN, 0

  field :CREATING, 1

  field :RUNNING, 2

  field :ERROR, 3

  field :DELETING, 4

  field :UPDATING, 5

  field :STOPPING, 6

  field :STOPPED, 7

  field :STARTING, 8
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterStatus.Substate do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNHEALTHY | :STALE_STATUS

  field :UNSPECIFIED, 0

  field :UNHEALTHY, 1

  field :STALE_STATUS, 2
end

defmodule Google.Cloud.Dataproc.V1beta2.ReservationAffinity.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :TYPE_UNSPECIFIED | :NO_RESERVATION | :ANY_RESERVATION | :SPECIFIC_RESERVATION

  field :TYPE_UNSPECIFIED, 0

  field :NO_RESERVATION, 1

  field :ANY_RESERVATION, 2

  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Cloud.Dataproc.V1beta2.Cluster.LabelsEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.Cluster do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          cluster_name: String.t(),
          config: Google.Cloud.Dataproc.V1beta2.ClusterConfig.t() | nil,
          labels: %{String.t() => String.t()},
          status: Google.Cloud.Dataproc.V1beta2.ClusterStatus.t() | nil,
          status_history: [Google.Cloud.Dataproc.V1beta2.ClusterStatus.t()],
          cluster_uuid: String.t(),
          metrics: Google.Cloud.Dataproc.V1beta2.ClusterMetrics.t() | nil
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

  field :project_id, 1, type: :string
  field :cluster_name, 2, type: :string
  field :config, 3, type: Google.Cloud.Dataproc.V1beta2.ClusterConfig

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.Cluster.LabelsEntry,
    map: true

  field :status, 4, type: Google.Cloud.Dataproc.V1beta2.ClusterStatus
  field :status_history, 7, repeated: true, type: Google.Cloud.Dataproc.V1beta2.ClusterStatus
  field :cluster_uuid, 6, type: :string
  field :metrics, 9, type: Google.Cloud.Dataproc.V1beta2.ClusterMetrics
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config_bucket: String.t(),
          temp_bucket: String.t(),
          gce_cluster_config: Google.Cloud.Dataproc.V1beta2.GceClusterConfig.t() | nil,
          master_config: Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig.t() | nil,
          worker_config: Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig.t() | nil,
          secondary_worker_config: Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig.t() | nil,
          software_config: Google.Cloud.Dataproc.V1beta2.SoftwareConfig.t() | nil,
          lifecycle_config: Google.Cloud.Dataproc.V1beta2.LifecycleConfig.t() | nil,
          initialization_actions: [Google.Cloud.Dataproc.V1beta2.NodeInitializationAction.t()],
          encryption_config: Google.Cloud.Dataproc.V1beta2.EncryptionConfig.t() | nil,
          autoscaling_config: Google.Cloud.Dataproc.V1beta2.AutoscalingConfig.t() | nil,
          endpoint_config: Google.Cloud.Dataproc.V1beta2.EndpointConfig.t() | nil,
          security_config: Google.Cloud.Dataproc.V1beta2.SecurityConfig.t() | nil,
          gke_cluster_config: Google.Cloud.Dataproc.V1beta2.GkeClusterConfig.t() | nil
        }

  defstruct [
    :config_bucket,
    :temp_bucket,
    :gce_cluster_config,
    :master_config,
    :worker_config,
    :secondary_worker_config,
    :software_config,
    :lifecycle_config,
    :initialization_actions,
    :encryption_config,
    :autoscaling_config,
    :endpoint_config,
    :security_config,
    :gke_cluster_config
  ]

  field :config_bucket, 1, type: :string
  field :temp_bucket, 2, type: :string
  field :gce_cluster_config, 8, type: Google.Cloud.Dataproc.V1beta2.GceClusterConfig
  field :master_config, 9, type: Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig
  field :worker_config, 10, type: Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig
  field :secondary_worker_config, 12, type: Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig
  field :software_config, 13, type: Google.Cloud.Dataproc.V1beta2.SoftwareConfig
  field :lifecycle_config, 14, type: Google.Cloud.Dataproc.V1beta2.LifecycleConfig

  field :initialization_actions, 11,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.NodeInitializationAction

  field :encryption_config, 15, type: Google.Cloud.Dataproc.V1beta2.EncryptionConfig
  field :autoscaling_config, 16, type: Google.Cloud.Dataproc.V1beta2.AutoscalingConfig
  field :endpoint_config, 17, type: Google.Cloud.Dataproc.V1beta2.EndpointConfig
  field :security_config, 18, type: Google.Cloud.Dataproc.V1beta2.SecurityConfig
  field :gke_cluster_config, 19, type: Google.Cloud.Dataproc.V1beta2.GkeClusterConfig
end

defmodule Google.Cloud.Dataproc.V1beta2.GkeClusterConfig.NamespacedGkeDeploymentTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_gke_cluster: String.t(),
          cluster_namespace: String.t()
        }

  defstruct [:target_gke_cluster, :cluster_namespace]

  field :target_gke_cluster, 1, type: :string
  field :cluster_namespace, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.GkeClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          namespaced_gke_deployment_target:
            Google.Cloud.Dataproc.V1beta2.GkeClusterConfig.NamespacedGkeDeploymentTarget.t() | nil
        }

  defstruct [:namespaced_gke_deployment_target]

  field :namespaced_gke_deployment_target, 1,
    type: Google.Cloud.Dataproc.V1beta2.GkeClusterConfig.NamespacedGkeDeploymentTarget
end

defmodule Google.Cloud.Dataproc.V1beta2.EndpointConfig.HttpPortsEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.EndpointConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_ports: %{String.t() => String.t()},
          enable_http_port_access: boolean
        }

  defstruct [:http_ports, :enable_http_port_access]

  field :http_ports, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.EndpointConfig.HttpPortsEntry,
    map: true

  field :enable_http_port_access, 2, type: :bool
end

defmodule Google.Cloud.Dataproc.V1beta2.AutoscalingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_uri: String.t()
        }

  defstruct [:policy_uri]

  field :policy_uri, 1, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.EncryptionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gce_pd_kms_key_name: String.t()
        }

  defstruct [:gce_pd_kms_key_name]

  field :gce_pd_kms_key_name, 1, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.GceClusterConfig.MetadataEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.GceClusterConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          zone_uri: String.t(),
          network_uri: String.t(),
          subnetwork_uri: String.t(),
          internal_ip_only: boolean,
          service_account: String.t(),
          service_account_scopes: [String.t()],
          tags: [String.t()],
          metadata: %{String.t() => String.t()},
          reservation_affinity: Google.Cloud.Dataproc.V1beta2.ReservationAffinity.t() | nil
        }

  defstruct [
    :zone_uri,
    :network_uri,
    :subnetwork_uri,
    :internal_ip_only,
    :service_account,
    :service_account_scopes,
    :tags,
    :metadata,
    :reservation_affinity
  ]

  field :zone_uri, 1, type: :string
  field :network_uri, 2, type: :string
  field :subnetwork_uri, 6, type: :string
  field :internal_ip_only, 7, type: :bool
  field :service_account, 8, type: :string
  field :service_account_scopes, 3, repeated: true, type: :string
  field :tags, 4, repeated: true, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.GceClusterConfig.MetadataEntry,
    map: true

  field :reservation_affinity, 11, type: Google.Cloud.Dataproc.V1beta2.ReservationAffinity
end

defmodule Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          num_instances: integer,
          instance_names: [String.t()],
          image_uri: String.t(),
          machine_type_uri: String.t(),
          disk_config: Google.Cloud.Dataproc.V1beta2.DiskConfig.t() | nil,
          is_preemptible: boolean,
          preemptibility: Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig.Preemptibility.t(),
          managed_group_config: Google.Cloud.Dataproc.V1beta2.ManagedGroupConfig.t() | nil,
          accelerators: [Google.Cloud.Dataproc.V1beta2.AcceleratorConfig.t()],
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

  field :num_instances, 1, type: :int32
  field :instance_names, 2, repeated: true, type: :string
  field :image_uri, 3, type: :string
  field :machine_type_uri, 4, type: :string
  field :disk_config, 5, type: Google.Cloud.Dataproc.V1beta2.DiskConfig
  field :is_preemptible, 6, type: :bool

  field :preemptibility, 10,
    type: Google.Cloud.Dataproc.V1beta2.InstanceGroupConfig.Preemptibility,
    enum: true

  field :managed_group_config, 7, type: Google.Cloud.Dataproc.V1beta2.ManagedGroupConfig
  field :accelerators, 8, repeated: true, type: Google.Cloud.Dataproc.V1beta2.AcceleratorConfig
  field :min_cpu_platform, 9, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.ManagedGroupConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_template_name: String.t(),
          instance_group_manager_name: String.t()
        }

  defstruct [:instance_template_name, :instance_group_manager_name]

  field :instance_template_name, 1, type: :string
  field :instance_group_manager_name, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.AcceleratorConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          accelerator_type_uri: String.t(),
          accelerator_count: integer
        }

  defstruct [:accelerator_type_uri, :accelerator_count]

  field :accelerator_type_uri, 1, type: :string
  field :accelerator_count, 2, type: :int32
end

defmodule Google.Cloud.Dataproc.V1beta2.DiskConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          boot_disk_type: String.t(),
          boot_disk_size_gb: integer,
          num_local_ssds: integer
        }

  defstruct [:boot_disk_type, :boot_disk_size_gb, :num_local_ssds]

  field :boot_disk_type, 3, type: :string
  field :boot_disk_size_gb, 1, type: :int32
  field :num_local_ssds, 2, type: :int32
end

defmodule Google.Cloud.Dataproc.V1beta2.LifecycleConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ttl: {atom, any},
          idle_delete_ttl: Google.Protobuf.Duration.t() | nil,
          idle_start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:ttl, :idle_delete_ttl, :idle_start_time]

  oneof :ttl, 0
  field :idle_delete_ttl, 1, type: Google.Protobuf.Duration
  field :auto_delete_time, 2, type: Google.Protobuf.Timestamp, oneof: 0
  field :auto_delete_ttl, 3, type: Google.Protobuf.Duration, oneof: 0
  field :idle_start_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Dataproc.V1beta2.SecurityConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kerberos_config: Google.Cloud.Dataproc.V1beta2.KerberosConfig.t() | nil
        }

  defstruct [:kerberos_config]

  field :kerberos_config, 1, type: Google.Cloud.Dataproc.V1beta2.KerberosConfig
end

defmodule Google.Cloud.Dataproc.V1beta2.KerberosConfig do
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

  field :enable_kerberos, 1, type: :bool
  field :root_principal_password_uri, 2, type: :string
  field :kms_key_uri, 3, type: :string
  field :keystore_uri, 4, type: :string
  field :truststore_uri, 5, type: :string
  field :keystore_password_uri, 6, type: :string
  field :key_password_uri, 7, type: :string
  field :truststore_password_uri, 8, type: :string
  field :cross_realm_trust_realm, 9, type: :string
  field :cross_realm_trust_kdc, 10, type: :string
  field :cross_realm_trust_admin_server, 11, type: :string
  field :cross_realm_trust_shared_password_uri, 12, type: :string
  field :kdc_db_key_uri, 13, type: :string
  field :tgt_lifetime_hours, 14, type: :int32
  field :realm, 15, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.NodeInitializationAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          executable_file: String.t(),
          execution_timeout: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:executable_file, :execution_timeout]

  field :executable_file, 1, type: :string
  field :execution_timeout, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dataproc.V1beta2.ClusterStatus.State.t(),
          detail: String.t(),
          state_start_time: Google.Protobuf.Timestamp.t() | nil,
          substate: Google.Cloud.Dataproc.V1beta2.ClusterStatus.Substate.t()
        }

  defstruct [:state, :detail, :state_start_time, :substate]

  field :state, 1, type: Google.Cloud.Dataproc.V1beta2.ClusterStatus.State, enum: true
  field :detail, 2, type: :string
  field :state_start_time, 3, type: Google.Protobuf.Timestamp
  field :substate, 4, type: Google.Cloud.Dataproc.V1beta2.ClusterStatus.Substate, enum: true
end

defmodule Google.Cloud.Dataproc.V1beta2.SoftwareConfig.PropertiesEntry do
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

defmodule Google.Cloud.Dataproc.V1beta2.SoftwareConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image_version: String.t(),
          properties: %{String.t() => String.t()},
          optional_components: [[Google.Cloud.Dataproc.V1beta2.Component.t()]]
        }

  defstruct [:image_version, :properties, :optional_components]

  field :image_version, 1, type: :string

  field :properties, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.SoftwareConfig.PropertiesEntry,
    map: true

  field :optional_components, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.Component,
    enum: true
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterMetrics.HdfsMetricsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterMetrics.YarnMetricsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: integer
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterMetrics do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hdfs_metrics: %{String.t() => integer},
          yarn_metrics: %{String.t() => integer}
        }

  defstruct [:hdfs_metrics, :yarn_metrics]

  field :hdfs_metrics, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.ClusterMetrics.HdfsMetricsEntry,
    map: true

  field :yarn_metrics, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1beta2.ClusterMetrics.YarnMetricsEntry,
    map: true
end

defmodule Google.Cloud.Dataproc.V1beta2.CreateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster: Google.Cloud.Dataproc.V1beta2.Cluster.t() | nil,
          request_id: String.t()
        }

  defstruct [:project_id, :region, :cluster, :request_id]

  field :project_id, 1, type: :string
  field :region, 3, type: :string
  field :cluster, 2, type: Google.Cloud.Dataproc.V1beta2.Cluster
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.UpdateClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster_name: String.t(),
          cluster: Google.Cloud.Dataproc.V1beta2.Cluster.t() | nil,
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

  field :project_id, 1, type: :string
  field :region, 5, type: :string
  field :cluster_name, 2, type: :string
  field :cluster, 3, type: Google.Cloud.Dataproc.V1beta2.Cluster
  field :graceful_decommission_timeout, 6, type: Google.Protobuf.Duration
  field :update_mask, 4, type: Google.Protobuf.FieldMask
  field :request_id, 7, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.DeleteClusterRequest do
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

  field :project_id, 1, type: :string
  field :region, 3, type: :string
  field :cluster_name, 2, type: :string
  field :cluster_uuid, 4, type: :string
  field :request_id, 5, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.GetClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster_name: String.t()
        }

  defstruct [:project_id, :region, :cluster_name]

  field :project_id, 1, type: :string
  field :region, 3, type: :string
  field :cluster_name, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.ListClustersRequest do
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

  field :project_id, 1, type: :string
  field :region, 4, type: :string
  field :filter, 5, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.ListClustersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          clusters: [Google.Cloud.Dataproc.V1beta2.Cluster.t()],
          next_page_token: String.t()
        }

  defstruct [:clusters, :next_page_token]

  field :clusters, 1, repeated: true, type: Google.Cloud.Dataproc.V1beta2.Cluster
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.DiagnoseClusterRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          region: String.t(),
          cluster_name: String.t()
        }

  defstruct [:project_id, :region, :cluster_name]

  field :project_id, 1, type: :string
  field :region, 3, type: :string
  field :cluster_name, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.DiagnoseClusterResults do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          output_uri: String.t()
        }

  defstruct [:output_uri]

  field :output_uri, 1, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.ReservationAffinity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          consume_reservation_type: Google.Cloud.Dataproc.V1beta2.ReservationAffinity.Type.t(),
          key: String.t(),
          values: [String.t()]
        }

  defstruct [:consume_reservation_type, :key, :values]

  field :consume_reservation_type, 1,
    type: Google.Cloud.Dataproc.V1beta2.ReservationAffinity.Type,
    enum: true

  field :key, 2, type: :string
  field :values, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterController.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dataproc.v1beta2.ClusterController"

  rpc :CreateCluster,
      Google.Cloud.Dataproc.V1beta2.CreateClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateCluster,
      Google.Cloud.Dataproc.V1beta2.UpdateClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteCluster,
      Google.Cloud.Dataproc.V1beta2.DeleteClusterRequest,
      Google.Longrunning.Operation

  rpc :GetCluster,
      Google.Cloud.Dataproc.V1beta2.GetClusterRequest,
      Google.Cloud.Dataproc.V1beta2.Cluster

  rpc :ListClusters,
      Google.Cloud.Dataproc.V1beta2.ListClustersRequest,
      Google.Cloud.Dataproc.V1beta2.ListClustersResponse

  rpc :DiagnoseCluster,
      Google.Cloud.Dataproc.V1beta2.DiagnoseClusterRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dataproc.V1beta2.ClusterController.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dataproc.V1beta2.ClusterController.Service
end
