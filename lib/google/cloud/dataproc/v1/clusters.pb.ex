defmodule Google.Cloud.Dataproc.V1.GceClusterConfig.PrivateIpv6GoogleAccess do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, 0
  field :INHERIT_FROM_SUBNETWORK, 1
  field :OUTBOUND, 2
  field :BIDIRECTIONAL, 3
end

defmodule Google.Cloud.Dataproc.V1.InstanceGroupConfig.Preemptibility do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PREEMPTIBILITY_UNSPECIFIED, 0
  field :NON_PREEMPTIBLE, 1
  field :PREEMPTIBLE, 2
  field :SPOT, 3
end

defmodule Google.Cloud.Dataproc.V1.NodeGroup.Role do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ROLE_UNSPECIFIED, 0
  field :DRIVER, 1
end

defmodule Google.Cloud.Dataproc.V1.ClusterStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
  field :REPAIRING, 10
end

defmodule Google.Cloud.Dataproc.V1.ClusterStatus.Substate do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNHEALTHY, 1
  field :STALE_STATUS, 2
end

defmodule Google.Cloud.Dataproc.V1.DataprocMetricConfig.MetricSource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :METRIC_SOURCE_UNSPECIFIED, 0
  field :MONITORING_AGENT_DEFAULTS, 1
  field :HDFS, 2
  field :SPARK, 3
  field :YARN, 4
  field :SPARK_HISTORY_SERVER, 5
  field :HIVESERVER2, 6
  field :HIVEMETASTORE, 7
  field :FLINK, 8
end

defmodule Google.Cloud.Dataproc.V1.DiagnoseClusterRequest.TarballAccess do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TARBALL_ACCESS_UNSPECIFIED, 0
  field :GOOGLE_CLOUD_SUPPORT, 1
  field :GOOGLE_DATAPROC_DIAGNOSE, 2
end

