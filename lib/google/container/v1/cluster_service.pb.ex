defmodule Google.Container.V1.PrivateIPv6GoogleAccess do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, 0
  field :PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED, 1
  field :PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE, 2
  field :PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL, 3
end

defmodule Google.Container.V1.UpgradeResourceType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UPGRADE_RESOURCE_TYPE_UNSPECIFIED, 0
  field :MASTER, 1
  field :NODE_POOL, 2
end

defmodule Google.Container.V1.DatapathProvider do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATAPATH_PROVIDER_UNSPECIFIED, 0
  field :LEGACY_DATAPATH, 1
  field :ADVANCED_DATAPATH, 2
end

defmodule Google.Container.V1.NodePoolUpdateStrategy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED, 0
  field :BLUE_GREEN, 2
  field :SURGE, 3
end

defmodule Google.Container.V1.NodeNetworkConfig.NetworkPerformanceConfig.Tier do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :TIER_1, 1
end

defmodule Google.Container.V1.SandboxConfig.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :GVISOR, 1
end

defmodule Google.Container.V1.ReservationAffinity.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :NO_RESERVATION, 1
  field :ANY_RESERVATION, 2
  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Container.V1.NodeTaint.Effect do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :EFFECT_UNSPECIFIED, 0
  field :NO_SCHEDULE, 1
  field :PREFER_NO_SCHEDULE, 2
  field :NO_EXECUTE, 3
end

defmodule Google.Container.V1.CloudRunConfig.LoadBalancerType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LOAD_BALANCER_TYPE_UNSPECIFIED, 0
  field :LOAD_BALANCER_TYPE_EXTERNAL, 1
  field :LOAD_BALANCER_TYPE_INTERNAL, 2
end

defmodule Google.Container.V1.NetworkPolicy.Provider do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PROVIDER_UNSPECIFIED, 0
  field :CALICO, 1
end

defmodule Google.Container.V1.BinaryAuthorization.EvaluationMode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :EVALUATION_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :PROJECT_SINGLETON_POLICY_ENFORCE, 2
end

defmodule Google.Container.V1.Cluster.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
  field :ABORTING, 4
end

defmodule Google.Container.V1.Operation.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :SET_PASSWORD, 1
  field :GENERATE_PASSWORD, 2
  field :SET_USERNAME, 3
end

defmodule Google.Container.V1.NodePool.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RUNNING_WITH_ERROR, 3
  field :RECONCILING, 4
  field :STOPPING, 5
  field :ERROR, 6
end

defmodule Google.Container.V1.NodePool.UpdateInfo.BlueGreenInfo.Phase do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PHASE_UNSPECIFIED, 0
  field :UPDATE_STARTED, 1
  field :CREATING_GREEN_POOL, 2
  field :CORDONING_BLUE_POOL, 3
  field :DRAINING_BLUE_POOL, 4
  field :NODE_POOL_SOAKING, 5
  field :DELETING_BLUE_POOL, 6
  field :ROLLBACK_STARTED, 7
end

defmodule Google.Container.V1.MaintenanceExclusionOptions.Scope do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :NO_UPGRADES, 0
  field :NO_MINOR_UPGRADES, 1
  field :NO_MINOR_OR_NODE_UPGRADES, 2
end

defmodule Google.Container.V1.ClusterAutoscaling.AutoscalingProfile do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PROFILE_UNSPECIFIED, 0
  field :OPTIMIZE_UTILIZATION, 1
  field :BALANCED, 2
end

defmodule Google.Container.V1.NodePoolAutoscaling.LocationPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LOCATION_POLICY_UNSPECIFIED, 0
  field :BALANCED, 1
  field :ANY, 2
end

defmodule Google.Container.V1.GPUSharingConfig.GPUSharingStrategy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :GPU_SHARING_STRATEGY_UNSPECIFIED, 0
  field :TIME_SHARING, 1
end

defmodule Google.Container.V1.WorkloadMetadataConfig.Mode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :GCE_METADATA, 1
  field :GKE_METADATA, 2
end

defmodule Google.Container.V1.StatusCondition.Code do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :GCE_STOCKOUT, 1
  field :GKE_SERVICE_ACCOUNT_DELETED, 2
  field :GCE_QUOTA_EXCEEDED, 3
  field :SET_BY_OPERATOR, 4
  field :CLOUD_KMS_KEY_ERROR, 7
  field :CA_EXPIRING, 9
end

defmodule Google.Container.V1.ReleaseChannel.Channel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :RAPID, 1
  field :REGULAR, 2
  field :STABLE, 3
end

defmodule Google.Container.V1.DNSConfig.Provider do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PROVIDER_UNSPECIFIED, 0
  field :PLATFORM_DEFAULT, 1
  field :CLOUD_DNS, 2
end

defmodule Google.Container.V1.DNSConfig.DNSScope do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DNS_SCOPE_UNSPECIFIED, 0
  field :VPC_SCOPE, 2
end

defmodule Google.Container.V1.DatabaseEncryption.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ENCRYPTED, 1
  field :DECRYPTED, 2
end

defmodule Google.Container.V1.UsableSubnetworkSecondaryRange.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNKNOWN, 0
  field :UNUSED, 1
  field :IN_USE_SERVICE, 2
  field :IN_USE_SHAREABLE_POD, 3
  field :IN_USE_MANAGED_POD, 4
end

defmodule Google.Container.V1.NotificationConfig.EventType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :UPGRADE_AVAILABLE_EVENT, 1
  field :UPGRADE_EVENT, 2
  field :SECURITY_BULLETIN_EVENT, 3
end

defmodule Google.Container.V1.LoggingComponentConfig.Component do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :COMPONENT_UNSPECIFIED, 0
  field :SYSTEM_COMPONENTS, 1
  field :WORKLOADS, 2
end

defmodule Google.Container.V1.LoggingVariantConfig.Variant do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :VARIANT_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :MAX_THROUGHPUT, 2
end

defmodule Google.Container.V1.MonitoringComponentConfig.Component do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :COMPONENT_UNSPECIFIED, 0
  field :SYSTEM_COMPONENTS, 1
  field :APISERVER, 3
  field :SCHEDULER, 4
  field :CONTROLLER_MANAGER, 5
end

defmodule Google.Container.V1.LinuxNodeConfig.SysctlsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1.LinuxNodeConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sysctls, 1,
    repeated: true,
    type: Google.Container.V1.LinuxNodeConfig.SysctlsEntry,
    map: true
end

defmodule Google.Container.V1.NodeKubeletConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cpu_manager_policy, 1, type: :string, json_name: "cpuManagerPolicy"
  field :cpu_cfs_quota, 2, type: Google.Protobuf.BoolValue, json_name: "cpuCfsQuota"
  field :cpu_cfs_quota_period, 3, type: :string, json_name: "cpuCfsQuotaPeriod"
  field :pod_pids_limit, 4, type: :int64, json_name: "podPidsLimit"
end

defmodule Google.Container.V1.NodeConfig.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1.NodeConfig.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1.NodeConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType"
  field :disk_size_gb, 2, type: :int32, json_name: "diskSizeGb"
  field :oauth_scopes, 3, repeated: true, type: :string, json_name: "oauthScopes"
  field :service_account, 9, type: :string, json_name: "serviceAccount"

  field :metadata, 4,
    repeated: true,
    type: Google.Container.V1.NodeConfig.MetadataEntry,
    map: true

  field :image_type, 5, type: :string, json_name: "imageType"
  field :labels, 6, repeated: true, type: Google.Container.V1.NodeConfig.LabelsEntry, map: true
  field :local_ssd_count, 7, type: :int32, json_name: "localSsdCount"
  field :tags, 8, repeated: true, type: :string
  field :preemptible, 10, type: :bool
  field :accelerators, 11, repeated: true, type: Google.Container.V1.AcceleratorConfig
  field :disk_type, 12, type: :string, json_name: "diskType"
  field :min_cpu_platform, 13, type: :string, json_name: "minCpuPlatform"

  field :workload_metadata_config, 14,
    type: Google.Container.V1.WorkloadMetadataConfig,
    json_name: "workloadMetadataConfig"

  field :taints, 15, repeated: true, type: Google.Container.V1.NodeTaint
  field :sandbox_config, 17, type: Google.Container.V1.SandboxConfig, json_name: "sandboxConfig"
  field :node_group, 18, type: :string, json_name: "nodeGroup"

  field :reservation_affinity, 19,
    type: Google.Container.V1.ReservationAffinity,
    json_name: "reservationAffinity"

  field :shielded_instance_config, 20,
    type: Google.Container.V1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig"

  field :linux_node_config, 21,
    type: Google.Container.V1.LinuxNodeConfig,
    json_name: "linuxNodeConfig"

  field :kubelet_config, 22,
    type: Google.Container.V1.NodeKubeletConfig,
    json_name: "kubeletConfig"

  field :boot_disk_kms_key, 23, type: :string, json_name: "bootDiskKmsKey"
  field :gcfs_config, 25, type: Google.Container.V1.GcfsConfig, json_name: "gcfsConfig"

  field :advanced_machine_features, 26,
    type: Google.Container.V1.AdvancedMachineFeatures,
    json_name: "advancedMachineFeatures"

  field :gvnic, 29, type: Google.Container.V1.VirtualNIC
  field :spot, 32, type: :bool

  field :confidential_nodes, 35,
    type: Google.Container.V1.ConfidentialNodes,
    json_name: "confidentialNodes"

  field :logging_config, 38,
    type: Google.Container.V1.NodePoolLoggingConfig,
    json_name: "loggingConfig"
end

defmodule Google.Container.V1.AdvancedMachineFeatures do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :threads_per_core, 1, proto3_optional: true, type: :int64, json_name: "threadsPerCore"
end

defmodule Google.Container.V1.NodeNetworkConfig.NetworkPerformanceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :total_egress_bandwidth_tier, 1,
    proto3_optional: true,
    type: Google.Container.V1.NodeNetworkConfig.NetworkPerformanceConfig.Tier,
    json_name: "totalEgressBandwidthTier",
    enum: true
end

defmodule Google.Container.V1.NodeNetworkConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_pod_range, 4, type: :bool, json_name: "createPodRange", deprecated: false
  field :pod_range, 5, type: :string, json_name: "podRange"
  field :pod_ipv4_cidr_block, 6, type: :string, json_name: "podIpv4CidrBlock"

  field :network_performance_config, 11,
    proto3_optional: true,
    type: Google.Container.V1.NodeNetworkConfig.NetworkPerformanceConfig,
    json_name: "networkPerformanceConfig"
end

defmodule Google.Container.V1.ShieldedInstanceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_secure_boot, 1, type: :bool, json_name: "enableSecureBoot"
  field :enable_integrity_monitoring, 2, type: :bool, json_name: "enableIntegrityMonitoring"
end

defmodule Google.Container.V1.SandboxConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :type, 2, type: Google.Container.V1.SandboxConfig.Type, enum: true
end

defmodule Google.Container.V1.GcfsConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.ReservationAffinity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :consume_reservation_type, 1,
    type: Google.Container.V1.ReservationAffinity.Type,
    json_name: "consumeReservationType",
    enum: true

  field :key, 2, type: :string
  field :values, 3, repeated: true, type: :string
end

defmodule Google.Container.V1.NodeTaint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :effect, 3, type: Google.Container.V1.NodeTaint.Effect, enum: true
end

defmodule Google.Container.V1.NodeTaints do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :taints, 1, repeated: true, type: Google.Container.V1.NodeTaint
end

defmodule Google.Container.V1.NodeLabels.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1.NodeLabels do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :labels, 1, repeated: true, type: Google.Container.V1.NodeLabels.LabelsEntry, map: true
end

defmodule Google.Container.V1.NetworkTags do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :tags, 1, repeated: true, type: :string
end

defmodule Google.Container.V1.MasterAuth do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: true
  field :password, 2, type: :string, deprecated: true

  field :client_certificate_config, 3,
    type: Google.Container.V1.ClientCertificateConfig,
    json_name: "clientCertificateConfig"

  field :cluster_ca_certificate, 100, type: :string, json_name: "clusterCaCertificate"
  field :client_certificate, 101, type: :string, json_name: "clientCertificate"
  field :client_key, 102, type: :string, json_name: "clientKey"
end

defmodule Google.Container.V1.ClientCertificateConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :issue_client_certificate, 1, type: :bool, json_name: "issueClientCertificate"
end

defmodule Google.Container.V1.AddonsConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :http_load_balancing, 1,
    type: Google.Container.V1.HttpLoadBalancing,
    json_name: "httpLoadBalancing"

  field :horizontal_pod_autoscaling, 2,
    type: Google.Container.V1.HorizontalPodAutoscaling,
    json_name: "horizontalPodAutoscaling"

  field :kubernetes_dashboard, 3,
    type: Google.Container.V1.KubernetesDashboard,
    json_name: "kubernetesDashboard",
    deprecated: true

  field :network_policy_config, 4,
    type: Google.Container.V1.NetworkPolicyConfig,
    json_name: "networkPolicyConfig"

  field :cloud_run_config, 7,
    type: Google.Container.V1.CloudRunConfig,
    json_name: "cloudRunConfig"

  field :dns_cache_config, 8,
    type: Google.Container.V1.DnsCacheConfig,
    json_name: "dnsCacheConfig"

  field :config_connector_config, 10,
    type: Google.Container.V1.ConfigConnectorConfig,
    json_name: "configConnectorConfig"

  field :gce_persistent_disk_csi_driver_config, 11,
    type: Google.Container.V1.GcePersistentDiskCsiDriverConfig,
    json_name: "gcePersistentDiskCsiDriverConfig"

  field :gcp_filestore_csi_driver_config, 14,
    type: Google.Container.V1.GcpFilestoreCsiDriverConfig,
    json_name: "gcpFilestoreCsiDriverConfig"
end