defmodule Google.Cloud.Dataproc.V1.ReservationAffinity.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :NO_RESERVATION, 1
  field :ANY_RESERVATION, 2
  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Cloud.Dataproc.V1.Cluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :cluster_name, 2, type: :string, json_name: "clusterName", deprecated: false
  field :config, 3, type: Google.Cloud.Dataproc.V1.ClusterConfig, deprecated: false

  field :virtual_cluster_config, 10,
    type: Google.Cloud.Dataproc.V1.VirtualClusterConfig,
    json_name: "virtualClusterConfig",
    deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.Cluster.LabelsEntry,
    map: true,
    deprecated: false

  field :status, 4, type: Google.Cloud.Dataproc.V1.ClusterStatus, deprecated: false

  field :status_history, 7,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.ClusterStatus,
    json_name: "statusHistory",
    deprecated: false

  field :cluster_uuid, 6, type: :string, json_name: "clusterUuid", deprecated: false
  field :metrics, 9, type: Google.Cloud.Dataproc.V1.ClusterMetrics, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :config_bucket, 1, type: :string, json_name: "configBucket", deprecated: false
  field :temp_bucket, 2, type: :string, json_name: "tempBucket", deprecated: false

  field :gce_cluster_config, 8,
    type: Google.Cloud.Dataproc.V1.GceClusterConfig,
    json_name: "gceClusterConfig",
    deprecated: false

  field :master_config, 9,
    type: Google.Cloud.Dataproc.V1.InstanceGroupConfig,
    json_name: "masterConfig",
    deprecated: false

  field :worker_config, 10,
    type: Google.Cloud.Dataproc.V1.InstanceGroupConfig,
    json_name: "workerConfig",
    deprecated: false

  field :secondary_worker_config, 12,
    type: Google.Cloud.Dataproc.V1.InstanceGroupConfig,
    json_name: "secondaryWorkerConfig",
    deprecated: false

  field :software_config, 13,
    type: Google.Cloud.Dataproc.V1.SoftwareConfig,
    json_name: "softwareConfig",
    deprecated: false

  field :initialization_actions, 11,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.NodeInitializationAction,
    json_name: "initializationActions",
    deprecated: false

  field :encryption_config, 15,
    type: Google.Cloud.Dataproc.V1.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :autoscaling_config, 18,
    type: Google.Cloud.Dataproc.V1.AutoscalingConfig,
    json_name: "autoscalingConfig",
    deprecated: false

  field :security_config, 16,
    type: Google.Cloud.Dataproc.V1.SecurityConfig,
    json_name: "securityConfig",
    deprecated: false

  field :lifecycle_config, 17,
    type: Google.Cloud.Dataproc.V1.LifecycleConfig,
    json_name: "lifecycleConfig",
    deprecated: false

  field :endpoint_config, 19,
    type: Google.Cloud.Dataproc.V1.EndpointConfig,
    json_name: "endpointConfig",
    deprecated: false

  field :metastore_config, 20,
    type: Google.Cloud.Dataproc.V1.MetastoreConfig,
    json_name: "metastoreConfig",
    deprecated: false

  field :dataproc_metric_config, 23,
    type: Google.Cloud.Dataproc.V1.DataprocMetricConfig,
    json_name: "dataprocMetricConfig",
    deprecated: false

  field :auxiliary_node_groups, 25,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.AuxiliaryNodeGroup,
    json_name: "auxiliaryNodeGroups",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.VirtualClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :infrastructure_config, 0

  field :staging_bucket, 1, type: :string, json_name: "stagingBucket", deprecated: false

  field :kubernetes_cluster_config, 6,
    type: Google.Cloud.Dataproc.V1.KubernetesClusterConfig,
    json_name: "kubernetesClusterConfig",
    oneof: 0,
    deprecated: false

  field :auxiliary_services_config, 7,
    type: Google.Cloud.Dataproc.V1.AuxiliaryServicesConfig,
    json_name: "auxiliaryServicesConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.AuxiliaryServicesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :metastore_config, 1,
    type: Google.Cloud.Dataproc.V1.MetastoreConfig,
    json_name: "metastoreConfig",
    deprecated: false

  field :spark_history_server_config, 2,
    type: Google.Cloud.Dataproc.V1.SparkHistoryServerConfig,
    json_name: "sparkHistoryServerConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.EndpointConfig.HttpPortsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.EndpointConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :http_ports, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.EndpointConfig.HttpPortsEntry,
    json_name: "httpPorts",
    map: true,
    deprecated: false

  field :enable_http_port_access, 2,
    type: :bool,
    json_name: "enableHttpPortAccess",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.AutoscalingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :policy_uri, 1, type: :string, json_name: "policyUri", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.EncryptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gce_pd_kms_key_name, 1, type: :string, json_name: "gcePdKmsKeyName", deprecated: false
  field :kms_key, 2, type: :string, json_name: "kmsKey", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.GceClusterConfig.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.GceClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :zone_uri, 1, type: :string, json_name: "zoneUri", deprecated: false
  field :network_uri, 2, type: :string, json_name: "networkUri", deprecated: false
  field :subnetwork_uri, 6, type: :string, json_name: "subnetworkUri", deprecated: false

  field :internal_ip_only, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "internalIpOnly",
    deprecated: false

  field :private_ipv6_google_access, 12,
    type: Google.Cloud.Dataproc.V1.GceClusterConfig.PrivateIpv6GoogleAccess,
    json_name: "privateIpv6GoogleAccess",
    enum: true,
    deprecated: false

  field :service_account, 8, type: :string, json_name: "serviceAccount", deprecated: false

  field :service_account_scopes, 3,
    repeated: true,
    type: :string,
    json_name: "serviceAccountScopes",
    deprecated: false

  field :tags, 4, repeated: true, type: :string

  field :metadata, 5,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.GceClusterConfig.MetadataEntry,
    map: true,
    deprecated: false

  field :reservation_affinity, 11,
    type: Google.Cloud.Dataproc.V1.ReservationAffinity,
    json_name: "reservationAffinity",
    deprecated: false

  field :node_group_affinity, 13,
    type: Google.Cloud.Dataproc.V1.NodeGroupAffinity,
    json_name: "nodeGroupAffinity",
    deprecated: false

  field :shielded_instance_config, 14,
    type: Google.Cloud.Dataproc.V1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig",
    deprecated: false

  field :confidential_instance_config, 15,
    type: Google.Cloud.Dataproc.V1.ConfidentialInstanceConfig,
    json_name: "confidentialInstanceConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.NodeGroupAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :node_group_uri, 1, type: :string, json_name: "nodeGroupUri", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ShieldedInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enable_secure_boot, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "enableSecureBoot",
    deprecated: false

  field :enable_vtpm, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "enableVtpm",
    deprecated: false

  field :enable_integrity_monitoring, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "enableIntegrityMonitoring",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ConfidentialInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enable_confidential_compute, 1,
    type: :bool,
    json_name: "enableConfidentialCompute",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.InstanceGroupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :num_instances, 1, type: :int32, json_name: "numInstances", deprecated: false

  field :instance_names, 2,
    repeated: true,
    type: :string,
    json_name: "instanceNames",
    deprecated: false

  field :instance_references, 11,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.InstanceReference,
    json_name: "instanceReferences",
    deprecated: false

  field :image_uri, 3, type: :string, json_name: "imageUri", deprecated: false
  field :machine_type_uri, 4, type: :string, json_name: "machineTypeUri", deprecated: false

  field :disk_config, 5,
    type: Google.Cloud.Dataproc.V1.DiskConfig,
    json_name: "diskConfig",
    deprecated: false

  field :is_preemptible, 6, type: :bool, json_name: "isPreemptible", deprecated: false

  field :preemptibility, 10,
    type: Google.Cloud.Dataproc.V1.InstanceGroupConfig.Preemptibility,
    enum: true,
    deprecated: false

  field :managed_group_config, 7,
    type: Google.Cloud.Dataproc.V1.ManagedGroupConfig,
    json_name: "managedGroupConfig",
    deprecated: false

  field :accelerators, 8,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.AcceleratorConfig,
    deprecated: false

  field :min_cpu_platform, 9, type: :string, json_name: "minCpuPlatform", deprecated: false
  field :min_num_instances, 12, type: :int32, json_name: "minNumInstances", deprecated: false

  field :instance_flexibility_policy, 13,
    type: Google.Cloud.Dataproc.V1.InstanceFlexibilityPolicy,
    json_name: "instanceFlexibilityPolicy",
    deprecated: false

  field :startup_config, 14,
    type: Google.Cloud.Dataproc.V1.StartupConfig,
    json_name: "startupConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.StartupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :required_registration_fraction, 1,
    proto3_optional: true,
    type: :double,
    json_name: "requiredRegistrationFraction",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.InstanceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_name, 1, type: :string, json_name: "instanceName"
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :public_key, 3, type: :string, json_name: "publicKey"
  field :public_ecies_key, 4, type: :string, json_name: "publicEciesKey"