defmodule Google.Container.V1.HttpLoadBalancing do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.HorizontalPodAutoscaling do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.KubernetesDashboard do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.NetworkPolicyConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.DnsCacheConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.PrivateClusterMasterGlobalAccessConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.PrivateClusterConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_private_nodes, 1, type: :bool, json_name: "enablePrivateNodes"
  field :enable_private_endpoint, 2, type: :bool, json_name: "enablePrivateEndpoint"
  field :master_ipv4_cidr_block, 3, type: :string, json_name: "masterIpv4CidrBlock"
  field :private_endpoint, 4, type: :string, json_name: "privateEndpoint"
  field :public_endpoint, 5, type: :string, json_name: "publicEndpoint"
  field :peering_name, 7, type: :string, json_name: "peeringName"

  field :master_global_access_config, 8,
    type: Google.Container.V1.PrivateClusterMasterGlobalAccessConfig,
    json_name: "masterGlobalAccessConfig"
end

defmodule Google.Container.V1.AuthenticatorGroupsConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :security_group, 2, type: :string, json_name: "securityGroup"
end

defmodule Google.Container.V1.CloudRunConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disabled, 1, type: :bool

  field :load_balancer_type, 3,
    type: Google.Container.V1.CloudRunConfig.LoadBalancerType,
    json_name: "loadBalancerType",
    enum: true
end

defmodule Google.Container.V1.ConfigConnectorConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.GcePersistentDiskCsiDriverConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.GcpFilestoreCsiDriverConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.MasterAuthorizedNetworksConfig.CidrBlock do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :cidr_block, 2, type: :string, json_name: "cidrBlock"
end

defmodule Google.Container.V1.MasterAuthorizedNetworksConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :cidr_blocks, 2,
    repeated: true,
    type: Google.Container.V1.MasterAuthorizedNetworksConfig.CidrBlock,
    json_name: "cidrBlocks"
end

defmodule Google.Container.V1.LegacyAbac do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.NetworkPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :provider, 1, type: Google.Container.V1.NetworkPolicy.Provider, enum: true
  field :enabled, 2, type: :bool
end

defmodule Google.Container.V1.BinaryAuthorization do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: true

  field :evaluation_mode, 2,
    type: Google.Container.V1.BinaryAuthorization.EvaluationMode,
    json_name: "evaluationMode",
    enum: true
end

defmodule Google.Container.V1.IPAllocationPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :use_ip_aliases, 1, type: :bool, json_name: "useIpAliases"
  field :create_subnetwork, 2, type: :bool, json_name: "createSubnetwork"
  field :subnetwork_name, 3, type: :string, json_name: "subnetworkName"
  field :cluster_ipv4_cidr, 4, type: :string, json_name: "clusterIpv4Cidr", deprecated: true
  field :node_ipv4_cidr, 5, type: :string, json_name: "nodeIpv4Cidr", deprecated: true
  field :services_ipv4_cidr, 6, type: :string, json_name: "servicesIpv4Cidr", deprecated: true
  field :cluster_secondary_range_name, 7, type: :string, json_name: "clusterSecondaryRangeName"
  field :services_secondary_range_name, 8, type: :string, json_name: "servicesSecondaryRangeName"
  field :cluster_ipv4_cidr_block, 9, type: :string, json_name: "clusterIpv4CidrBlock"
  field :node_ipv4_cidr_block, 10, type: :string, json_name: "nodeIpv4CidrBlock"
  field :services_ipv4_cidr_block, 11, type: :string, json_name: "servicesIpv4CidrBlock"
  field :tpu_ipv4_cidr_block, 13, type: :string, json_name: "tpuIpv4CidrBlock"
  field :use_routes, 15, type: :bool, json_name: "useRoutes"
end

defmodule Google.Container.V1.Cluster.ResourceLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1.Cluster do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :initial_node_count, 3, type: :int32, json_name: "initialNodeCount", deprecated: true

  field :node_config, 4,
    type: Google.Container.V1.NodeConfig,
    json_name: "nodeConfig",
    deprecated: true

  field :master_auth, 5, type: Google.Container.V1.MasterAuth, json_name: "masterAuth"
  field :logging_service, 6, type: :string, json_name: "loggingService"
  field :monitoring_service, 7, type: :string, json_name: "monitoringService"
  field :network, 8, type: :string
  field :cluster_ipv4_cidr, 9, type: :string, json_name: "clusterIpv4Cidr"
  field :addons_config, 10, type: Google.Container.V1.AddonsConfig, json_name: "addonsConfig"
  field :subnetwork, 11, type: :string

  field :node_pools, 12,
    repeated: true,
    type: Google.Container.V1.NodePool,
    json_name: "nodePools"

  field :locations, 13, repeated: true, type: :string
  field :enable_kubernetes_alpha, 14, type: :bool, json_name: "enableKubernetesAlpha"

  field :resource_labels, 15,
    repeated: true,
    type: Google.Container.V1.Cluster.ResourceLabelsEntry,
    json_name: "resourceLabels",
    map: true

  field :label_fingerprint, 16, type: :string, json_name: "labelFingerprint"
  field :legacy_abac, 18, type: Google.Container.V1.LegacyAbac, json_name: "legacyAbac"
  field :network_policy, 19, type: Google.Container.V1.NetworkPolicy, json_name: "networkPolicy"

  field :ip_allocation_policy, 20,
    type: Google.Container.V1.IPAllocationPolicy,
    json_name: "ipAllocationPolicy"

  field :master_authorized_networks_config, 22,
    type: Google.Container.V1.MasterAuthorizedNetworksConfig,
    json_name: "masterAuthorizedNetworksConfig"

  field :maintenance_policy, 23,
    type: Google.Container.V1.MaintenancePolicy,
    json_name: "maintenancePolicy"

  field :binary_authorization, 24,
    type: Google.Container.V1.BinaryAuthorization,
    json_name: "binaryAuthorization"

  field :autoscaling, 26, type: Google.Container.V1.ClusterAutoscaling
  field :network_config, 27, type: Google.Container.V1.NetworkConfig, json_name: "networkConfig"

  field :default_max_pods_constraint, 30,
    type: Google.Container.V1.MaxPodsConstraint,
    json_name: "defaultMaxPodsConstraint"

  field :resource_usage_export_config, 33,
    type: Google.Container.V1.ResourceUsageExportConfig,
    json_name: "resourceUsageExportConfig"

  field :authenticator_groups_config, 34,
    type: Google.Container.V1.AuthenticatorGroupsConfig,
    json_name: "authenticatorGroupsConfig"

  field :private_cluster_config, 37,
    type: Google.Container.V1.PrivateClusterConfig,
    json_name: "privateClusterConfig"

  field :database_encryption, 38,
    type: Google.Container.V1.DatabaseEncryption,
    json_name: "databaseEncryption"

  field :vertical_pod_autoscaling, 39,
    type: Google.Container.V1.VerticalPodAutoscaling,
    json_name: "verticalPodAutoscaling"

  field :shielded_nodes, 40, type: Google.Container.V1.ShieldedNodes, json_name: "shieldedNodes"

  field :release_channel, 41,
    type: Google.Container.V1.ReleaseChannel,
    json_name: "releaseChannel"

  field :workload_identity_config, 43,
    type: Google.Container.V1.WorkloadIdentityConfig,
    json_name: "workloadIdentityConfig"

  field :mesh_certificates, 67,
    type: Google.Container.V1.MeshCertificates,
    json_name: "meshCertificates"

  field :notification_config, 49,
    type: Google.Container.V1.NotificationConfig,
    json_name: "notificationConfig"

  field :confidential_nodes, 50,
    type: Google.Container.V1.ConfidentialNodes,
    json_name: "confidentialNodes"

  field :identity_service_config, 54,
    type: Google.Container.V1.IdentityServiceConfig,
    json_name: "identityServiceConfig"

  field :self_link, 100, type: :string, json_name: "selfLink"
  field :zone, 101, type: :string, deprecated: true
  field :endpoint, 102, type: :string
  field :initial_cluster_version, 103, type: :string, json_name: "initialClusterVersion"
  field :current_master_version, 104, type: :string, json_name: "currentMasterVersion"

  field :current_node_version, 105,
    type: :string,
    json_name: "currentNodeVersion",
    deprecated: true

  field :create_time, 106, type: :string, json_name: "createTime"
  field :status, 107, type: Google.Container.V1.Cluster.Status, enum: true
  field :status_message, 108, type: :string, json_name: "statusMessage", deprecated: true
  field :node_ipv4_cidr_size, 109, type: :int32, json_name: "nodeIpv4CidrSize"
  field :services_ipv4_cidr, 110, type: :string, json_name: "servicesIpv4Cidr"

  field :instance_group_urls, 111,
    repeated: true,
    type: :string,
    json_name: "instanceGroupUrls",
    deprecated: true

  field :current_node_count, 112, type: :int32, json_name: "currentNodeCount", deprecated: true
  field :expire_time, 113, type: :string, json_name: "expireTime"
  field :location, 114, type: :string
  field :enable_tpu, 115, type: :bool, json_name: "enableTpu"
  field :tpu_ipv4_cidr_block, 116, type: :string, json_name: "tpuIpv4CidrBlock"
  field :conditions, 118, repeated: true, type: Google.Container.V1.StatusCondition
  field :autopilot, 128, type: Google.Container.V1.Autopilot
  field :id, 129, type: :string, deprecated: false

  field :node_pool_defaults, 131,
    proto3_optional: true,
    type: Google.Container.V1.NodePoolDefaults,
    json_name: "nodePoolDefaults"

  field :logging_config, 132, type: Google.Container.V1.LoggingConfig, json_name: "loggingConfig"

  field :monitoring_config, 133,
    type: Google.Container.V1.MonitoringConfig,
    json_name: "monitoringConfig"

  field :node_pool_auto_config, 136,
    type: Google.Container.V1.NodePoolAutoConfig,
    json_name: "nodePoolAutoConfig"