end

defmodule Google.Cloud.Dataproc.V1.ManagedGroupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_template_name, 1,
    type: :string,
    json_name: "instanceTemplateName",
    deprecated: false

  field :instance_group_manager_name, 2,
    type: :string,
    json_name: "instanceGroupManagerName",
    deprecated: false

  field :instance_group_manager_uri, 3,
    type: :string,
    json_name: "instanceGroupManagerUri",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.InstanceFlexibilityPolicy.InstanceSelection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :machine_types, 1,
    repeated: true,
    type: :string,
    json_name: "machineTypes",
    deprecated: false

  field :rank, 2, type: :int32, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.InstanceFlexibilityPolicy.InstanceSelectionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :machine_type, 1,
    proto3_optional: true,
    type: :string,
    json_name: "machineType",
    deprecated: false

  field :vm_count, 2, proto3_optional: true, type: :int32, json_name: "vmCount", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.InstanceFlexibilityPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance_selection_list, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.InstanceFlexibilityPolicy.InstanceSelection,
    json_name: "instanceSelectionList",
    deprecated: false

  field :instance_selection_results, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.InstanceFlexibilityPolicy.InstanceSelectionResult,
    json_name: "instanceSelectionResults",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.AcceleratorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :accelerator_type_uri, 1, type: :string, json_name: "acceleratorTypeUri"
  field :accelerator_count, 2, type: :int32, json_name: "acceleratorCount"
end