end

defmodule Google.Container.V1.NodePoolAutoConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network_tags, 1, type: Google.Container.V1.NetworkTags, json_name: "networkTags"
end

defmodule Google.Container.V1.NodePoolDefaults do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_config_defaults, 1,
    type: Google.Container.V1.NodeConfigDefaults,
    json_name: "nodeConfigDefaults"
end

defmodule Google.Container.V1.NodeConfigDefaults do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcfs_config, 1, type: Google.Container.V1.GcfsConfig, json_name: "gcfsConfig"

  field :logging_config, 3,
    type: Google.Container.V1.NodePoolLoggingConfig,
    json_name: "loggingConfig"
end

defmodule Google.Container.V1.ClusterUpdate do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :desired_node_version, 4, type: :string, json_name: "desiredNodeVersion"
  field :desired_monitoring_service, 5, type: :string, json_name: "desiredMonitoringService"

  field :desired_addons_config, 6,
    type: Google.Container.V1.AddonsConfig,
    json_name: "desiredAddonsConfig"

  field :desired_node_pool_id, 7, type: :string, json_name: "desiredNodePoolId"
  field :desired_image_type, 8, type: :string, json_name: "desiredImageType"

  field :desired_database_encryption, 46,
    type: Google.Container.V1.DatabaseEncryption,
    json_name: "desiredDatabaseEncryption"

  field :desired_workload_identity_config, 47,
    type: Google.Container.V1.WorkloadIdentityConfig,
    json_name: "desiredWorkloadIdentityConfig"

  field :desired_mesh_certificates, 67,
    type: Google.Container.V1.MeshCertificates,
    json_name: "desiredMeshCertificates"

  field :desired_shielded_nodes, 48,
    type: Google.Container.V1.ShieldedNodes,
    json_name: "desiredShieldedNodes"

  field :desired_dns_config, 53,
    type: Google.Container.V1.DNSConfig,
    json_name: "desiredDnsConfig"

  field :desired_node_pool_autoscaling, 9,
    type: Google.Container.V1.NodePoolAutoscaling,
    json_name: "desiredNodePoolAutoscaling"

  field :desired_locations, 10, repeated: true, type: :string, json_name: "desiredLocations"

  field :desired_master_authorized_networks_config, 12,
    type: Google.Container.V1.MasterAuthorizedNetworksConfig,
    json_name: "desiredMasterAuthorizedNetworksConfig"

  field :desired_cluster_autoscaling, 15,
    type: Google.Container.V1.ClusterAutoscaling,
    json_name: "desiredClusterAutoscaling"

  field :desired_binary_authorization, 16,
    type: Google.Container.V1.BinaryAuthorization,
    json_name: "desiredBinaryAuthorization"

  field :desired_logging_service, 19, type: :string, json_name: "desiredLoggingService"

  field :desired_resource_usage_export_config, 21,
    type: Google.Container.V1.ResourceUsageExportConfig,
    json_name: "desiredResourceUsageExportConfig"

  field :desired_vertical_pod_autoscaling, 22,
    type: Google.Container.V1.VerticalPodAutoscaling,
    json_name: "desiredVerticalPodAutoscaling"

  field :desired_private_cluster_config, 25,
    type: Google.Container.V1.PrivateClusterConfig,
    json_name: "desiredPrivateClusterConfig"

  field :desired_intra_node_visibility_config, 26,
    type: Google.Container.V1.IntraNodeVisibilityConfig,
    json_name: "desiredIntraNodeVisibilityConfig"

  field :desired_default_snat_status, 28,
    type: Google.Container.V1.DefaultSnatStatus,
    json_name: "desiredDefaultSnatStatus"

  field :desired_release_channel, 31,
    type: Google.Container.V1.ReleaseChannel,
    json_name: "desiredReleaseChannel"

  field :desired_l4ilb_subsetting_config, 39,
    type: Google.Container.V1.ILBSubsettingConfig,
    json_name: "desiredL4ilbSubsettingConfig"

  field :desired_datapath_provider, 50,
    type: Google.Container.V1.DatapathProvider,
    json_name: "desiredDatapathProvider",
    enum: true

  field :desired_private_ipv6_google_access, 51,
    type: Google.Container.V1.PrivateIPv6GoogleAccess,
    json_name: "desiredPrivateIpv6GoogleAccess",
    enum: true

  field :desired_notification_config, 55,
    type: Google.Container.V1.NotificationConfig,
    json_name: "desiredNotificationConfig"

  field :desired_authenticator_groups_config, 63,
    type: Google.Container.V1.AuthenticatorGroupsConfig,
    json_name: "desiredAuthenticatorGroupsConfig"

  field :desired_logging_config, 64,
    type: Google.Container.V1.LoggingConfig,
    json_name: "desiredLoggingConfig"

  field :desired_monitoring_config, 65,
    type: Google.Container.V1.MonitoringConfig,
    json_name: "desiredMonitoringConfig"

  field :desired_identity_service_config, 66,
    type: Google.Container.V1.IdentityServiceConfig,
    json_name: "desiredIdentityServiceConfig"

  field :desired_service_external_ips_config, 60,
    type: Google.Container.V1.ServiceExternalIPsConfig,
    json_name: "desiredServiceExternalIpsConfig"

  field :desired_master_version, 100, type: :string, json_name: "desiredMasterVersion"

  field :desired_gcfs_config, 109,
    type: Google.Container.V1.GcfsConfig,
    json_name: "desiredGcfsConfig"

  field :desired_node_pool_auto_config_network_tags, 110,
    type: Google.Container.V1.NetworkTags,
    json_name: "desiredNodePoolAutoConfigNetworkTags"

  field :desired_node_pool_logging_config, 116,
    type: Google.Container.V1.NodePoolLoggingConfig,
    json_name: "desiredNodePoolLoggingConfig"
end

defmodule Google.Container.V1.Operation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :zone, 2, type: :string, deprecated: true

  field :operation_type, 3,
    type: Google.Container.V1.Operation.Type,
    json_name: "operationType",
    enum: true

  field :status, 4, type: Google.Container.V1.Operation.Status, enum: true
  field :detail, 8, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: true
  field :self_link, 6, type: :string, json_name: "selfLink"
  field :target_link, 7, type: :string, json_name: "targetLink"
  field :location, 9, type: :string
  field :start_time, 10, type: :string, json_name: "startTime"
  field :end_time, 11, type: :string, json_name: "endTime"
  field :progress, 12, type: Google.Container.V1.OperationProgress, deprecated: false

  field :cluster_conditions, 13,
    repeated: true,
    type: Google.Container.V1.StatusCondition,
    json_name: "clusterConditions",
    deprecated: true

  field :nodepool_conditions, 14,
    repeated: true,
    type: Google.Container.V1.StatusCondition,
    json_name: "nodepoolConditions",
    deprecated: true

  field :error, 15, type: Google.Rpc.Status
end

defmodule Google.Container.V1.OperationProgress.Metric do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :name, 1, type: :string, deprecated: false
  field :int_value, 2, type: :int64, json_name: "intValue", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0
end

defmodule Google.Container.V1.OperationProgress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :status, 2, type: Google.Container.V1.Operation.Status, enum: true
  field :metrics, 3, repeated: true, type: Google.Container.V1.OperationProgress.Metric
  field :stages, 4, repeated: true, type: Google.Container.V1.OperationProgress
end

defmodule Google.Container.V1.CreateClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster, 3, type: Google.Container.V1.Cluster, deprecated: false
  field :parent, 5, type: :string
end

defmodule Google.Container.V1.GetClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :name, 5, type: :string
end

defmodule Google.Container.V1.UpdateClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :update, 4, type: Google.Container.V1.ClusterUpdate, deprecated: false
  field :name, 5, type: :string
end

defmodule Google.Container.V1.UpdateNodePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :node_version, 5, type: :string, json_name: "nodeVersion", deprecated: false
  field :image_type, 6, type: :string, json_name: "imageType", deprecated: false
  field :name, 8, type: :string
  field :locations, 13, repeated: true, type: :string

  field :workload_metadata_config, 14,
    type: Google.Container.V1.WorkloadMetadataConfig,
    json_name: "workloadMetadataConfig"

  field :upgrade_settings, 15,
    type: Google.Container.V1.NodePool.UpgradeSettings,
    json_name: "upgradeSettings"

  field :tags, 16, type: Google.Container.V1.NetworkTags
  field :taints, 17, type: Google.Container.V1.NodeTaints
  field :labels, 18, type: Google.Container.V1.NodeLabels

  field :linux_node_config, 19,
    type: Google.Container.V1.LinuxNodeConfig,
    json_name: "linuxNodeConfig"

  field :kubelet_config, 20,
    type: Google.Container.V1.NodeKubeletConfig,
    json_name: "kubeletConfig"

  field :node_network_config, 21,
    type: Google.Container.V1.NodeNetworkConfig,
    json_name: "nodeNetworkConfig"

  field :gcfs_config, 22, type: Google.Container.V1.GcfsConfig, json_name: "gcfsConfig"

  field :confidential_nodes, 23,
    type: Google.Container.V1.ConfidentialNodes,
    json_name: "confidentialNodes"

  field :gvnic, 29, type: Google.Container.V1.VirtualNIC

  field :logging_config, 32,
    type: Google.Container.V1.NodePoolLoggingConfig,
    json_name: "loggingConfig"
end

defmodule Google.Container.V1.SetNodePoolAutoscalingRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :autoscaling, 5, type: Google.Container.V1.NodePoolAutoscaling, deprecated: false
  field :name, 6, type: :string
end

defmodule Google.Container.V1.SetLoggingServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :logging_service, 4, type: :string, json_name: "loggingService", deprecated: false
  field :name, 5, type: :string
end

defmodule Google.Container.V1.SetMonitoringServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :monitoring_service, 4, type: :string, json_name: "monitoringService", deprecated: false
  field :name, 6, type: :string
end

defmodule Google.Container.V1.SetAddonsConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :addons_config, 4,
    type: Google.Container.V1.AddonsConfig,
    json_name: "addonsConfig",
    deprecated: false

  field :name, 6, type: :string
end

defmodule Google.Container.V1.SetLocationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :locations, 4, repeated: true, type: :string, deprecated: false
  field :name, 6, type: :string
end

defmodule Google.Container.V1.UpdateMasterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :master_version, 4, type: :string, json_name: "masterVersion", deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1.SetMasterAuthRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :action, 4,
    type: Google.Container.V1.SetMasterAuthRequest.Action,
    enum: true,
    deprecated: false

  field :update, 5, type: Google.Container.V1.MasterAuth, deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1.DeleteClusterRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :name, 4, type: :string
end

defmodule Google.Container.V1.ListClustersRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :parent, 4, type: :string
end

defmodule Google.Container.V1.ListClustersResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Container.V1.Cluster
  field :missing_zones, 2, repeated: true, type: :string, json_name: "missingZones"
end

defmodule Google.Container.V1.GetOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :operation_id, 3, type: :string, json_name: "operationId", deprecated: true
  field :name, 5, type: :string
end

defmodule Google.Container.V1.ListOperationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :parent, 4, type: :string
end

defmodule Google.Container.V1.CancelOperationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :operation_id, 3, type: :string, json_name: "operationId", deprecated: true
  field :name, 4, type: :string
end

defmodule Google.Container.V1.ListOperationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :operations, 1, repeated: true, type: Google.Container.V1.Operation
  field :missing_zones, 2, repeated: true, type: :string, json_name: "missingZones"
end

defmodule Google.Container.V1.GetServerConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :name, 4, type: :string
end

defmodule Google.Container.V1.ServerConfig.ReleaseChannelConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 1, type: Google.Container.V1.ReleaseChannel.Channel, enum: true
  field :default_version, 2, type: :string, json_name: "defaultVersion"
  field :valid_versions, 4, repeated: true, type: :string, json_name: "validVersions"
end