defmodule Google.Cloud.Dataproc.V1.DiskConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :boot_disk_type, 3, type: :string, json_name: "bootDiskType", deprecated: false
  field :boot_disk_size_gb, 1, type: :int32, json_name: "bootDiskSizeGb", deprecated: false
  field :num_local_ssds, 2, type: :int32, json_name: "numLocalSsds", deprecated: false
  field :local_ssd_interface, 4, type: :string, json_name: "localSsdInterface", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.AuxiliaryNodeGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :node_group, 1,
    type: Google.Cloud.Dataproc.V1.NodeGroup,
    json_name: "nodeGroup",
    deprecated: false

  field :node_group_id, 2, type: :string, json_name: "nodeGroupId", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.NodeGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.NodeGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string

  field :roles, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.NodeGroup.Role,
    enum: true,
    deprecated: false

  field :node_group_config, 3,
    type: Google.Cloud.Dataproc.V1.InstanceGroupConfig,
    json_name: "nodeGroupConfig",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.NodeGroup.LabelsEntry,
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.NodeInitializationAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :executable_file, 1, type: :string, json_name: "executableFile", deprecated: false

  field :execution_timeout, 2,
    type: Google.Protobuf.Duration,
    json_name: "executionTimeout",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ClusterStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :state, 1,
    type: Google.Cloud.Dataproc.V1.ClusterStatus.State,
    enum: true,
    deprecated: false

  field :detail, 2, type: :string, deprecated: false

  field :state_start_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "stateStartTime",
    deprecated: false

  field :substate, 4,
    type: Google.Cloud.Dataproc.V1.ClusterStatus.Substate,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.SecurityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :kerberos_config, 1,
    type: Google.Cloud.Dataproc.V1.KerberosConfig,
    json_name: "kerberosConfig",
    deprecated: false

  field :identity_config, 2,
    type: Google.Cloud.Dataproc.V1.IdentityConfig,
    json_name: "identityConfig",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.KerberosConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :enable_kerberos, 1, type: :bool, json_name: "enableKerberos", deprecated: false

  field :root_principal_password_uri, 2,
    type: :string,
    json_name: "rootPrincipalPasswordUri",
    deprecated: false

  field :kms_key_uri, 3, type: :string, json_name: "kmsKeyUri", deprecated: false
  field :keystore_uri, 4, type: :string, json_name: "keystoreUri", deprecated: false
  field :truststore_uri, 5, type: :string, json_name: "truststoreUri", deprecated: false

  field :keystore_password_uri, 6,
    type: :string,
    json_name: "keystorePasswordUri",
    deprecated: false

  field :key_password_uri, 7, type: :string, json_name: "keyPasswordUri", deprecated: false

  field :truststore_password_uri, 8,
    type: :string,
    json_name: "truststorePasswordUri",
    deprecated: false

  field :cross_realm_trust_realm, 9,
    type: :string,
    json_name: "crossRealmTrustRealm",
    deprecated: false

  field :cross_realm_trust_kdc, 10,
    type: :string,
    json_name: "crossRealmTrustKdc",
    deprecated: false

  field :cross_realm_trust_admin_server, 11,
    type: :string,
    json_name: "crossRealmTrustAdminServer",
    deprecated: false

  field :cross_realm_trust_shared_password_uri, 12,
    type: :string,
    json_name: "crossRealmTrustSharedPasswordUri",
    deprecated: false

  field :kdc_db_key_uri, 13, type: :string, json_name: "kdcDbKeyUri", deprecated: false
  field :tgt_lifetime_hours, 14, type: :int32, json_name: "tgtLifetimeHours", deprecated: false
  field :realm, 15, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.IdentityConfig.UserServiceAccountMappingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.IdentityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_service_account_mapping, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.IdentityConfig.UserServiceAccountMappingEntry,
    json_name: "userServiceAccountMapping",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.SoftwareConfig.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dataproc.V1.SoftwareConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :image_version, 1, type: :string, json_name: "imageVersion", deprecated: false

  field :properties, 2,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.SoftwareConfig.PropertiesEntry,
    map: true,
    deprecated: false

  field :optional_components, 3,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.Component,
    json_name: "optionalComponents",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.LifecycleConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :ttl, 0

  field :idle_delete_ttl, 1,
    type: Google.Protobuf.Duration,
    json_name: "idleDeleteTtl",
    deprecated: false

  field :auto_delete_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "autoDeleteTime",
    oneof: 0,
    deprecated: false

  field :auto_delete_ttl, 3,
    type: Google.Protobuf.Duration,
    json_name: "autoDeleteTtl",
    oneof: 0,
    deprecated: false

  field :idle_start_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "idleStartTime",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.MetastoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dataproc_metastore_service, 1,
    type: :string,
    json_name: "dataprocMetastoreService",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ClusterMetrics.HdfsMetricsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Dataproc.V1.ClusterMetrics.YarnMetricsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Google.Cloud.Dataproc.V1.ClusterMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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