defmodule Google.Container.V1.ServerConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :default_cluster_version, 1, type: :string, json_name: "defaultClusterVersion"
  field :valid_node_versions, 3, repeated: true, type: :string, json_name: "validNodeVersions"
  field :default_image_type, 4, type: :string, json_name: "defaultImageType"
  field :valid_image_types, 5, repeated: true, type: :string, json_name: "validImageTypes"
  field :valid_master_versions, 6, repeated: true, type: :string, json_name: "validMasterVersions"
  field :channels, 9, repeated: true, type: Google.Container.V1.ServerConfig.ReleaseChannelConfig
end

defmodule Google.Container.V1.CreateNodePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :node_pool, 4,
    type: Google.Container.V1.NodePool,
    json_name: "nodePool",
    deprecated: false

  field :parent, 6, type: :string
end

defmodule Google.Container.V1.DeleteNodePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :name, 6, type: :string
end

defmodule Google.Container.V1.ListNodePoolsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :parent, 5, type: :string
end

defmodule Google.Container.V1.GetNodePoolRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :name, 6, type: :string
end

defmodule Google.Container.V1.BlueGreenSettings.StandardRolloutPolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :update_batch_size, 0

  field :batch_percentage, 1, type: :float, json_name: "batchPercentage", oneof: 0
  field :batch_node_count, 2, type: :int32, json_name: "batchNodeCount", oneof: 0

  field :batch_soak_duration, 3,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "batchSoakDuration"
end

defmodule Google.Container.V1.BlueGreenSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :rollout_policy, 0

  field :standard_rollout_policy, 1,
    type: Google.Container.V1.BlueGreenSettings.StandardRolloutPolicy,
    json_name: "standardRolloutPolicy",
    oneof: 0

  field :node_pool_soak_duration, 2,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "nodePoolSoakDuration"
end

defmodule Google.Container.V1.NodePool.UpgradeSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_surge, 1, type: :int32, json_name: "maxSurge"
  field :max_unavailable, 2, type: :int32, json_name: "maxUnavailable"

  field :strategy, 3,
    proto3_optional: true,
    type: Google.Container.V1.NodePoolUpdateStrategy,
    enum: true

  field :blue_green_settings, 4,
    proto3_optional: true,
    type: Google.Container.V1.BlueGreenSettings,
    json_name: "blueGreenSettings"
end

defmodule Google.Container.V1.NodePool.UpdateInfo.BlueGreenInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :phase, 1, type: Google.Container.V1.NodePool.UpdateInfo.BlueGreenInfo.Phase, enum: true

  field :blue_instance_group_urls, 2,
    repeated: true,
    type: :string,
    json_name: "blueInstanceGroupUrls"

  field :green_instance_group_urls, 3,
    repeated: true,
    type: :string,
    json_name: "greenInstanceGroupUrls"

  field :blue_pool_deletion_start_time, 4, type: :string, json_name: "bluePoolDeletionStartTime"
  field :green_pool_version, 5, type: :string, json_name: "greenPoolVersion"
end

defmodule Google.Container.V1.NodePool.UpdateInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :blue_green_info, 1,
    type: Google.Container.V1.NodePool.UpdateInfo.BlueGreenInfo,
    json_name: "blueGreenInfo"
end

defmodule Google.Container.V1.NodePool do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :config, 2, type: Google.Container.V1.NodeConfig
  field :initial_node_count, 3, type: :int32, json_name: "initialNodeCount"
  field :locations, 13, repeated: true, type: :string

  field :network_config, 14,
    type: Google.Container.V1.NodeNetworkConfig,
    json_name: "networkConfig"

  field :self_link, 100, type: :string, json_name: "selfLink"
  field :version, 101, type: :string
  field :instance_group_urls, 102, repeated: true, type: :string, json_name: "instanceGroupUrls"
  field :status, 103, type: Google.Container.V1.NodePool.Status, enum: true
  field :status_message, 104, type: :string, json_name: "statusMessage", deprecated: true
  field :autoscaling, 4, type: Google.Container.V1.NodePoolAutoscaling
  field :management, 5, type: Google.Container.V1.NodeManagement

  field :max_pods_constraint, 6,
    type: Google.Container.V1.MaxPodsConstraint,
    json_name: "maxPodsConstraint"

  field :conditions, 105, repeated: true, type: Google.Container.V1.StatusCondition
  field :pod_ipv4_cidr_size, 7, type: :int32, json_name: "podIpv4CidrSize"

  field :upgrade_settings, 107,
    type: Google.Container.V1.NodePool.UpgradeSettings,
    json_name: "upgradeSettings"

  field :update_info, 109,
    type: Google.Container.V1.NodePool.UpdateInfo,
    json_name: "updateInfo",
    deprecated: false
end

defmodule Google.Container.V1.NodeManagement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_upgrade, 1, type: :bool, json_name: "autoUpgrade"
  field :auto_repair, 2, type: :bool, json_name: "autoRepair"

  field :upgrade_options, 10,
    type: Google.Container.V1.AutoUpgradeOptions,
    json_name: "upgradeOptions"
end

defmodule Google.Container.V1.AutoUpgradeOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auto_upgrade_start_time, 1, type: :string, json_name: "autoUpgradeStartTime"
  field :description, 2, type: :string
end

defmodule Google.Container.V1.MaintenancePolicy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :window, 1, type: Google.Container.V1.MaintenanceWindow
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
end

defmodule Google.Container.V1.MaintenanceWindow.MaintenanceExclusionsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Container.V1.TimeWindow
end

defmodule Google.Container.V1.MaintenanceWindow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :policy, 0

  field :daily_maintenance_window, 2,
    type: Google.Container.V1.DailyMaintenanceWindow,
    json_name: "dailyMaintenanceWindow",
    oneof: 0

  field :recurring_window, 3,
    type: Google.Container.V1.RecurringTimeWindow,
    json_name: "recurringWindow",
    oneof: 0

  field :maintenance_exclusions, 4,
    repeated: true,
    type: Google.Container.V1.MaintenanceWindow.MaintenanceExclusionsEntry,
    json_name: "maintenanceExclusions",
    map: true
end

defmodule Google.Container.V1.TimeWindow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :options, 0

  field :maintenance_exclusion_options, 3,
    type: Google.Container.V1.MaintenanceExclusionOptions,
    json_name: "maintenanceExclusionOptions",
    oneof: 0

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Container.V1.MaintenanceExclusionOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :scope, 1, type: Google.Container.V1.MaintenanceExclusionOptions.Scope, enum: true
end

defmodule Google.Container.V1.RecurringTimeWindow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :window, 1, type: Google.Container.V1.TimeWindow
  field :recurrence, 2, type: :string
end

defmodule Google.Container.V1.DailyMaintenanceWindow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_time, 2, type: :string, json_name: "startTime"
  field :duration, 3, type: :string
end

defmodule Google.Container.V1.SetNodePoolManagementRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :management, 5, type: Google.Container.V1.NodeManagement, deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1.SetNodePoolSizeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :node_count, 5, type: :int32, json_name: "nodeCount", deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1.CompleteNodePoolUpgradeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Container.V1.RollbackNodePoolUpgradeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :name, 6, type: :string
  field :respect_pdb, 7, type: :bool, json_name: "respectPdb"
end

defmodule Google.Container.V1.ListNodePoolsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :node_pools, 1, repeated: true, type: Google.Container.V1.NodePool, json_name: "nodePools"
end

defmodule Google.Container.V1.ClusterAutoscaling do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_node_autoprovisioning, 1, type: :bool, json_name: "enableNodeAutoprovisioning"

  field :resource_limits, 2,
    repeated: true,
    type: Google.Container.V1.ResourceLimit,
    json_name: "resourceLimits"

  field :autoscaling_profile, 3,
    type: Google.Container.V1.ClusterAutoscaling.AutoscalingProfile,
    json_name: "autoscalingProfile",
    enum: true

  field :autoprovisioning_node_pool_defaults, 4,
    type: Google.Container.V1.AutoprovisioningNodePoolDefaults,
    json_name: "autoprovisioningNodePoolDefaults"

  field :autoprovisioning_locations, 5,
    repeated: true,
    type: :string,
    json_name: "autoprovisioningLocations"
end

defmodule Google.Container.V1.AutoprovisioningNodePoolDefaults do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :oauth_scopes, 1, repeated: true, type: :string, json_name: "oauthScopes"
  field :service_account, 2, type: :string, json_name: "serviceAccount"

  field :upgrade_settings, 3,
    type: Google.Container.V1.NodePool.UpgradeSettings,
    json_name: "upgradeSettings"

  field :management, 4, type: Google.Container.V1.NodeManagement
  field :min_cpu_platform, 5, type: :string, json_name: "minCpuPlatform", deprecated: true
  field :disk_size_gb, 6, type: :int32, json_name: "diskSizeGb"
  field :disk_type, 7, type: :string, json_name: "diskType"

  field :shielded_instance_config, 8,
    type: Google.Container.V1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig"

  field :boot_disk_kms_key, 9, type: :string, json_name: "bootDiskKmsKey"
  field :image_type, 10, type: :string, json_name: "imageType"
end

defmodule Google.Container.V1.ResourceLimit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_type, 1, type: :string, json_name: "resourceType"
  field :minimum, 2, type: :int64
  field :maximum, 3, type: :int64
end

defmodule Google.Container.V1.NodePoolAutoscaling do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :min_node_count, 2, type: :int32, json_name: "minNodeCount"
  field :max_node_count, 3, type: :int32, json_name: "maxNodeCount"
  field :autoprovisioned, 4, type: :bool

  field :location_policy, 5,
    type: Google.Container.V1.NodePoolAutoscaling.LocationPolicy,
    json_name: "locationPolicy",
    enum: true

  field :total_min_node_count, 6, type: :int32, json_name: "totalMinNodeCount"
  field :total_max_node_count, 7, type: :int32, json_name: "totalMaxNodeCount"
end

defmodule Google.Container.V1.SetLabelsRequest.ResourceLabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1.SetLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :resource_labels, 4,
    repeated: true,
    type: Google.Container.V1.SetLabelsRequest.ResourceLabelsEntry,
    json_name: "resourceLabels",
    map: true,
    deprecated: false

  field :label_fingerprint, 5, type: :string, json_name: "labelFingerprint", deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1.SetLegacyAbacRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :enabled, 4, type: :bool, deprecated: false
  field :name, 6, type: :string
end

defmodule Google.Container.V1.StartIPRotationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :name, 6, type: :string
  field :rotate_credentials, 7, type: :bool, json_name: "rotateCredentials"
end

defmodule Google.Container.V1.CompleteIPRotationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :name, 7, type: :string
end

defmodule Google.Container.V1.AcceleratorConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :accelerator_count, 1, type: :int64, json_name: "acceleratorCount"
  field :accelerator_type, 2, type: :string, json_name: "acceleratorType"
  field :gpu_partition_size, 3, type: :string, json_name: "gpuPartitionSize"

  field :gpu_sharing_config, 5,
    proto3_optional: true,
    type: Google.Container.V1.GPUSharingConfig,
    json_name: "gpuSharingConfig"
end

defmodule Google.Container.V1.GPUSharingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_shared_clients_per_gpu, 1, type: :int64, json_name: "maxSharedClientsPerGpu"

  field :gpu_sharing_strategy, 2,
    proto3_optional: true,
    type: Google.Container.V1.GPUSharingConfig.GPUSharingStrategy,
    json_name: "gpuSharingStrategy",
    enum: true
end

defmodule Google.Container.V1.WorkloadMetadataConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :mode, 2, type: Google.Container.V1.WorkloadMetadataConfig.Mode, enum: true
end

defmodule Google.Container.V1.SetNetworkPolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :network_policy, 4,
    type: Google.Container.V1.NetworkPolicy,
    json_name: "networkPolicy",
    deprecated: false

  field :name, 6, type: :string
end

defmodule Google.Container.V1.SetMaintenancePolicyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :zone, 2, type: :string, deprecated: false
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: false

  field :maintenance_policy, 4,
    type: Google.Container.V1.MaintenancePolicy,
    json_name: "maintenancePolicy",
    deprecated: false

  field :name, 5, type: :string
end

defmodule Google.Container.V1.StatusCondition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :code, 1, type: Google.Container.V1.StatusCondition.Code, enum: true, deprecated: true
  field :message, 2, type: :string
  field :canonical_code, 3, type: Google.Rpc.Code, json_name: "canonicalCode", enum: true
end

defmodule Google.Container.V1.NetworkConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :network, 1, type: :string
  field :subnetwork, 2, type: :string
  field :enable_intra_node_visibility, 5, type: :bool, json_name: "enableIntraNodeVisibility"

  field :default_snat_status, 7,
    type: Google.Container.V1.DefaultSnatStatus,
    json_name: "defaultSnatStatus"

  field :enable_l4ilb_subsetting, 10, type: :bool, json_name: "enableL4ilbSubsetting"

  field :datapath_provider, 11,
    type: Google.Container.V1.DatapathProvider,
    json_name: "datapathProvider",
    enum: true

  field :private_ipv6_google_access, 12,
    type: Google.Container.V1.PrivateIPv6GoogleAccess,
    json_name: "privateIpv6GoogleAccess",
    enum: true

  field :dns_config, 13, type: Google.Container.V1.DNSConfig, json_name: "dnsConfig"

  field :service_external_ips_config, 15,
    type: Google.Container.V1.ServiceExternalIPsConfig,
    json_name: "serviceExternalIpsConfig"
end

defmodule Google.Container.V1.ServiceExternalIPsConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.GetOpenIDConfigRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
end

defmodule Google.Container.V1.GetOpenIDConfigResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :issuer, 1, type: :string
  field :jwks_uri, 2, type: :string, json_name: "jwksUri"

  field :response_types_supported, 3,
    repeated: true,
    type: :string,
    json_name: "responseTypesSupported"

  field :subject_types_supported, 4,
    repeated: true,
    type: :string,
    json_name: "subjectTypesSupported"

  field :id_token_signing_alg_values_supported, 5,
    repeated: true,
    type: :string,
    json_name: "idTokenSigningAlgValuesSupported"

  field :claims_supported, 6, repeated: true, type: :string, json_name: "claimsSupported"
  field :grant_types, 7, repeated: true, type: :string, json_name: "grantTypes"
end