end

defmodule Google.Cloud.Dataproc.V1.DataprocMetricConfig.Metric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :metric_source, 1,
    type: Google.Cloud.Dataproc.V1.DataprocMetricConfig.MetricSource,
    json_name: "metricSource",
    enum: true,
    deprecated: false

  field :metric_overrides, 2,
    repeated: true,
    type: :string,
    json_name: "metricOverrides",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.DataprocMetricConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :metrics, 1,
    repeated: true,
    type: Google.Cloud.Dataproc.V1.DataprocMetricConfig.Metric,
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 3, type: :string, deprecated: false
  field :cluster, 2, type: Google.Cloud.Dataproc.V1.Cluster, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false

  field :action_on_failed_primary_workers, 5,
    type: Google.Cloud.Dataproc.V1.FailureAction,
    json_name: "actionOnFailedPrimaryWorkers",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 5, type: :string, deprecated: false
  field :cluster_name, 2, type: :string, json_name: "clusterName", deprecated: false
  field :cluster, 3, type: Google.Cloud.Dataproc.V1.Cluster, deprecated: false

  field :graceful_decommission_timeout, 6,
    type: Google.Protobuf.Duration,
    json_name: "gracefulDecommissionTimeout",
    deprecated: false

  field :update_mask, 4,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 7, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.StopClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 2, type: :string, deprecated: false
  field :cluster_name, 3, type: :string, json_name: "clusterName", deprecated: false
  field :cluster_uuid, 4, type: :string, json_name: "clusterUuid", deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.StartClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 2, type: :string, deprecated: false
  field :cluster_name, 3, type: :string, json_name: "clusterName", deprecated: false
  field :cluster_uuid, 4, type: :string, json_name: "clusterUuid", deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 3, type: :string, deprecated: false
  field :cluster_name, 2, type: :string, json_name: "clusterName", deprecated: false
  field :cluster_uuid, 4, type: :string, json_name: "clusterUuid", deprecated: false
  field :request_id, 5, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 3, type: :string, deprecated: false
  field :cluster_name, 2, type: :string, json_name: "clusterName", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 4, type: :string, deprecated: false
  field :filter, 5, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Cloud.Dataproc.V1.Cluster, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.DiagnoseClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :region, 3, type: :string, deprecated: false
  field :cluster_name, 2, type: :string, json_name: "clusterName", deprecated: false
  field :tarball_gcs_dir, 4, type: :string, json_name: "tarballGcsDir", deprecated: false

  field :tarball_access, 5,
    type: Google.Cloud.Dataproc.V1.DiagnoseClusterRequest.TarballAccess,
    json_name: "tarballAccess",
    enum: true,
    deprecated: false

  field :diagnosis_interval, 6,
    type: Google.Type.Interval,
    json_name: "diagnosisInterval",
    deprecated: false

  field :jobs, 10, repeated: true, type: :string, deprecated: false

  field :yarn_application_ids, 11,
    repeated: true,
    type: :string,
    json_name: "yarnApplicationIds",
    deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.DiagnoseClusterResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :output_uri, 1, type: :string, json_name: "outputUri", deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ReservationAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :consume_reservation_type, 1,
    type: Google.Cloud.Dataproc.V1.ReservationAffinity.Type,
    json_name: "consumeReservationType",
    enum: true,
    deprecated: false

  field :key, 2, type: :string, deprecated: false
  field :values, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataproc.V1.ClusterController.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dataproc.v1.ClusterController",
    protoc_gen_elixir_version: "0.13.0"

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