defmodule Google.Container.V1.GetJSONWebKeysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
end

defmodule Google.Container.V1.Jwk do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keys, 1, repeated: true, type: Google.Container.V1.Jwk
end

defmodule Google.Container.V1.ReleaseChannel do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :channel, 1, type: Google.Container.V1.ReleaseChannel.Channel, enum: true
end

defmodule Google.Container.V1.IntraNodeVisibilityConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.ILBSubsettingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.DNSConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cluster_dns, 1,
    type: Google.Container.V1.DNSConfig.Provider,
    json_name: "clusterDns",
    enum: true

  field :cluster_dns_scope, 2,
    type: Google.Container.V1.DNSConfig.DNSScope,
    json_name: "clusterDnsScope",
    enum: true

  field :cluster_dns_domain, 3, type: :string, json_name: "clusterDnsDomain"
end

defmodule Google.Container.V1.MaxPodsConstraint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :max_pods_per_node, 1, type: :int64, json_name: "maxPodsPerNode"
end

defmodule Google.Container.V1.WorkloadIdentityConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :workload_pool, 2, type: :string, json_name: "workloadPool"
end

defmodule Google.Container.V1.IdentityServiceConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.MeshCertificates do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_certificates, 1, type: Google.Protobuf.BoolValue, json_name: "enableCertificates"
end

defmodule Google.Container.V1.DatabaseEncryption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :state, 2, type: Google.Container.V1.DatabaseEncryption.State, enum: true
  field :key_name, 1, type: :string, json_name: "keyName"
end

defmodule Google.Container.V1.ListUsableSubnetworksRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Container.V1.ListUsableSubnetworksResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :subnetworks, 1, repeated: true, type: Google.Container.V1.UsableSubnetwork
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Container.V1.UsableSubnetworkSecondaryRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :range_name, 1, type: :string, json_name: "rangeName"
  field :ip_cidr_range, 2, type: :string, json_name: "ipCidrRange"
  field :status, 3, type: Google.Container.V1.UsableSubnetworkSecondaryRange.Status, enum: true
end

defmodule Google.Container.V1.UsableSubnetwork do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :subnetwork, 1, type: :string
  field :network, 2, type: :string
  field :ip_cidr_range, 3, type: :string, json_name: "ipCidrRange"

  field :secondary_ip_ranges, 4,
    repeated: true,
    type: Google.Container.V1.UsableSubnetworkSecondaryRange,
    json_name: "secondaryIpRanges"

  field :status_message, 5, type: :string, json_name: "statusMessage"
end

defmodule Google.Container.V1.ResourceUsageExportConfig.BigQueryDestination do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
end

defmodule Google.Container.V1.ResourceUsageExportConfig.ConsumptionMeteringConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.ResourceUsageExportConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bigquery_destination, 1,
    type: Google.Container.V1.ResourceUsageExportConfig.BigQueryDestination,
    json_name: "bigqueryDestination"

  field :enable_network_egress_metering, 2, type: :bool, json_name: "enableNetworkEgressMetering"

  field :consumption_metering_config, 3,
    type: Google.Container.V1.ResourceUsageExportConfig.ConsumptionMeteringConfig,
    json_name: "consumptionMeteringConfig"
end

defmodule Google.Container.V1.VerticalPodAutoscaling do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.DefaultSnatStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1.ShieldedNodes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.VirtualNIC do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.NotificationConfig.PubSub do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :topic, 2, type: :string, deprecated: false
  field :filter, 3, type: Google.Container.V1.NotificationConfig.Filter
end

defmodule Google.Container.V1.NotificationConfig.Filter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :event_type, 1,
    repeated: true,
    type: Google.Container.V1.NotificationConfig.EventType,
    json_name: "eventType",
    enum: true
end

defmodule Google.Container.V1.NotificationConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :pubsub, 1, type: Google.Container.V1.NotificationConfig.PubSub
end

defmodule Google.Container.V1.ConfidentialNodes do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.UpgradeEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_type, 1,
    type: Google.Container.V1.UpgradeResourceType,
    json_name: "resourceType",
    enum: true

  field :operation, 2, type: :string
  field :operation_start_time, 3, type: Google.Protobuf.Timestamp, json_name: "operationStartTime"
  field :current_version, 4, type: :string, json_name: "currentVersion"
  field :target_version, 5, type: :string, json_name: "targetVersion"
  field :resource, 6, type: :string
end

defmodule Google.Container.V1.UpgradeAvailableEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string

  field :resource_type, 2,
    type: Google.Container.V1.UpgradeResourceType,
    json_name: "resourceType",
    enum: true

  field :release_channel, 3, type: Google.Container.V1.ReleaseChannel, json_name: "releaseChannel"
  field :resource, 4, type: :string
end

defmodule Google.Container.V1.SecurityBulletinEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_type_affected, 1, type: :string, json_name: "resourceTypeAffected"
  field :bulletin_id, 2, type: :string, json_name: "bulletinId"
  field :cve_ids, 3, repeated: true, type: :string, json_name: "cveIds"
  field :severity, 4, type: :string
  field :bulletin_uri, 5, type: :string, json_name: "bulletinUri"
  field :brief_description, 6, type: :string, json_name: "briefDescription"

  field :affected_supported_minors, 7,
    repeated: true,
    type: :string,
    json_name: "affectedSupportedMinors"

  field :patched_versions, 8, repeated: true, type: :string, json_name: "patchedVersions"
  field :suggested_upgrade_target, 9, type: :string, json_name: "suggestedUpgradeTarget"
  field :manual_steps_required, 10, type: :bool, json_name: "manualStepsRequired"
end

defmodule Google.Container.V1.Autopilot do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.LoggingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :component_config, 1,
    type: Google.Container.V1.LoggingComponentConfig,
    json_name: "componentConfig"
end

defmodule Google.Container.V1.LoggingComponentConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_components, 1,
    repeated: true,
    type: Google.Container.V1.LoggingComponentConfig.Component,
    json_name: "enableComponents",
    enum: true
end

defmodule Google.Container.V1.MonitoringConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :component_config, 1,
    type: Google.Container.V1.MonitoringComponentConfig,
    json_name: "componentConfig"

  field :managed_prometheus_config, 2,
    type: Google.Container.V1.ManagedPrometheusConfig,
    json_name: "managedPrometheusConfig"
end

defmodule Google.Container.V1.NodePoolLoggingConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :variant_config, 1,
    type: Google.Container.V1.LoggingVariantConfig,
    json_name: "variantConfig"
end

defmodule Google.Container.V1.LoggingVariantConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :variant, 1, type: Google.Container.V1.LoggingVariantConfig.Variant, enum: true
end

defmodule Google.Container.V1.MonitoringComponentConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_components, 1,
    repeated: true,
    type: Google.Container.V1.MonitoringComponentConfig.Component,
    json_name: "enableComponents",
    enum: true
end

defmodule Google.Container.V1.ManagedPrometheusConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1.ClusterManager.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.container.v1.ClusterManager",
    protoc_gen_elixir_version: "0.11.0"

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

  rpc :CompleteNodePoolUpgrade,
      Google.Container.V1.CompleteNodePoolUpgradeRequest,
      Google.Protobuf.Empty

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