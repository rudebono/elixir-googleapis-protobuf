defmodule Google.Container.V1beta1.PrivateIPv6GoogleAccess do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, 0
  field :PRIVATE_IPV6_GOOGLE_ACCESS_DISABLED, 1
  field :PRIVATE_IPV6_GOOGLE_ACCESS_TO_GOOGLE, 2
  field :PRIVATE_IPV6_GOOGLE_ACCESS_BIDIRECTIONAL, 3
end

defmodule Google.Container.V1beta1.UpgradeResourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UPGRADE_RESOURCE_TYPE_UNSPECIFIED, 0
  field :MASTER, 1
  field :NODE_POOL, 2
end

defmodule Google.Container.V1beta1.NodePoolUpdateStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NODE_POOL_UPDATE_STRATEGY_UNSPECIFIED, 0
  field :BLUE_GREEN, 2
  field :SURGE, 3
end

defmodule Google.Container.V1beta1.DatapathProvider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DATAPATH_PROVIDER_UNSPECIFIED, 0
  field :LEGACY_DATAPATH, 1
  field :ADVANCED_DATAPATH, 2
end

defmodule Google.Container.V1beta1.StackType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STACK_TYPE_UNSPECIFIED, 0
  field :IPV4, 1
  field :IPV4_IPV6, 2
end

defmodule Google.Container.V1beta1.InTransitEncryptionConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :IN_TRANSIT_ENCRYPTION_CONFIG_UNSPECIFIED, 0
  field :IN_TRANSIT_ENCRYPTION_DISABLED, 1
  field :IN_TRANSIT_ENCRYPTION_INTER_NODE_TRANSPARENT, 2
end

defmodule Google.Container.V1beta1.LinuxNodeConfig.CgroupMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CGROUP_MODE_UNSPECIFIED, 0
  field :CGROUP_MODE_V1, 1
  field :CGROUP_MODE_V2, 2
end

defmodule Google.Container.V1beta1.LinuxNodeConfig.TransparentHugepageEnabled do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSPARENT_HUGEPAGE_ENABLED_UNSPECIFIED, 0
  field :TRANSPARENT_HUGEPAGE_ENABLED_ALWAYS, 1
  field :TRANSPARENT_HUGEPAGE_ENABLED_MADVISE, 2
  field :TRANSPARENT_HUGEPAGE_ENABLED_NEVER, 3
end

defmodule Google.Container.V1beta1.LinuxNodeConfig.TransparentHugepageDefrag do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TRANSPARENT_HUGEPAGE_DEFRAG_UNSPECIFIED, 0
  field :TRANSPARENT_HUGEPAGE_DEFRAG_ALWAYS, 1
  field :TRANSPARENT_HUGEPAGE_DEFRAG_DEFER, 2
  field :TRANSPARENT_HUGEPAGE_DEFRAG_DEFER_WITH_MADVISE, 3
  field :TRANSPARENT_HUGEPAGE_DEFRAG_MADVISE, 4
  field :TRANSPARENT_HUGEPAGE_DEFRAG_NEVER, 5
end

defmodule Google.Container.V1beta1.WindowsNodeConfig.OSVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OS_VERSION_UNSPECIFIED, 0
  field :OS_VERSION_LTSC2019, 1
  field :OS_VERSION_LTSC2022, 2
end

defmodule Google.Container.V1beta1.NodeConfig.LocalSsdEncryptionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCAL_SSD_ENCRYPTION_MODE_UNSPECIFIED, 0
  field :STANDARD_ENCRYPTION, 1
  field :EPHEMERAL_KEY_ENCRYPTION, 2
end

defmodule Google.Container.V1beta1.NodeConfig.EffectiveCgroupMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EFFECTIVE_CGROUP_MODE_UNSPECIFIED, 0
  field :EFFECTIVE_CGROUP_MODE_V1, 1
  field :EFFECTIVE_CGROUP_MODE_V2, 2
end

defmodule Google.Container.V1beta1.AdvancedMachineFeatures.PerformanceMonitoringUnit do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PERFORMANCE_MONITORING_UNIT_UNSPECIFIED, 0
  field :ARCHITECTURAL, 1
  field :STANDARD, 2
  field :ENHANCED, 3
end

defmodule Google.Container.V1beta1.NodeNetworkConfig.NetworkPerformanceConfig.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :TIER_1, 1
end

defmodule Google.Container.V1beta1.SandboxConfig.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :GVISOR, 1
end

defmodule Google.Container.V1beta1.ReservationAffinity.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :NO_RESERVATION, 1
  field :ANY_RESERVATION, 2
  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Container.V1beta1.SoleTenantConfig.NodeAffinity.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :IN, 1
  field :NOT_IN, 2
end

defmodule Google.Container.V1beta1.HostMaintenancePolicy.MaintenanceInterval do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MAINTENANCE_INTERVAL_UNSPECIFIED, 0
  field :AS_NEEDED, 1
  field :PERIODIC, 2
end

defmodule Google.Container.V1beta1.NodeTaint.Effect do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EFFECT_UNSPECIFIED, 0
  field :NO_SCHEDULE, 1
  field :PREFER_NO_SCHEDULE, 2
  field :NO_EXECUTE, 3
end

defmodule Google.Container.V1beta1.IstioConfig.IstioAuthMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AUTH_NONE, 0
  field :AUTH_MUTUAL_TLS, 1
end

defmodule Google.Container.V1beta1.CloudRunConfig.LoadBalancerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOAD_BALANCER_TYPE_UNSPECIFIED, 0
  field :LOAD_BALANCER_TYPE_EXTERNAL, 1
  field :LOAD_BALANCER_TYPE_INTERNAL, 2
end

defmodule Google.Container.V1beta1.NetworkPolicy.Provider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROVIDER_UNSPECIFIED, 0
  field :CALICO, 1
end

defmodule Google.Container.V1beta1.IPAllocationPolicy.StackType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STACK_TYPE_UNSPECIFIED, 0
  field :IPV4, 1
  field :IPV4_IPV6, 2
end

defmodule Google.Container.V1beta1.IPAllocationPolicy.IPv6AccessType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :IPV6_ACCESS_TYPE_UNSPECIFIED, 0
  field :INTERNAL, 1
  field :EXTERNAL, 2
end

defmodule Google.Container.V1beta1.BinaryAuthorization.EvaluationMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EVALUATION_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :PROJECT_SINGLETON_POLICY_ENFORCE, 2
  field :POLICY_BINDINGS, 5
  field :POLICY_BINDINGS_AND_PROJECT_SINGLETON_POLICY_ENFORCE, 6
end

defmodule Google.Container.V1beta1.ClusterTelemetry.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
  field :SYSTEM_ONLY, 3
end

defmodule Google.Container.V1beta1.Cluster.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RECONCILING, 3
  field :STOPPING, 4
  field :ERROR, 5
  field :DEGRADED, 6
end

defmodule Google.Container.V1beta1.AnonymousAuthenticationConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :LIMITED, 2
end

defmodule Google.Container.V1beta1.CompliancePostureConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end

defmodule Google.Container.V1beta1.WorkloadConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :BASIC, 4
  field :BASELINE, 2
  field :RESTRICTED, 3
end

defmodule Google.Container.V1beta1.ProtectConfig.WorkloadVulnerabilityMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :WORKLOAD_VULNERABILITY_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :BASIC, 2
end

defmodule Google.Container.V1beta1.SecurityPostureConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :BASIC, 2
  field :ENTERPRISE, 3
end

defmodule Google.Container.V1beta1.SecurityPostureConfig.VulnerabilityMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VULNERABILITY_MODE_UNSPECIFIED, 0
  field :VULNERABILITY_DISABLED, 1
  field :VULNERABILITY_BASIC, 2
  field :VULNERABILITY_ENTERPRISE, 3
end

defmodule Google.Container.V1beta1.Operation.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :RUNNING, 2
  field :DONE, 3
  field :ABORTING, 4
end

defmodule Google.Container.V1beta1.Operation.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
  field :RESIZE_CLUSTER, 18
  field :FLEET_FEATURE_UPGRADE, 19
end

defmodule Google.Container.V1beta1.SetMasterAuthRequest.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNKNOWN, 0
  field :SET_PASSWORD, 1
  field :GENERATE_PASSWORD, 2
  field :SET_USERNAME, 3
end

defmodule Google.Container.V1beta1.NodePool.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :RUNNING, 2
  field :RUNNING_WITH_ERROR, 3
  field :RECONCILING, 4
  field :STOPPING, 5
  field :ERROR, 6
end

defmodule Google.Container.V1beta1.NodePool.UpdateInfo.BlueGreenInfo.Phase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PHASE_UNSPECIFIED, 0
  field :UPDATE_STARTED, 1
  field :CREATING_GREEN_POOL, 2
  field :CORDONING_BLUE_POOL, 3
  field :WAITING_TO_DRAIN_BLUE_POOL, 8
  field :DRAINING_BLUE_POOL, 4
  field :NODE_POOL_SOAKING, 5
  field :DELETING_BLUE_POOL, 6
  field :ROLLBACK_STARTED, 7
end

defmodule Google.Container.V1beta1.NodePool.PlacementPolicy.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :COMPACT, 1
end

defmodule Google.Container.V1beta1.MaintenanceExclusionOptions.Scope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NO_UPGRADES, 0
  field :NO_MINOR_UPGRADES, 1
  field :NO_MINOR_OR_NODE_UPGRADES, 2
end

defmodule Google.Container.V1beta1.ClusterAutoscaling.AutoscalingProfile do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROFILE_UNSPECIFIED, 0
  field :OPTIMIZE_UTILIZATION, 1
  field :BALANCED, 2
end

defmodule Google.Container.V1beta1.NodePoolAutoscaling.LocationPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCATION_POLICY_UNSPECIFIED, 0
  field :BALANCED, 1
  field :ANY, 2
end

defmodule Google.Container.V1beta1.GPUSharingConfig.GPUSharingStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :GPU_SHARING_STRATEGY_UNSPECIFIED, 0
  field :TIME_SHARING, 1
  field :MPS, 2
end

defmodule Google.Container.V1beta1.GPUDriverInstallationConfig.GPUDriverVersion do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :GPU_DRIVER_VERSION_UNSPECIFIED, 0
  field :INSTALLATION_DISABLED, 1
  field :DEFAULT, 2
  field :LATEST, 3
end

defmodule Google.Container.V1beta1.AutoMonitoringConfig.Scope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SCOPE_UNSPECIFIED, 0
  field :ALL, 1
  field :NONE, 2
end

defmodule Google.Container.V1beta1.WorkloadMetadataConfig.NodeMetadata do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :SECURE, 1
  field :EXPOSE, 2
  field :GKE_METADATA_SERVER, 3
end

defmodule Google.Container.V1beta1.WorkloadMetadataConfig.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :GCE_METADATA, 1
  field :GKE_METADATA, 2
end

defmodule Google.Container.V1beta1.Location.LocationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCATION_TYPE_UNSPECIFIED, 0
  field :ZONE, 1
  field :REGION, 2
end

defmodule Google.Container.V1beta1.StatusCondition.Code do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNKNOWN, 0
  field :GCE_STOCKOUT, 1
  field :GKE_SERVICE_ACCOUNT_DELETED, 2
  field :GCE_QUOTA_EXCEEDED, 3
  field :SET_BY_OPERATOR, 4
  field :CLOUD_KMS_KEY_ERROR, 7
  field :CA_EXPIRING, 9
  field :NODE_SERVICE_ACCOUNT_MISSING_PERMISSIONS, 10
  field :CLOUD_KMS_KEY_DESTROYED, 11
end

defmodule Google.Container.V1beta1.NetworkConfig.ClusterNetworkPerformanceConfig.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :TIER_1, 1
end

defmodule Google.Container.V1beta1.GatewayAPIConfig.Channel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CHANNEL_UNSPECIFIED, 0
  field :CHANNEL_DISABLED, 1
  field :CHANNEL_EXPERIMENTAL, 3
  field :CHANNEL_STANDARD, 4
end

defmodule Google.Container.V1beta1.UsableSubnetworkSecondaryRange.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNKNOWN, 0
  field :UNUSED, 1
  field :IN_USE_SERVICE, 2
  field :IN_USE_SHAREABLE_POD, 3
  field :IN_USE_MANAGED_POD, 4
end

defmodule Google.Container.V1beta1.DNSConfig.Provider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROVIDER_UNSPECIFIED, 0
  field :PLATFORM_DEFAULT, 1
  field :CLOUD_DNS, 2
  field :KUBE_DNS, 3
end

defmodule Google.Container.V1beta1.DNSConfig.DNSScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DNS_SCOPE_UNSPECIFIED, 0
  field :CLUSTER_SCOPE, 1
  field :VPC_SCOPE, 2
end

defmodule Google.Container.V1beta1.DatabaseEncryption.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ENCRYPTED, 1
  field :DECRYPTED, 2
end

defmodule Google.Container.V1beta1.DatabaseEncryption.CurrentState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CURRENT_STATE_UNSPECIFIED, 0
  field :CURRENT_STATE_ENCRYPTED, 7
  field :CURRENT_STATE_DECRYPTED, 2
  field :CURRENT_STATE_ENCRYPTION_PENDING, 3
  field :CURRENT_STATE_ENCRYPTION_ERROR, 4
  field :CURRENT_STATE_DECRYPTION_PENDING, 5
  field :CURRENT_STATE_DECRYPTION_ERROR, 6
end

defmodule Google.Container.V1beta1.AutopilotCompatibilityIssue.IssueType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :INCOMPATIBILITY, 1
  field :ADDITIONAL_CONFIG_REQUIRED, 2
  field :PASSED_WITH_OPTIONAL_CONFIG, 3
end

defmodule Google.Container.V1beta1.ReleaseChannel.Channel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :RAPID, 1
  field :REGULAR, 2
  field :STABLE, 3
  field :EXTENDED, 4
end

defmodule Google.Container.V1beta1.AutopilotConversionStatus.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DONE, 5
end

defmodule Google.Container.V1beta1.NotificationConfig.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :UPGRADE_AVAILABLE_EVENT, 1
  field :UPGRADE_EVENT, 2
  field :SECURITY_BULLETIN_EVENT, 3
  field :UPGRADE_INFO_EVENT, 4
end

defmodule Google.Container.V1beta1.ConfidentialNodes.ConfidentialInstanceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONFIDENTIAL_INSTANCE_TYPE_UNSPECIFIED, 0
  field :SEV, 1
  field :SEV_SNP, 2
  field :TDX, 3
end

defmodule Google.Container.V1beta1.UpgradeInfoEvent.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STARTED, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :CANCELED, 6
end

defmodule Google.Container.V1beta1.UpgradeInfoEvent.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :END_OF_SUPPORT, 1
  field :COS_MILESTONE_VERSION_UPDATE, 2
  field :UPGRADE_LIFECYCLE, 3
end

defmodule Google.Container.V1beta1.LoggingComponentConfig.Component do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPONENT_UNSPECIFIED, 0
  field :SYSTEM_COMPONENTS, 1
  field :WORKLOADS, 2
  field :APISERVER, 3
  field :SCHEDULER, 4
  field :CONTROLLER_MANAGER, 5
  field :KCP_SSHD, 7
  field :KCP_CONNECTION, 8
  field :KCP_HPA, 9
end

defmodule Google.Container.V1beta1.AdvancedDatapathObservabilityConfig.RelayMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RELAY_MODE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :INTERNAL_VPC_LB, 3
  field :EXTERNAL_LB, 4
end

defmodule Google.Container.V1beta1.LoggingVariantConfig.Variant do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VARIANT_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :MAX_THROUGHPUT, 2
end

defmodule Google.Container.V1beta1.MonitoringComponentConfig.Component do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPONENT_UNSPECIFIED, 0
  field :SYSTEM_COMPONENTS, 1
  field :WORKLOADS, 2
  field :APISERVER, 3
  field :SCHEDULER, 4
  field :CONTROLLER_MANAGER, 5
  field :STORAGE, 7
  field :HPA, 8
  field :POD, 9
  field :DAEMONSET, 10
  field :DEPLOYMENT, 11
  field :STATEFULSET, 12
  field :CADVISOR, 13
  field :KUBELET, 14
  field :DCGM, 15
  field :JOBSET, 16
end

defmodule Google.Container.V1beta1.PodAutoscaling.HPAProfile do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HPA_PROFILE_UNSPECIFIED, 0
  field :NONE, 1
  field :PERFORMANCE, 2
end

defmodule Google.Container.V1beta1.EnterpriseConfig.ClusterTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CLUSTER_TIER_UNSPECIFIED, 0
  field :STANDARD, 1
  field :ENTERPRISE, 2
end

defmodule Google.Container.V1beta1.SecondaryBootDisk.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :CONTAINER_IMAGE_CACHE, 1
end

defmodule Google.Container.V1beta1.ClusterUpgradeInfo.AutoUpgradeStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ACTIVE, 1
  field :MINOR_UPGRADE_PAUSED, 4
  field :UPGRADE_PAUSED, 5
end

defmodule Google.Container.V1beta1.ClusterUpgradeInfo.AutoUpgradePausedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AUTO_UPGRADE_PAUSED_REASON_UNSPECIFIED, 0
  field :MAINTENANCE_WINDOW, 1
  field :MAINTENANCE_EXCLUSION_NO_UPGRADES, 5
  field :MAINTENANCE_EXCLUSION_NO_MINOR_UPGRADES, 6
  field :CLUSTER_DISRUPTION_BUDGET, 4
  field :CLUSTER_DISRUPTION_BUDGET_MINOR_UPGRADE, 7
  field :SYSTEM_CONFIG, 8
end

defmodule Google.Container.V1beta1.UpgradeDetails.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNKNOWN, 0
  field :FAILED, 1
  field :SUCCEEDED, 2
  field :CANCELED, 3
  field :RUNNING, 4
end

defmodule Google.Container.V1beta1.UpgradeDetails.StartType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :START_TYPE_UNSPECIFIED, 0
  field :AUTOMATIC, 1
  field :MANUAL, 2
end

defmodule Google.Container.V1beta1.NodePoolUpgradeInfo.AutoUpgradeStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNKNOWN, 0
  field :ACTIVE, 1
  field :MINOR_UPGRADE_PAUSED, 2
  field :UPGRADE_PAUSED, 3
end

defmodule Google.Container.V1beta1.NodePoolUpgradeInfo.AutoUpgradePausedReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AUTO_UPGRADE_PAUSED_REASON_UNSPECIFIED, 0
  field :MAINTENANCE_WINDOW, 1
  field :MAINTENANCE_EXCLUSION_NO_UPGRADES, 2
  field :MAINTENANCE_EXCLUSION_NO_MINOR_UPGRADES, 3
  field :SYSTEM_CONFIG, 4
end

defmodule Google.Container.V1beta1.GkeAutoUpgradeConfig.PatchMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PATCH_MODE_UNSPECIFIED, 0
  field :ACCELERATED, 1
end

defmodule Google.Container.V1beta1.LinuxNodeConfig.HugepagesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hugepage_size2m, 1,
    proto3_optional: true,
    type: :int32,
    json_name: "hugepageSize2m",
    deprecated: false

  field :hugepage_size1g, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "hugepageSize1g",
    deprecated: false
end

defmodule Google.Container.V1beta1.LinuxNodeConfig.SysctlsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1beta1.LinuxNodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sysctls, 1,
    repeated: true,
    type: Google.Container.V1beta1.LinuxNodeConfig.SysctlsEntry,
    map: true

  field :cgroup_mode, 2,
    type: Google.Container.V1beta1.LinuxNodeConfig.CgroupMode,
    json_name: "cgroupMode",
    enum: true

  field :hugepages, 3,
    proto3_optional: true,
    type: Google.Container.V1beta1.LinuxNodeConfig.HugepagesConfig,
    deprecated: false

  field :transparent_hugepage_enabled, 4,
    type: Google.Container.V1beta1.LinuxNodeConfig.TransparentHugepageEnabled,
    json_name: "transparentHugepageEnabled",
    enum: true,
    deprecated: false

  field :transparent_hugepage_defrag, 5,
    type: Google.Container.V1beta1.LinuxNodeConfig.TransparentHugepageDefrag,
    json_name: "transparentHugepageDefrag",
    enum: true,
    deprecated: false
end

defmodule Google.Container.V1beta1.WindowsNodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :os_version, 1,
    type: Google.Container.V1beta1.WindowsNodeConfig.OSVersion,
    json_name: "osVersion",
    enum: true
end

defmodule Google.Container.V1beta1.NodeKubeletConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cpu_manager_policy, 1, type: :string, json_name: "cpuManagerPolicy"

  field :topology_manager, 8,
    type: Google.Container.V1beta1.TopologyManager,
    json_name: "topologyManager",
    deprecated: false

  field :memory_manager, 9,
    type: Google.Container.V1beta1.MemoryManager,
    json_name: "memoryManager",
    deprecated: false

  field :cpu_cfs_quota, 2, type: Google.Protobuf.BoolValue, json_name: "cpuCfsQuota"
  field :cpu_cfs_quota_period, 3, type: :string, json_name: "cpuCfsQuotaPeriod"
  field :pod_pids_limit, 4, type: :int64, json_name: "podPidsLimit"

  field :insecure_kubelet_readonly_port_enabled, 7,
    proto3_optional: true,
    type: :bool,
    json_name: "insecureKubeletReadonlyPortEnabled"

  field :image_gc_low_threshold_percent, 10,
    type: :int32,
    json_name: "imageGcLowThresholdPercent",
    deprecated: false

  field :image_gc_high_threshold_percent, 11,
    type: :int32,
    json_name: "imageGcHighThresholdPercent",
    deprecated: false

  field :image_minimum_gc_age, 12,
    type: :string,
    json_name: "imageMinimumGcAge",
    deprecated: false

  field :image_maximum_gc_age, 13,
    type: :string,
    json_name: "imageMaximumGcAge",
    deprecated: false

  field :container_log_max_size, 14,
    type: :string,
    json_name: "containerLogMaxSize",
    deprecated: false

  field :container_log_max_files, 15,
    type: :int32,
    json_name: "containerLogMaxFiles",
    deprecated: false

  field :allowed_unsafe_sysctls, 16,
    repeated: true,
    type: :string,
    json_name: "allowedUnsafeSysctls",
    deprecated: false

  field :eviction_soft, 17,
    type: Google.Container.V1beta1.EvictionSignals,
    json_name: "evictionSoft",
    deprecated: false

  field :eviction_soft_grace_period, 18,
    type: Google.Container.V1beta1.EvictionGracePeriod,
    json_name: "evictionSoftGracePeriod",
    deprecated: false

  field :eviction_minimum_reclaim, 19,
    type: Google.Container.V1beta1.EvictionMinimumReclaim,
    json_name: "evictionMinimumReclaim",
    deprecated: false

  field :eviction_max_pod_grace_period_seconds, 20,
    type: :int32,
    json_name: "evictionMaxPodGracePeriodSeconds",
    deprecated: false

  field :max_parallel_image_pulls, 21,
    type: :int32,
    json_name: "maxParallelImagePulls",
    deprecated: false

  field :single_process_oom_kill, 22,
    proto3_optional: true,
    type: :bool,
    json_name: "singleProcessOomKill",
    deprecated: false
end

defmodule Google.Container.V1beta1.TopologyManager do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policy, 1, type: :string
  field :scope, 2, type: :string
end

defmodule Google.Container.V1beta1.MemoryManager do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policy, 1, type: :string
end

defmodule Google.Container.V1beta1.EvictionSignals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :memory_available, 1, type: :string, json_name: "memoryAvailable", deprecated: false
  field :nodefs_available, 2, type: :string, json_name: "nodefsAvailable", deprecated: false
  field :nodefs_inodes_free, 3, type: :string, json_name: "nodefsInodesFree", deprecated: false
  field :imagefs_available, 4, type: :string, json_name: "imagefsAvailable", deprecated: false
  field :imagefs_inodes_free, 5, type: :string, json_name: "imagefsInodesFree", deprecated: false
  field :pid_available, 6, type: :string, json_name: "pidAvailable", deprecated: false
end

defmodule Google.Container.V1beta1.EvictionGracePeriod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :memory_available, 1, type: :string, json_name: "memoryAvailable", deprecated: false
  field :nodefs_available, 2, type: :string, json_name: "nodefsAvailable", deprecated: false
  field :nodefs_inodes_free, 3, type: :string, json_name: "nodefsInodesFree", deprecated: false
  field :imagefs_available, 4, type: :string, json_name: "imagefsAvailable", deprecated: false
  field :imagefs_inodes_free, 5, type: :string, json_name: "imagefsInodesFree", deprecated: false
  field :pid_available, 6, type: :string, json_name: "pidAvailable", deprecated: false
end

defmodule Google.Container.V1beta1.EvictionMinimumReclaim do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :memory_available, 1, type: :string, json_name: "memoryAvailable", deprecated: false
  field :nodefs_available, 2, type: :string, json_name: "nodefsAvailable", deprecated: false
  field :nodefs_inodes_free, 3, type: :string, json_name: "nodefsInodesFree", deprecated: false
  field :imagefs_available, 4, type: :string, json_name: "imagefsAvailable", deprecated: false
  field :imagefs_inodes_free, 5, type: :string, json_name: "imagefsInodesFree", deprecated: false
  field :pid_available, 6, type: :string, json_name: "pidAvailable", deprecated: false
end

defmodule Google.Container.V1beta1.NodeConfig.MetadataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1beta1.NodeConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1beta1.NodeConfig.ResourceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1beta1.NodeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType"
  field :disk_size_gb, 2, type: :int32, json_name: "diskSizeGb"
  field :oauth_scopes, 3, repeated: true, type: :string, json_name: "oauthScopes"
  field :service_account, 9, type: :string, json_name: "serviceAccount"

  field :metadata, 4,
    repeated: true,
    type: Google.Container.V1beta1.NodeConfig.MetadataEntry,
    map: true

  field :image_type, 5, type: :string, json_name: "imageType"

  field :labels, 6,
    repeated: true,
    type: Google.Container.V1beta1.NodeConfig.LabelsEntry,
    map: true

  field :local_ssd_count, 7, type: :int32, json_name: "localSsdCount"
  field :tags, 8, repeated: true, type: :string
  field :preemptible, 10, type: :bool
  field :accelerators, 11, repeated: true, type: Google.Container.V1beta1.AcceleratorConfig

  field :sandbox_config, 17,
    type: Google.Container.V1beta1.SandboxConfig,
    json_name: "sandboxConfig"

  field :node_group, 18, type: :string, json_name: "nodeGroup"

  field :reservation_affinity, 19,
    type: Google.Container.V1beta1.ReservationAffinity,
    json_name: "reservationAffinity"

  field :disk_type, 12, type: :string, json_name: "diskType"
  field :min_cpu_platform, 13, type: :string, json_name: "minCpuPlatform"

  field :workload_metadata_config, 14,
    type: Google.Container.V1beta1.WorkloadMetadataConfig,
    json_name: "workloadMetadataConfig"

  field :taints, 15, repeated: true, type: Google.Container.V1beta1.NodeTaint
  field :boot_disk_kms_key, 23, type: :string, json_name: "bootDiskKmsKey"

  field :shielded_instance_config, 20,
    type: Google.Container.V1beta1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig"

  field :linux_node_config, 21,
    type: Google.Container.V1beta1.LinuxNodeConfig,
    json_name: "linuxNodeConfig"

  field :kubelet_config, 22,
    type: Google.Container.V1beta1.NodeKubeletConfig,
    json_name: "kubeletConfig"

  field :ephemeral_storage_config, 24,
    type: Google.Container.V1beta1.EphemeralStorageConfig,
    json_name: "ephemeralStorageConfig"

  field :gcfs_config, 25, type: Google.Container.V1beta1.GcfsConfig, json_name: "gcfsConfig"

  field :advanced_machine_features, 26,
    type: Google.Container.V1beta1.AdvancedMachineFeatures,
    json_name: "advancedMachineFeatures"

  field :gvnic, 29, type: Google.Container.V1beta1.VirtualNIC
  field :spot, 32, type: :bool

  field :confidential_nodes, 35,
    type: Google.Container.V1beta1.ConfidentialNodes,
    json_name: "confidentialNodes"

  field :fast_socket, 36,
    proto3_optional: true,
    type: Google.Container.V1beta1.FastSocket,
    json_name: "fastSocket"

  field :resource_labels, 37,
    repeated: true,
    type: Google.Container.V1beta1.NodeConfig.ResourceLabelsEntry,
    json_name: "resourceLabels",
    map: true

  field :logging_config, 38,
    type: Google.Container.V1beta1.NodePoolLoggingConfig,
    json_name: "loggingConfig"

  field :windows_node_config, 39,
    type: Google.Container.V1beta1.WindowsNodeConfig,
    json_name: "windowsNodeConfig"

  field :local_nvme_ssd_block_config, 40,
    type: Google.Container.V1beta1.LocalNvmeSsdBlockConfig,
    json_name: "localNvmeSsdBlockConfig"

  field :ephemeral_storage_local_ssd_config, 41,
    type: Google.Container.V1beta1.EphemeralStorageLocalSsdConfig,
    json_name: "ephemeralStorageLocalSsdConfig"

  field :sole_tenant_config, 42,
    type: Google.Container.V1beta1.SoleTenantConfig,
    json_name: "soleTenantConfig"

  field :containerd_config, 43,
    type: Google.Container.V1beta1.ContainerdConfig,
    json_name: "containerdConfig"

  field :host_maintenance_policy, 44,
    type: Google.Container.V1beta1.HostMaintenancePolicy,
    json_name: "hostMaintenancePolicy"

  field :resource_manager_tags, 45,
    type: Google.Container.V1beta1.ResourceManagerTags,
    json_name: "resourceManagerTags"

  field :enable_confidential_storage, 46,
    type: :bool,
    json_name: "enableConfidentialStorage",
    deprecated: false

  field :secondary_boot_disks, 48,
    repeated: true,
    type: Google.Container.V1beta1.SecondaryBootDisk,
    json_name: "secondaryBootDisks"

  field :storage_pools, 49, repeated: true, type: :string, json_name: "storagePools"

  field :secondary_boot_disk_update_strategy, 50,
    proto3_optional: true,
    type: Google.Container.V1beta1.SecondaryBootDiskUpdateStrategy,
    json_name: "secondaryBootDiskUpdateStrategy"

  field :max_run_duration, 53, type: Google.Protobuf.Duration, json_name: "maxRunDuration"

  field :local_ssd_encryption_mode, 54,
    proto3_optional: true,
    type: Google.Container.V1beta1.NodeConfig.LocalSsdEncryptionMode,
    json_name: "localSsdEncryptionMode",
    enum: true

  field :effective_cgroup_mode, 55,
    type: Google.Container.V1beta1.NodeConfig.EffectiveCgroupMode,
    json_name: "effectiveCgroupMode",
    enum: true,
    deprecated: false

  field :flex_start, 56, proto3_optional: true, type: :bool, json_name: "flexStart"
  field :boot_disk, 57, type: Google.Container.V1beta1.BootDisk, json_name: "bootDisk"
end

defmodule Google.Container.V1beta1.AdvancedMachineFeatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :threads_per_core, 1, proto3_optional: true, type: :int64, json_name: "threadsPerCore"

  field :enable_nested_virtualization, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "enableNestedVirtualization"

  field :performance_monitoring_unit, 3,
    proto3_optional: true,
    type: Google.Container.V1beta1.AdvancedMachineFeatures.PerformanceMonitoringUnit,
    json_name: "performanceMonitoringUnit",
    enum: true
end

defmodule Google.Container.V1beta1.NodeNetworkConfig.NetworkPerformanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :total_egress_bandwidth_tier, 1,
    proto3_optional: true,
    type: Google.Container.V1beta1.NodeNetworkConfig.NetworkPerformanceConfig.Tier,
    json_name: "totalEgressBandwidthTier",
    enum: true

  field :external_ip_egress_bandwidth_tier, 2,
    proto3_optional: true,
    type: Google.Container.V1beta1.NodeNetworkConfig.NetworkPerformanceConfig.Tier,
    json_name: "externalIpEgressBandwidthTier",
    enum: true
end

defmodule Google.Container.V1beta1.NodeNetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_pod_range, 4, type: :bool, json_name: "createPodRange", deprecated: false
  field :pod_range, 5, type: :string, json_name: "podRange"
  field :pod_ipv4_cidr_block, 6, type: :string, json_name: "podIpv4CidrBlock"

  field :enable_private_nodes, 9,
    proto3_optional: true,
    type: :bool,
    json_name: "enablePrivateNodes"

  field :network_performance_config, 11,
    proto3_optional: true,
    type: Google.Container.V1beta1.NodeNetworkConfig.NetworkPerformanceConfig,
    json_name: "networkPerformanceConfig"

  field :pod_cidr_overprovision_config, 13,
    type: Google.Container.V1beta1.PodCIDROverprovisionConfig,
    json_name: "podCidrOverprovisionConfig"

  field :additional_node_network_configs, 14,
    repeated: true,
    type: Google.Container.V1beta1.AdditionalNodeNetworkConfig,
    json_name: "additionalNodeNetworkConfigs"

  field :additional_pod_network_configs, 15,
    repeated: true,
    type: Google.Container.V1beta1.AdditionalPodNetworkConfig,
    json_name: "additionalPodNetworkConfigs"

  field :pod_ipv4_range_utilization, 16,
    type: :double,
    json_name: "podIpv4RangeUtilization",
    deprecated: false

  field :subnetwork, 19, type: :string, deprecated: false
end

defmodule Google.Container.V1beta1.AdditionalNodeNetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string
  field :subnetwork, 2, type: :string
end

defmodule Google.Container.V1beta1.AdditionalPodNetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subnetwork, 1, type: :string
  field :secondary_pod_range, 2, type: :string, json_name: "secondaryPodRange"

  field :max_pods_per_node, 3,
    proto3_optional: true,
    type: Google.Container.V1beta1.MaxPodsConstraint,
    json_name: "maxPodsPerNode"
end

defmodule Google.Container.V1beta1.ShieldedInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_secure_boot, 1, type: :bool, json_name: "enableSecureBoot"
  field :enable_integrity_monitoring, 2, type: :bool, json_name: "enableIntegrityMonitoring"
end

defmodule Google.Container.V1beta1.SandboxConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sandbox_type, 1, type: :string, json_name: "sandboxType", deprecated: true
  field :type, 2, type: Google.Container.V1beta1.SandboxConfig.Type, enum: true
end

defmodule Google.Container.V1beta1.EphemeralStorageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :local_ssd_count, 1, type: :int32, json_name: "localSsdCount"
end

defmodule Google.Container.V1beta1.LocalNvmeSsdBlockConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :local_ssd_count, 1, type: :int32, json_name: "localSsdCount"
end

defmodule Google.Container.V1beta1.EphemeralStorageLocalSsdConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :local_ssd_count, 1, type: :int32, json_name: "localSsdCount"
  field :data_cache_count, 2, type: :int32, json_name: "dataCacheCount"
end

defmodule Google.Container.V1beta1.GcfsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.ReservationAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :consume_reservation_type, 1,
    type: Google.Container.V1beta1.ReservationAffinity.Type,
    json_name: "consumeReservationType",
    enum: true

  field :key, 2, type: :string
  field :values, 3, repeated: true, type: :string
end

defmodule Google.Container.V1beta1.SoleTenantConfig.NodeAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string

  field :operator, 2,
    type: Google.Container.V1beta1.SoleTenantConfig.NodeAffinity.Operator,
    enum: true

  field :values, 3, repeated: true, type: :string
end

defmodule Google.Container.V1beta1.SoleTenantConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :node_affinities, 1,
    repeated: true,
    type: Google.Container.V1beta1.SoleTenantConfig.NodeAffinity,
    json_name: "nodeAffinities"

  field :min_node_cpus, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "minNodeCpus",
    deprecated: false
end

defmodule Google.Container.V1beta1.ContainerdConfig.PrivateRegistryAccessConfig.CertificateAuthorityDomainConfig.GCPSecretManagerCertificateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :secret_uri, 1, type: :string, json_name: "secretUri"
end

defmodule Google.Container.V1beta1.ContainerdConfig.PrivateRegistryAccessConfig.CertificateAuthorityDomainConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :certificate_config, 0

  field :fqdns, 1, repeated: true, type: :string

  field :gcp_secret_manager_certificate_config, 2,
    type:
      Google.Container.V1beta1.ContainerdConfig.PrivateRegistryAccessConfig.CertificateAuthorityDomainConfig.GCPSecretManagerCertificateConfig,
    json_name: "gcpSecretManagerCertificateConfig",
    oneof: 0
end

defmodule Google.Container.V1beta1.ContainerdConfig.PrivateRegistryAccessConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :certificate_authority_domain_config, 2,
    repeated: true,
    type:
      Google.Container.V1beta1.ContainerdConfig.PrivateRegistryAccessConfig.CertificateAuthorityDomainConfig,
    json_name: "certificateAuthorityDomainConfig"
end

defmodule Google.Container.V1beta1.ContainerdConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :private_registry_access_config, 1,
    type: Google.Container.V1beta1.ContainerdConfig.PrivateRegistryAccessConfig,
    json_name: "privateRegistryAccessConfig"
end

defmodule Google.Container.V1beta1.HostMaintenancePolicy.OpportunisticMaintenanceStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :node_idle_time_window, 1,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "nodeIdleTimeWindow"

  field :maintenance_availability_window, 2,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "maintenanceAvailabilityWindow"

  field :min_nodes_per_pool, 3, proto3_optional: true, type: :int64, json_name: "minNodesPerPool"
end

defmodule Google.Container.V1beta1.HostMaintenancePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :maintenance_strategy, 0

  field :maintenance_interval, 1,
    proto3_optional: true,
    type: Google.Container.V1beta1.HostMaintenancePolicy.MaintenanceInterval,
    json_name: "maintenanceInterval",
    enum: true

  field :opportunistic_maintenance_strategy, 2,
    type: Google.Container.V1beta1.HostMaintenancePolicy.OpportunisticMaintenanceStrategy,
    json_name: "opportunisticMaintenanceStrategy",
    oneof: 0
end

defmodule Google.Container.V1beta1.NodeTaint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :effect, 3, type: Google.Container.V1beta1.NodeTaint.Effect, enum: true
end

defmodule Google.Container.V1beta1.NodeTaints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :taints, 1, repeated: true, type: Google.Container.V1beta1.NodeTaint
end

defmodule Google.Container.V1beta1.NodeLabels.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1beta1.NodeLabels do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Container.V1beta1.NodeLabels.LabelsEntry,
    map: true
end

defmodule Google.Container.V1beta1.ResourceLabels.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1beta1.ResourceLabels do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Container.V1beta1.ResourceLabels.LabelsEntry,
    map: true
end

defmodule Google.Container.V1beta1.NetworkTags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tags, 1, repeated: true, type: :string
end

defmodule Google.Container.V1beta1.MasterAuth do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :username, 1, type: :string, deprecated: true
  field :password, 2, type: :string, deprecated: true

  field :client_certificate_config, 3,
    type: Google.Container.V1beta1.ClientCertificateConfig,
    json_name: "clientCertificateConfig"

  field :cluster_ca_certificate, 100,
    type: :string,
    json_name: "clusterCaCertificate",
    deprecated: false

  field :client_certificate, 101, type: :string, json_name: "clientCertificate", deprecated: false
  field :client_key, 102, type: :string, json_name: "clientKey", deprecated: false
end

defmodule Google.Container.V1beta1.ClientCertificateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issue_client_certificate, 1, type: :bool, json_name: "issueClientCertificate"
end

defmodule Google.Container.V1beta1.AddonsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :http_load_balancing, 1,
    type: Google.Container.V1beta1.HttpLoadBalancing,
    json_name: "httpLoadBalancing"

  field :horizontal_pod_autoscaling, 2,
    type: Google.Container.V1beta1.HorizontalPodAutoscaling,
    json_name: "horizontalPodAutoscaling"

  field :kubernetes_dashboard, 3,
    type: Google.Container.V1beta1.KubernetesDashboard,
    json_name: "kubernetesDashboard",
    deprecated: true

  field :network_policy_config, 4,
    type: Google.Container.V1beta1.NetworkPolicyConfig,
    json_name: "networkPolicyConfig"

  field :istio_config, 5,
    type: Google.Container.V1beta1.IstioConfig,
    json_name: "istioConfig",
    deprecated: true

  field :cloud_run_config, 7,
    type: Google.Container.V1beta1.CloudRunConfig,
    json_name: "cloudRunConfig"

  field :dns_cache_config, 8,
    type: Google.Container.V1beta1.DnsCacheConfig,
    json_name: "dnsCacheConfig"

  field :config_connector_config, 10,
    type: Google.Container.V1beta1.ConfigConnectorConfig,
    json_name: "configConnectorConfig"

  field :gce_persistent_disk_csi_driver_config, 11,
    type: Google.Container.V1beta1.GcePersistentDiskCsiDriverConfig,
    json_name: "gcePersistentDiskCsiDriverConfig"

  field :kalm_config, 12,
    type: Google.Container.V1beta1.KalmConfig,
    json_name: "kalmConfig",
    deprecated: true

  field :gcp_filestore_csi_driver_config, 14,
    type: Google.Container.V1beta1.GcpFilestoreCsiDriverConfig,
    json_name: "gcpFilestoreCsiDriverConfig"

  field :gke_backup_agent_config, 16,
    type: Google.Container.V1beta1.GkeBackupAgentConfig,
    json_name: "gkeBackupAgentConfig"

  field :gcs_fuse_csi_driver_config, 17,
    type: Google.Container.V1beta1.GcsFuseCsiDriverConfig,
    json_name: "gcsFuseCsiDriverConfig"

  field :stateful_ha_config, 18,
    type: Google.Container.V1beta1.StatefulHAConfig,
    json_name: "statefulHaConfig",
    deprecated: false

  field :parallelstore_csi_driver_config, 19,
    type: Google.Container.V1beta1.ParallelstoreCsiDriverConfig,
    json_name: "parallelstoreCsiDriverConfig"

  field :ray_operator_config, 21,
    type: Google.Container.V1beta1.RayOperatorConfig,
    json_name: "rayOperatorConfig",
    deprecated: false

  field :high_scale_checkpointing_config, 22,
    type: Google.Container.V1beta1.HighScaleCheckpointingConfig,
    json_name: "highScaleCheckpointingConfig"

  field :lustre_csi_driver_config, 23,
    type: Google.Container.V1beta1.LustreCsiDriverConfig,
    json_name: "lustreCsiDriverConfig"
end

defmodule Google.Container.V1beta1.HttpLoadBalancing do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.HorizontalPodAutoscaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.KubernetesDashboard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.NetworkPolicyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.DnsCacheConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.KalmConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: true
end

defmodule Google.Container.V1beta1.GkeBackupAgentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.StatefulHAConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.ConfigConnectorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.GcePersistentDiskCsiDriverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.GcpFilestoreCsiDriverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.GcsFuseCsiDriverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.ParallelstoreCsiDriverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.HighScaleCheckpointingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.LustreCsiDriverConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :enable_legacy_lustre_port, 3, type: :bool, json_name: "enableLegacyLustrePort"
end

defmodule Google.Container.V1beta1.RayOperatorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :ray_cluster_logging_config, 2,
    type: Google.Container.V1beta1.RayClusterLoggingConfig,
    json_name: "rayClusterLoggingConfig",
    deprecated: false

  field :ray_cluster_monitoring_config, 3,
    type: Google.Container.V1beta1.RayClusterMonitoringConfig,
    json_name: "rayClusterMonitoringConfig",
    deprecated: false
end

defmodule Google.Container.V1beta1.PrivateClusterMasterGlobalAccessConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.PrivateClusterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_private_nodes, 1, type: :bool, json_name: "enablePrivateNodes", deprecated: true

  field :enable_private_endpoint, 2,
    type: :bool,
    json_name: "enablePrivateEndpoint",
    deprecated: true

  field :master_ipv4_cidr_block, 3, type: :string, json_name: "masterIpv4CidrBlock"
  field :private_endpoint, 4, type: :string, json_name: "privateEndpoint", deprecated: true
  field :public_endpoint, 5, type: :string, json_name: "publicEndpoint", deprecated: true
  field :peering_name, 7, type: :string, json_name: "peeringName", deprecated: false

  field :master_global_access_config, 8,
    type: Google.Container.V1beta1.PrivateClusterMasterGlobalAccessConfig,
    json_name: "masterGlobalAccessConfig",
    deprecated: true

  field :private_endpoint_subnetwork, 10,
    type: :string,
    json_name: "privateEndpointSubnetwork",
    deprecated: true
end

defmodule Google.Container.V1beta1.IstioConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disabled, 1, type: :bool, deprecated: true

  field :auth, 2,
    type: Google.Container.V1beta1.IstioConfig.IstioAuthMode,
    enum: true,
    deprecated: true
end

defmodule Google.Container.V1beta1.CloudRunConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disabled, 1, type: :bool

  field :load_balancer_type, 3,
    type: Google.Container.V1beta1.CloudRunConfig.LoadBalancerType,
    json_name: "loadBalancerType",
    enum: true
end

defmodule Google.Container.V1beta1.MasterAuthorizedNetworksConfig.CidrBlock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"
  field :cidr_block, 2, type: :string, json_name: "cidrBlock"
end

defmodule Google.Container.V1beta1.MasterAuthorizedNetworksConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :cidr_blocks, 2,
    repeated: true,
    type: Google.Container.V1beta1.MasterAuthorizedNetworksConfig.CidrBlock,
    json_name: "cidrBlocks"

  field :gcp_public_cidrs_access_enabled, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "gcpPublicCidrsAccessEnabled"

  field :private_endpoint_enforcement_enabled, 5,
    proto3_optional: true,
    type: :bool,
    json_name: "privateEndpointEnforcementEnabled"
end

defmodule Google.Container.V1beta1.LegacyAbac do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.NetworkPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :provider, 1, type: Google.Container.V1beta1.NetworkPolicy.Provider, enum: true
  field :enabled, 2, type: :bool
end

defmodule Google.Container.V1beta1.PodCIDROverprovisionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disable, 1, type: :bool
end

defmodule Google.Container.V1beta1.IPAllocationPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
  field :allow_route_overlap, 12, type: :bool, json_name: "allowRouteOverlap"
  field :tpu_ipv4_cidr_block, 13, type: :string, json_name: "tpuIpv4CidrBlock", deprecated: true
  field :use_routes, 15, type: :bool, json_name: "useRoutes"

  field :stack_type, 16,
    type: Google.Container.V1beta1.IPAllocationPolicy.StackType,
    json_name: "stackType",
    enum: true

  field :ipv6_access_type, 17,
    type: Google.Container.V1beta1.IPAllocationPolicy.IPv6AccessType,
    json_name: "ipv6AccessType",
    enum: true

  field :pod_cidr_overprovision_config, 21,
    type: Google.Container.V1beta1.PodCIDROverprovisionConfig,
    json_name: "podCidrOverprovisionConfig"

  field :subnet_ipv6_cidr_block, 22,
    type: :string,
    json_name: "subnetIpv6CidrBlock",
    deprecated: false

  field :services_ipv6_cidr_block, 23,
    type: :string,
    json_name: "servicesIpv6CidrBlock",
    deprecated: false

  field :additional_pod_ranges_config, 24,
    type: Google.Container.V1beta1.AdditionalPodRangesConfig,
    json_name: "additionalPodRangesConfig",
    deprecated: false

  field :default_pod_ipv4_range_utilization, 25,
    type: :double,
    json_name: "defaultPodIpv4RangeUtilization",
    deprecated: false

  field :additional_ip_ranges_configs, 29,
    repeated: true,
    type: Google.Container.V1beta1.AdditionalIPRangesConfig,
    json_name: "additionalIpRangesConfigs",
    deprecated: false

  field :auto_ipam_config, 30,
    type: Google.Container.V1beta1.AutoIpamConfig,
    json_name: "autoIpamConfig",
    deprecated: false
end

defmodule Google.Container.V1beta1.BinaryAuthorization.PolicyBinding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string
end

defmodule Google.Container.V1beta1.BinaryAuthorization do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: true

  field :evaluation_mode, 2,
    type: Google.Container.V1beta1.BinaryAuthorization.EvaluationMode,
    json_name: "evaluationMode",
    enum: true

  field :policy_bindings, 5,
    repeated: true,
    type: Google.Container.V1beta1.BinaryAuthorization.PolicyBinding,
    json_name: "policyBindings",
    deprecated: false
end

defmodule Google.Container.V1beta1.PodSecurityPolicyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.AuthenticatorGroupsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :security_group, 2, type: :string, json_name: "securityGroup"
end

defmodule Google.Container.V1beta1.ClusterTelemetry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Container.V1beta1.ClusterTelemetry.Type, enum: true
end

defmodule Google.Container.V1beta1.Cluster.ResourceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1beta1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :initial_node_count, 3, type: :int32, json_name: "initialNodeCount", deprecated: true

  field :node_config, 4,
    type: Google.Container.V1beta1.NodeConfig,
    json_name: "nodeConfig",
    deprecated: true

  field :master_auth, 5, type: Google.Container.V1beta1.MasterAuth, json_name: "masterAuth"
  field :logging_service, 6, type: :string, json_name: "loggingService"
  field :monitoring_service, 7, type: :string, json_name: "monitoringService"
  field :network, 8, type: :string
  field :cluster_ipv4_cidr, 9, type: :string, json_name: "clusterIpv4Cidr"
  field :addons_config, 10, type: Google.Container.V1beta1.AddonsConfig, json_name: "addonsConfig"
  field :subnetwork, 11, type: :string

  field :node_pools, 12,
    repeated: true,
    type: Google.Container.V1beta1.NodePool,
    json_name: "nodePools"

  field :locations, 13, repeated: true, type: :string
  field :enable_kubernetes_alpha, 14, type: :bool, json_name: "enableKubernetesAlpha"

  field :alpha_cluster_feature_gates, 160,
    repeated: true,
    type: :string,
    json_name: "alphaClusterFeatureGates"

  field :enable_k8s_beta_apis, 143,
    type: Google.Container.V1beta1.K8sBetaAPIConfig,
    json_name: "enableK8sBetaApis"

  field :resource_labels, 15,
    repeated: true,
    type: Google.Container.V1beta1.Cluster.ResourceLabelsEntry,
    json_name: "resourceLabels",
    map: true

  field :label_fingerprint, 16, type: :string, json_name: "labelFingerprint"
  field :legacy_abac, 18, type: Google.Container.V1beta1.LegacyAbac, json_name: "legacyAbac"

  field :network_policy, 19,
    type: Google.Container.V1beta1.NetworkPolicy,
    json_name: "networkPolicy"

  field :ip_allocation_policy, 20,
    type: Google.Container.V1beta1.IPAllocationPolicy,
    json_name: "ipAllocationPolicy"

  field :master_authorized_networks_config, 22,
    type: Google.Container.V1beta1.MasterAuthorizedNetworksConfig,
    json_name: "masterAuthorizedNetworksConfig",
    deprecated: true

  field :maintenance_policy, 23,
    type: Google.Container.V1beta1.MaintenancePolicy,
    json_name: "maintenancePolicy"

  field :binary_authorization, 24,
    type: Google.Container.V1beta1.BinaryAuthorization,
    json_name: "binaryAuthorization"

  field :pod_security_policy_config, 25,
    type: Google.Container.V1beta1.PodSecurityPolicyConfig,
    json_name: "podSecurityPolicyConfig"

  field :autoscaling, 26, type: Google.Container.V1beta1.ClusterAutoscaling

  field :network_config, 27,
    type: Google.Container.V1beta1.NetworkConfig,
    json_name: "networkConfig"

  field :private_cluster, 28, type: :bool, json_name: "privateCluster", deprecated: true

  field :master_ipv4_cidr_block, 29,
    type: :string,
    json_name: "masterIpv4CidrBlock",
    deprecated: true

  field :default_max_pods_constraint, 30,
    type: Google.Container.V1beta1.MaxPodsConstraint,
    json_name: "defaultMaxPodsConstraint"

  field :resource_usage_export_config, 33,
    type: Google.Container.V1beta1.ResourceUsageExportConfig,
    json_name: "resourceUsageExportConfig"

  field :authenticator_groups_config, 34,
    type: Google.Container.V1beta1.AuthenticatorGroupsConfig,
    json_name: "authenticatorGroupsConfig"

  field :private_cluster_config, 37,
    type: Google.Container.V1beta1.PrivateClusterConfig,
    json_name: "privateClusterConfig"

  field :vertical_pod_autoscaling, 39,
    type: Google.Container.V1beta1.VerticalPodAutoscaling,
    json_name: "verticalPodAutoscaling"

  field :shielded_nodes, 40,
    type: Google.Container.V1beta1.ShieldedNodes,
    json_name: "shieldedNodes"

  field :release_channel, 41,
    type: Google.Container.V1beta1.ReleaseChannel,
    json_name: "releaseChannel"

  field :workload_identity_config, 43,
    type: Google.Container.V1beta1.WorkloadIdentityConfig,
    json_name: "workloadIdentityConfig"

  field :workload_certificates, 52,
    type: Google.Container.V1beta1.WorkloadCertificates,
    json_name: "workloadCertificates"

  field :mesh_certificates, 67,
    type: Google.Container.V1beta1.MeshCertificates,
    json_name: "meshCertificates"

  field :workload_alts_config, 53,
    type: Google.Container.V1beta1.WorkloadALTSConfig,
    json_name: "workloadAltsConfig"

  field :cost_management_config, 45,
    type: Google.Container.V1beta1.CostManagementConfig,
    json_name: "costManagementConfig"

  field :cluster_telemetry, 46,
    type: Google.Container.V1beta1.ClusterTelemetry,
    json_name: "clusterTelemetry"

  field :tpu_config, 47,
    type: Google.Container.V1beta1.TpuConfig,
    json_name: "tpuConfig",
    deprecated: true

  field :notification_config, 49,
    type: Google.Container.V1beta1.NotificationConfig,
    json_name: "notificationConfig"

  field :confidential_nodes, 50,
    type: Google.Container.V1beta1.ConfidentialNodes,
    json_name: "confidentialNodes"

  field :identity_service_config, 54,
    type: Google.Container.V1beta1.IdentityServiceConfig,
    json_name: "identityServiceConfig"

  field :self_link, 100, type: :string, json_name: "selfLink", deprecated: false
  field :zone, 101, type: :string, deprecated: true
  field :endpoint, 102, type: :string, deprecated: false
  field :initial_cluster_version, 103, type: :string, json_name: "initialClusterVersion"

  field :current_master_version, 104,
    type: :string,
    json_name: "currentMasterVersion",
    deprecated: false

  field :current_node_version, 105,
    type: :string,
    json_name: "currentNodeVersion",
    deprecated: true

  field :create_time, 106, type: :string, json_name: "createTime", deprecated: false
  field :status, 107, type: Google.Container.V1beta1.Cluster.Status, enum: true, deprecated: false
  field :status_message, 108, type: :string, json_name: "statusMessage", deprecated: true
  field :node_ipv4_cidr_size, 109, type: :int32, json_name: "nodeIpv4CidrSize", deprecated: false
  field :services_ipv4_cidr, 110, type: :string, json_name: "servicesIpv4Cidr", deprecated: false

  field :instance_group_urls, 111,
    repeated: true,
    type: :string,
    json_name: "instanceGroupUrls",
    deprecated: true

  field :current_node_count, 112, type: :int32, json_name: "currentNodeCount", deprecated: true
  field :expire_time, 113, type: :string, json_name: "expireTime", deprecated: false
  field :location, 114, type: :string, deprecated: false
  field :enable_tpu, 115, type: :bool, json_name: "enableTpu", deprecated: true
  field :tpu_ipv4_cidr_block, 116, type: :string, json_name: "tpuIpv4CidrBlock", deprecated: true

  field :database_encryption, 38,
    type: Google.Container.V1beta1.DatabaseEncryption,
    json_name: "databaseEncryption"

  field :conditions, 118, repeated: true, type: Google.Container.V1beta1.StatusCondition
  field :master, 124, type: Google.Container.V1beta1.Master
  field :autopilot, 128, type: Google.Container.V1beta1.Autopilot
  field :id, 129, type: :string, deprecated: false

  field :node_pool_defaults, 131,
    proto3_optional: true,
    type: Google.Container.V1beta1.NodePoolDefaults,
    json_name: "nodePoolDefaults"

  field :logging_config, 132,
    type: Google.Container.V1beta1.LoggingConfig,
    json_name: "loggingConfig"

  field :monitoring_config, 133,
    type: Google.Container.V1beta1.MonitoringConfig,
    json_name: "monitoringConfig"

  field :node_pool_auto_config, 136,
    type: Google.Container.V1beta1.NodePoolAutoConfig,
    json_name: "nodePoolAutoConfig"

  field :protect_config, 137,
    proto3_optional: true,
    type: Google.Container.V1beta1.ProtectConfig,
    json_name: "protectConfig",
    deprecated: true

  field :pod_autoscaling, 138,
    type: Google.Container.V1beta1.PodAutoscaling,
    json_name: "podAutoscaling"

  field :etag, 139, type: :string
  field :fleet, 140, type: Google.Container.V1beta1.Fleet

  field :security_posture_config, 145,
    type: Google.Container.V1beta1.SecurityPostureConfig,
    json_name: "securityPostureConfig"

  field :control_plane_endpoints_config, 146,
    type: Google.Container.V1beta1.ControlPlaneEndpointsConfig,
    json_name: "controlPlaneEndpointsConfig"

  field :enterprise_config, 149,
    type: Google.Container.V1beta1.EnterpriseConfig,
    json_name: "enterpriseConfig"

  field :secret_manager_config, 150,
    type: Google.Container.V1beta1.SecretManagerConfig,
    json_name: "secretManagerConfig"

  field :compliance_posture_config, 151,
    type: Google.Container.V1beta1.CompliancePostureConfig,
    json_name: "compliancePostureConfig"

  field :satisfies_pzs, 152,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false

  field :satisfies_pzi, 153,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false

  field :user_managed_keys_config, 154,
    proto3_optional: true,
    type: Google.Container.V1beta1.UserManagedKeysConfig,
    json_name: "userManagedKeysConfig"

  field :rbac_binding_config, 156,
    proto3_optional: true,
    type: Google.Container.V1beta1.RBACBindingConfig,
    json_name: "rbacBindingConfig"

  field :gke_auto_upgrade_config, 163,
    type: Google.Container.V1beta1.GkeAutoUpgradeConfig,
    json_name: "gkeAutoUpgradeConfig"

  field :anonymous_authentication_config, 164,
    type: Google.Container.V1beta1.AnonymousAuthenticationConfig,
    json_name: "anonymousAuthenticationConfig"
end

defmodule Google.Container.V1beta1.RBACBindingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_insecure_binding_system_unauthenticated, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "enableInsecureBindingSystemUnauthenticated"

  field :enable_insecure_binding_system_authenticated, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "enableInsecureBindingSystemAuthenticated"
end

defmodule Google.Container.V1beta1.UserManagedKeysConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cluster_ca, 10, type: :string, json_name: "clusterCa", deprecated: false
  field :etcd_api_ca, 11, type: :string, json_name: "etcdApiCa", deprecated: false
  field :etcd_peer_ca, 12, type: :string, json_name: "etcdPeerCa", deprecated: false

  field :service_account_signing_keys, 13,
    repeated: true,
    type: :string,
    json_name: "serviceAccountSigningKeys",
    deprecated: false

  field :service_account_verification_keys, 14,
    repeated: true,
    type: :string,
    json_name: "serviceAccountVerificationKeys",
    deprecated: false

  field :aggregation_ca, 15, type: :string, json_name: "aggregationCa", deprecated: false

  field :control_plane_disk_encryption_key, 16,
    type: :string,
    json_name: "controlPlaneDiskEncryptionKey",
    deprecated: false

  field :gkeops_etcd_backup_encryption_key, 17,
    type: :string,
    json_name: "gkeopsEtcdBackupEncryptionKey",
    deprecated: false
end

defmodule Google.Container.V1beta1.AnonymousAuthenticationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1, type: Google.Container.V1beta1.AnonymousAuthenticationConfig.Mode, enum: true
end

defmodule Google.Container.V1beta1.CompliancePostureConfig.ComplianceStandard do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :standard, 1, proto3_optional: true, type: :string
end

defmodule Google.Container.V1beta1.CompliancePostureConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1,
    proto3_optional: true,
    type: Google.Container.V1beta1.CompliancePostureConfig.Mode,
    enum: true

  field :compliance_standards, 2,
    repeated: true,
    type: Google.Container.V1beta1.CompliancePostureConfig.ComplianceStandard,
    json_name: "complianceStandards"
end

defmodule Google.Container.V1beta1.K8sBetaAPIConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled_apis, 1, repeated: true, type: :string, json_name: "enabledApis"
end

defmodule Google.Container.V1beta1.WorkloadConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :audit_mode, 1,
    proto3_optional: true,
    type: Google.Container.V1beta1.WorkloadConfig.Mode,
    json_name: "auditMode",
    enum: true
end

defmodule Google.Container.V1beta1.ProtectConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workload_config, 1,
    proto3_optional: true,
    type: Google.Container.V1beta1.WorkloadConfig,
    json_name: "workloadConfig"

  field :workload_vulnerability_mode, 2,
    proto3_optional: true,
    type: Google.Container.V1beta1.ProtectConfig.WorkloadVulnerabilityMode,
    json_name: "workloadVulnerabilityMode",
    enum: true
end

defmodule Google.Container.V1beta1.SecurityPostureConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1,
    proto3_optional: true,
    type: Google.Container.V1beta1.SecurityPostureConfig.Mode,
    enum: true

  field :vulnerability_mode, 2,
    proto3_optional: true,
    type: Google.Container.V1beta1.SecurityPostureConfig.VulnerabilityMode,
    json_name: "vulnerabilityMode",
    enum: true
end

defmodule Google.Container.V1beta1.NodePoolDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :node_config_defaults, 1,
    type: Google.Container.V1beta1.NodeConfigDefaults,
    json_name: "nodeConfigDefaults"
end

defmodule Google.Container.V1beta1.NodeConfigDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gcfs_config, 1, type: Google.Container.V1beta1.GcfsConfig, json_name: "gcfsConfig"

  field :logging_config, 3,
    type: Google.Container.V1beta1.NodePoolLoggingConfig,
    json_name: "loggingConfig"

  field :containerd_config, 4,
    type: Google.Container.V1beta1.ContainerdConfig,
    json_name: "containerdConfig"

  field :host_maintenance_policy, 5,
    type: Google.Container.V1beta1.HostMaintenancePolicy,
    json_name: "hostMaintenancePolicy"

  field :node_kubelet_config, 6,
    type: Google.Container.V1beta1.NodeKubeletConfig,
    json_name: "nodeKubeletConfig"
end

defmodule Google.Container.V1beta1.NodePoolAutoConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network_tags, 1, type: Google.Container.V1beta1.NetworkTags, json_name: "networkTags"

  field :resource_manager_tags, 2,
    type: Google.Container.V1beta1.ResourceManagerTags,
    json_name: "resourceManagerTags"

  field :node_kubelet_config, 3,
    type: Google.Container.V1beta1.NodeKubeletConfig,
    json_name: "nodeKubeletConfig"

  field :linux_node_config, 4,
    type: Google.Container.V1beta1.LinuxNodeConfig,
    json_name: "linuxNodeConfig",
    deprecated: false
end

defmodule Google.Container.V1beta1.ClusterUpdate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :desired_node_version, 4, type: :string, json_name: "desiredNodeVersion"
  field :desired_monitoring_service, 5, type: :string, json_name: "desiredMonitoringService"

  field :desired_addons_config, 6,
    type: Google.Container.V1beta1.AddonsConfig,
    json_name: "desiredAddonsConfig"

  field :desired_node_pool_id, 7, type: :string, json_name: "desiredNodePoolId"
  field :desired_image_type, 8, type: :string, json_name: "desiredImageType"

  field :desired_node_pool_autoscaling, 9,
    type: Google.Container.V1beta1.NodePoolAutoscaling,
    json_name: "desiredNodePoolAutoscaling"

  field :desired_locations, 10, repeated: true, type: :string, json_name: "desiredLocations"

  field :desired_master_authorized_networks_config, 12,
    type: Google.Container.V1beta1.MasterAuthorizedNetworksConfig,
    json_name: "desiredMasterAuthorizedNetworksConfig",
    deprecated: true

  field :desired_pod_security_policy_config, 14,
    type: Google.Container.V1beta1.PodSecurityPolicyConfig,
    json_name: "desiredPodSecurityPolicyConfig"

  field :desired_cluster_autoscaling, 15,
    type: Google.Container.V1beta1.ClusterAutoscaling,
    json_name: "desiredClusterAutoscaling"

  field :desired_binary_authorization, 16,
    type: Google.Container.V1beta1.BinaryAuthorization,
    json_name: "desiredBinaryAuthorization"

  field :desired_logging_service, 19, type: :string, json_name: "desiredLoggingService"

  field :desired_resource_usage_export_config, 21,
    type: Google.Container.V1beta1.ResourceUsageExportConfig,
    json_name: "desiredResourceUsageExportConfig"

  field :desired_vertical_pod_autoscaling, 22,
    type: Google.Container.V1beta1.VerticalPodAutoscaling,
    json_name: "desiredVerticalPodAutoscaling"

  field :desired_private_cluster_config, 25,
    type: Google.Container.V1beta1.PrivateClusterConfig,
    json_name: "desiredPrivateClusterConfig",
    deprecated: true

  field :desired_intra_node_visibility_config, 26,
    type: Google.Container.V1beta1.IntraNodeVisibilityConfig,
    json_name: "desiredIntraNodeVisibilityConfig"

  field :desired_default_snat_status, 28,
    type: Google.Container.V1beta1.DefaultSnatStatus,
    json_name: "desiredDefaultSnatStatus"

  field :desired_cluster_telemetry, 30,
    type: Google.Container.V1beta1.ClusterTelemetry,
    json_name: "desiredClusterTelemetry"

  field :desired_release_channel, 31,
    type: Google.Container.V1beta1.ReleaseChannel,
    json_name: "desiredReleaseChannel"

  field :private_cluster_config, 37,
    type: Google.Container.V1beta1.PrivateClusterConfig,
    json_name: "privateClusterConfig",
    deprecated: true

  field :desired_tpu_config, 38,
    type: Google.Container.V1beta1.TpuConfig,
    json_name: "desiredTpuConfig",
    deprecated: true

  field :desired_l4ilb_subsetting_config, 39,
    type: Google.Container.V1beta1.ILBSubsettingConfig,
    json_name: "desiredL4ilbSubsettingConfig"

  field :desired_datapath_provider, 50,
    type: Google.Container.V1beta1.DatapathProvider,
    json_name: "desiredDatapathProvider",
    enum: true

  field :desired_private_ipv6_google_access, 51,
    type: Google.Container.V1beta1.PrivateIPv6GoogleAccess,
    json_name: "desiredPrivateIpv6GoogleAccess",
    enum: true

  field :desired_notification_config, 55,
    type: Google.Container.V1beta1.NotificationConfig,
    json_name: "desiredNotificationConfig"

  field :desired_master_version, 100, type: :string, json_name: "desiredMasterVersion"

  field :desired_gcfs_config, 109,
    type: Google.Container.V1beta1.GcfsConfig,
    json_name: "desiredGcfsConfig"

  field :desired_database_encryption, 46,
    type: Google.Container.V1beta1.DatabaseEncryption,
    json_name: "desiredDatabaseEncryption"

  field :desired_workload_identity_config, 47,
    type: Google.Container.V1beta1.WorkloadIdentityConfig,
    json_name: "desiredWorkloadIdentityConfig"

  field :desired_workload_certificates, 61,
    type: Google.Container.V1beta1.WorkloadCertificates,
    json_name: "desiredWorkloadCertificates"

  field :desired_mesh_certificates, 67,
    type: Google.Container.V1beta1.MeshCertificates,
    json_name: "desiredMeshCertificates"

  field :desired_workload_alts_config, 62,
    type: Google.Container.V1beta1.WorkloadALTSConfig,
    json_name: "desiredWorkloadAltsConfig"

  field :desired_shielded_nodes, 48,
    type: Google.Container.V1beta1.ShieldedNodes,
    json_name: "desiredShieldedNodes"

  field :desired_cost_management_config, 49,
    type: Google.Container.V1beta1.CostManagementConfig,
    json_name: "desiredCostManagementConfig"

  field :desired_master, 52, type: Google.Container.V1beta1.Master, json_name: "desiredMaster"

  field :desired_dns_config, 53,
    type: Google.Container.V1beta1.DNSConfig,
    json_name: "desiredDnsConfig"

  field :desired_service_external_ips_config, 60,
    type: Google.Container.V1beta1.ServiceExternalIPsConfig,
    json_name: "desiredServiceExternalIpsConfig"

  field :desired_authenticator_groups_config, 63,
    type: Google.Container.V1beta1.AuthenticatorGroupsConfig,
    json_name: "desiredAuthenticatorGroupsConfig"

  field :desired_logging_config, 64,
    type: Google.Container.V1beta1.LoggingConfig,
    json_name: "desiredLoggingConfig"

  field :desired_monitoring_config, 65,
    type: Google.Container.V1beta1.MonitoringConfig,
    json_name: "desiredMonitoringConfig"

  field :desired_identity_service_config, 66,
    type: Google.Container.V1beta1.IdentityServiceConfig,
    json_name: "desiredIdentityServiceConfig"

  field :desired_enable_private_endpoint, 71,
    proto3_optional: true,
    type: :bool,
    json_name: "desiredEnablePrivateEndpoint",
    deprecated: true

  field :desired_default_enable_private_nodes, 72,
    proto3_optional: true,
    type: :bool,
    json_name: "desiredDefaultEnablePrivateNodes"

  field :desired_control_plane_endpoints_config, 73,
    type: Google.Container.V1beta1.ControlPlaneEndpointsConfig,
    json_name: "desiredControlPlaneEndpointsConfig"

  field :desired_node_pool_auto_config_network_tags, 110,
    type: Google.Container.V1beta1.NetworkTags,
    json_name: "desiredNodePoolAutoConfigNetworkTags"

  field :desired_protect_config, 112,
    proto3_optional: true,
    type: Google.Container.V1beta1.ProtectConfig,
    json_name: "desiredProtectConfig",
    deprecated: true

  field :desired_pod_autoscaling, 113,
    type: Google.Container.V1beta1.PodAutoscaling,
    json_name: "desiredPodAutoscaling"

  field :desired_gateway_api_config, 114,
    type: Google.Container.V1beta1.GatewayAPIConfig,
    json_name: "desiredGatewayApiConfig"

  field :etag, 115, type: :string

  field :desired_node_pool_logging_config, 116,
    type: Google.Container.V1beta1.NodePoolLoggingConfig,
    json_name: "desiredNodePoolLoggingConfig"

  field :desired_fleet, 117, type: Google.Container.V1beta1.Fleet, json_name: "desiredFleet"

  field :desired_stack_type, 119,
    type: Google.Container.V1beta1.StackType,
    json_name: "desiredStackType",
    enum: true

  field :additional_pod_ranges_config, 120,
    type: Google.Container.V1beta1.AdditionalPodRangesConfig,
    json_name: "additionalPodRangesConfig"

  field :removed_additional_pod_ranges_config, 121,
    type: Google.Container.V1beta1.AdditionalPodRangesConfig,
    json_name: "removedAdditionalPodRangesConfig"

  field :enable_k8s_beta_apis, 122,
    type: Google.Container.V1beta1.K8sBetaAPIConfig,
    json_name: "enableK8sBetaApis"

  field :desired_security_posture_config, 124,
    type: Google.Container.V1beta1.SecurityPostureConfig,
    json_name: "desiredSecurityPostureConfig"

  field :desired_network_performance_config, 125,
    type: Google.Container.V1beta1.NetworkConfig.ClusterNetworkPerformanceConfig,
    json_name: "desiredNetworkPerformanceConfig"

  field :desired_enable_fqdn_network_policy, 126,
    proto3_optional: true,
    type: :bool,
    json_name: "desiredEnableFqdnNetworkPolicy"

  field :desired_autopilot_workload_policy_config, 128,
    type: Google.Container.V1beta1.WorkloadPolicyConfig,
    json_name: "desiredAutopilotWorkloadPolicyConfig"

  field :desired_k8s_beta_apis, 131,
    type: Google.Container.V1beta1.K8sBetaAPIConfig,
    json_name: "desiredK8sBetaApis"

  field :desired_host_maintenance_policy, 132,
    type: Google.Container.V1beta1.HostMaintenancePolicy,
    json_name: "desiredHostMaintenancePolicy"

  field :desired_containerd_config, 134,
    type: Google.Container.V1beta1.ContainerdConfig,
    json_name: "desiredContainerdConfig"

  field :desired_enable_multi_networking, 135,
    proto3_optional: true,
    type: :bool,
    json_name: "desiredEnableMultiNetworking"

  field :desired_node_pool_auto_config_resource_manager_tags, 136,
    type: Google.Container.V1beta1.ResourceManagerTags,
    json_name: "desiredNodePoolAutoConfigResourceManagerTags"

  field :desired_in_transit_encryption_config, 137,
    proto3_optional: true,
    type: Google.Container.V1beta1.InTransitEncryptionConfig,
    json_name: "desiredInTransitEncryptionConfig",
    enum: true

  field :desired_enable_cilium_clusterwide_network_policy, 138,
    proto3_optional: true,
    type: :bool,
    json_name: "desiredEnableCiliumClusterwideNetworkPolicy"

  field :desired_secret_manager_config, 139,
    proto3_optional: true,
    type: Google.Container.V1beta1.SecretManagerConfig,
    json_name: "desiredSecretManagerConfig"

  field :desired_compliance_posture_config, 140,
    proto3_optional: true,
    type: Google.Container.V1beta1.CompliancePostureConfig,
    json_name: "desiredCompliancePostureConfig"

  field :desired_node_kubelet_config, 141,
    type: Google.Container.V1beta1.NodeKubeletConfig,
    json_name: "desiredNodeKubeletConfig"

  field :desired_node_pool_auto_config_kubelet_config, 142,
    type: Google.Container.V1beta1.NodeKubeletConfig,
    json_name: "desiredNodePoolAutoConfigKubeletConfig"

  field :user_managed_keys_config, 143,
    type: Google.Container.V1beta1.UserManagedKeysConfig,
    json_name: "userManagedKeysConfig",
    deprecated: true

  field :desired_rbac_binding_config, 144,
    proto3_optional: true,
    type: Google.Container.V1beta1.RBACBindingConfig,
    json_name: "desiredRbacBindingConfig"

  field :desired_additional_ip_ranges_config, 145,
    type: Google.Container.V1beta1.DesiredAdditionalIPRangesConfig,
    json_name: "desiredAdditionalIpRangesConfig"

  field :desired_enterprise_config, 147,
    type: Google.Container.V1beta1.DesiredEnterpriseConfig,
    json_name: "desiredEnterpriseConfig"

  field :desired_auto_ipam_config, 148,
    type: Google.Container.V1beta1.AutoIpamConfig,
    json_name: "desiredAutoIpamConfig"

  field :desired_disable_l4_lb_firewall_reconciliation, 149,
    proto3_optional: true,
    type: :bool,
    json_name: "desiredDisableL4LbFirewallReconciliation"

  field :desired_node_pool_auto_config_linux_node_config, 150,
    type: Google.Container.V1beta1.LinuxNodeConfig,
    json_name: "desiredNodePoolAutoConfigLinuxNodeConfig"

  field :desired_user_managed_keys_config, 152,
    type: Google.Container.V1beta1.UserManagedKeysConfig,
    json_name: "desiredUserManagedKeysConfig"

  field :desired_anonymous_authentication_config, 156,
    type: Google.Container.V1beta1.AnonymousAuthenticationConfig,
    json_name: "desiredAnonymousAuthenticationConfig"

  field :gke_auto_upgrade_config, 154,
    type: Google.Container.V1beta1.GkeAutoUpgradeConfig,
    json_name: "gkeAutoUpgradeConfig"
end

defmodule Google.Container.V1beta1.AdditionalPodRangesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pod_range_names, 1, repeated: true, type: :string, json_name: "podRangeNames"

  field :pod_range_info, 2,
    repeated: true,
    type: Google.Container.V1beta1.RangeInfo,
    json_name: "podRangeInfo",
    deprecated: false
end

defmodule Google.Container.V1beta1.AdditionalIPRangesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subnetwork, 1, type: :string
  field :pod_ipv4_range_names, 2, repeated: true, type: :string, json_name: "podIpv4RangeNames"
end

defmodule Google.Container.V1beta1.DesiredAdditionalIPRangesConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :additional_ip_ranges_configs, 1,
    repeated: true,
    type: Google.Container.V1beta1.AdditionalIPRangesConfig,
    json_name: "additionalIpRangesConfigs"
end

defmodule Google.Container.V1beta1.AutoIpamConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Container.V1beta1.RangeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :range_name, 1, type: :string, json_name: "rangeName", deprecated: false
  field :utilization, 2, type: :double, deprecated: false
end

defmodule Google.Container.V1beta1.DesiredEnterpriseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :desired_tier, 1,
    type: Google.Container.V1beta1.EnterpriseConfig.ClusterTier,
    json_name: "desiredTier",
    enum: true
end

defmodule Google.Container.V1beta1.Operation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :zone, 2, type: :string, deprecated: true

  field :operation_type, 3,
    type: Google.Container.V1beta1.Operation.Type,
    json_name: "operationType",
    enum: true,
    deprecated: false

  field :status, 4, type: Google.Container.V1beta1.Operation.Status, enum: true, deprecated: false
  field :detail, 8, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: true
  field :self_link, 6, type: :string, json_name: "selfLink", deprecated: false
  field :target_link, 7, type: :string, json_name: "targetLink", deprecated: false
  field :location, 9, type: :string, deprecated: false
  field :start_time, 10, type: :string, json_name: "startTime", deprecated: false
  field :end_time, 11, type: :string, json_name: "endTime", deprecated: false
  field :progress, 12, type: Google.Container.V1beta1.OperationProgress, deprecated: false

  field :cluster_conditions, 13,
    repeated: true,
    type: Google.Container.V1beta1.StatusCondition,
    json_name: "clusterConditions",
    deprecated: true

  field :nodepool_conditions, 14,
    repeated: true,
    type: Google.Container.V1beta1.StatusCondition,
    json_name: "nodepoolConditions",
    deprecated: true

  field :error, 15, type: Google.Rpc.Status
end

defmodule Google.Container.V1beta1.OperationProgress.Metric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :value, 0

  field :name, 1, type: :string, deprecated: false
  field :int_value, 2, type: :int64, json_name: "intValue", oneof: 0
  field :double_value, 3, type: :double, json_name: "doubleValue", oneof: 0
  field :string_value, 4, type: :string, json_name: "stringValue", oneof: 0
end

defmodule Google.Container.V1beta1.OperationProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :status, 2, type: Google.Container.V1beta1.Operation.Status, enum: true
  field :metrics, 3, repeated: true, type: Google.Container.V1beta1.OperationProgress.Metric
  field :stages, 4, repeated: true, type: Google.Container.V1beta1.OperationProgress
end

defmodule Google.Container.V1beta1.CreateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster, 3, type: Google.Container.V1beta1.Cluster, deprecated: false
  field :parent, 5, type: :string
end

defmodule Google.Container.V1beta1.GetClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :name, 5, type: :string
end

defmodule Google.Container.V1beta1.UpdateClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :update, 4, type: Google.Container.V1beta1.ClusterUpdate, deprecated: false
  field :name, 5, type: :string
end

defmodule Google.Container.V1beta1.UpdateNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :node_version, 5, type: :string, json_name: "nodeVersion", deprecated: false
  field :image_type, 6, type: :string, json_name: "imageType", deprecated: false
  field :locations, 13, repeated: true, type: :string

  field :workload_metadata_config, 14,
    type: Google.Container.V1beta1.WorkloadMetadataConfig,
    json_name: "workloadMetadataConfig"

  field :name, 8, type: :string

  field :upgrade_settings, 15,
    type: Google.Container.V1beta1.NodePool.UpgradeSettings,
    json_name: "upgradeSettings"

  field :tags, 16, type: Google.Container.V1beta1.NetworkTags
  field :taints, 17, type: Google.Container.V1beta1.NodeTaints
  field :labels, 18, type: Google.Container.V1beta1.NodeLabels

  field :linux_node_config, 19,
    type: Google.Container.V1beta1.LinuxNodeConfig,
    json_name: "linuxNodeConfig"

  field :kubelet_config, 20,
    type: Google.Container.V1beta1.NodeKubeletConfig,
    json_name: "kubeletConfig"

  field :node_network_config, 21,
    type: Google.Container.V1beta1.NodeNetworkConfig,
    json_name: "nodeNetworkConfig"

  field :gcfs_config, 22, type: Google.Container.V1beta1.GcfsConfig, json_name: "gcfsConfig"

  field :confidential_nodes, 23,
    type: Google.Container.V1beta1.ConfidentialNodes,
    json_name: "confidentialNodes"

  field :gvnic, 29, type: Google.Container.V1beta1.VirtualNIC
  field :etag, 30, type: :string
  field :fast_socket, 31, type: Google.Container.V1beta1.FastSocket, json_name: "fastSocket"

  field :logging_config, 32,
    type: Google.Container.V1beta1.NodePoolLoggingConfig,
    json_name: "loggingConfig"

  field :resource_labels, 33,
    type: Google.Container.V1beta1.ResourceLabels,
    json_name: "resourceLabels"

  field :windows_node_config, 34,
    type: Google.Container.V1beta1.WindowsNodeConfig,
    json_name: "windowsNodeConfig"

  field :accelerators, 35, repeated: true, type: Google.Container.V1beta1.AcceleratorConfig
  field :machine_type, 36, type: :string, json_name: "machineType", deprecated: false
  field :disk_type, 37, type: :string, json_name: "diskType", deprecated: false
  field :disk_size_gb, 38, type: :int64, json_name: "diskSizeGb", deprecated: false

  field :resource_manager_tags, 39,
    type: Google.Container.V1beta1.ResourceManagerTags,
    json_name: "resourceManagerTags"

  field :containerd_config, 40,
    type: Google.Container.V1beta1.ContainerdConfig,
    json_name: "containerdConfig"

  field :queued_provisioning, 42,
    type: Google.Container.V1beta1.NodePool.QueuedProvisioning,
    json_name: "queuedProvisioning"

  field :storage_pools, 43, repeated: true, type: :string, json_name: "storagePools"
  field :max_run_duration, 45, type: Google.Protobuf.Duration, json_name: "maxRunDuration"
  field :flex_start, 46, proto3_optional: true, type: :bool, json_name: "flexStart"
  field :boot_disk, 47, type: Google.Container.V1beta1.BootDisk, json_name: "bootDisk"
end

defmodule Google.Container.V1beta1.SetNodePoolAutoscalingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :autoscaling, 5, type: Google.Container.V1beta1.NodePoolAutoscaling, deprecated: false
  field :name, 6, type: :string
end

defmodule Google.Container.V1beta1.SetLoggingServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :logging_service, 4, type: :string, json_name: "loggingService", deprecated: false
  field :name, 5, type: :string
end

defmodule Google.Container.V1beta1.SetMonitoringServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :monitoring_service, 4, type: :string, json_name: "monitoringService", deprecated: false
  field :name, 6, type: :string
end

defmodule Google.Container.V1beta1.SetAddonsConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :addons_config, 4,
    type: Google.Container.V1beta1.AddonsConfig,
    json_name: "addonsConfig",
    deprecated: false

  field :name, 6, type: :string
end

defmodule Google.Container.V1beta1.SetLocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :locations, 4, repeated: true, type: :string, deprecated: false
  field :name, 6, type: :string
end

defmodule Google.Container.V1beta1.UpdateMasterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :master_version, 4, type: :string, json_name: "masterVersion", deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1beta1.SetMasterAuthRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :action, 4,
    type: Google.Container.V1beta1.SetMasterAuthRequest.Action,
    enum: true,
    deprecated: false

  field :update, 5, type: Google.Container.V1beta1.MasterAuth, deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1beta1.DeleteClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :name, 4, type: :string
end

defmodule Google.Container.V1beta1.ListClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :parent, 4, type: :string
end

defmodule Google.Container.V1beta1.ListClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :clusters, 1, repeated: true, type: Google.Container.V1beta1.Cluster
  field :missing_zones, 2, repeated: true, type: :string, json_name: "missingZones"
end

defmodule Google.Container.V1beta1.GetOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :operation_id, 3, type: :string, json_name: "operationId", deprecated: true
  field :name, 5, type: :string
end

defmodule Google.Container.V1beta1.ListOperationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :parent, 4, type: :string
end

defmodule Google.Container.V1beta1.CancelOperationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :operation_id, 3, type: :string, json_name: "operationId", deprecated: true
  field :name, 4, type: :string
end

defmodule Google.Container.V1beta1.ListOperationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operations, 1, repeated: true, type: Google.Container.V1beta1.Operation
  field :missing_zones, 2, repeated: true, type: :string, json_name: "missingZones"
end

defmodule Google.Container.V1beta1.GetServerConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :name, 4, type: :string
end

defmodule Google.Container.V1beta1.ServerConfig.ReleaseChannelConfig.AvailableVersion do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: :string
  field :reason, 2, type: :string
end

defmodule Google.Container.V1beta1.ServerConfig.ReleaseChannelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channel, 1, type: Google.Container.V1beta1.ReleaseChannel.Channel, enum: true
  field :default_version, 2, type: :string, json_name: "defaultVersion"

  field :available_versions, 3,
    repeated: true,
    type: Google.Container.V1beta1.ServerConfig.ReleaseChannelConfig.AvailableVersion,
    json_name: "availableVersions",
    deprecated: true

  field :valid_versions, 4, repeated: true, type: :string, json_name: "validVersions"
  field :upgrade_target_version, 5, type: :string, json_name: "upgradeTargetVersion"
end

defmodule Google.Container.V1beta1.ServerConfig.WindowsVersionMapsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Container.V1beta1.WindowsVersions
end

defmodule Google.Container.V1beta1.ServerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_cluster_version, 1, type: :string, json_name: "defaultClusterVersion"
  field :valid_node_versions, 3, repeated: true, type: :string, json_name: "validNodeVersions"
  field :default_image_type, 4, type: :string, json_name: "defaultImageType"
  field :valid_image_types, 5, repeated: true, type: :string, json_name: "validImageTypes"
  field :valid_master_versions, 6, repeated: true, type: :string, json_name: "validMasterVersions"

  field :channels, 9,
    repeated: true,
    type: Google.Container.V1beta1.ServerConfig.ReleaseChannelConfig

  field :windows_version_maps, 10,
    repeated: true,
    type: Google.Container.V1beta1.ServerConfig.WindowsVersionMapsEntry,
    json_name: "windowsVersionMaps",
    map: true
end

defmodule Google.Container.V1beta1.BestEffortProvisioning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :min_provision_nodes, 2, type: :int32, json_name: "minProvisionNodes"
end

defmodule Google.Container.V1beta1.WindowsVersions.WindowsVersion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :image_type, 1, type: :string, json_name: "imageType"
  field :os_version, 2, type: :string, json_name: "osVersion"
  field :support_end_date, 3, type: Google.Type.Date, json_name: "supportEndDate"
end

defmodule Google.Container.V1beta1.WindowsVersions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :windows_versions, 1,
    repeated: true,
    type: Google.Container.V1beta1.WindowsVersions.WindowsVersion,
    json_name: "windowsVersions"
end

defmodule Google.Container.V1beta1.CreateNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :node_pool, 4,
    type: Google.Container.V1beta1.NodePool,
    json_name: "nodePool",
    deprecated: false

  field :parent, 6, type: :string
end

defmodule Google.Container.V1beta1.DeleteNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :name, 6, type: :string
end

defmodule Google.Container.V1beta1.ListNodePoolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :parent, 5, type: :string
end

defmodule Google.Container.V1beta1.GetNodePoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :name, 6, type: :string
end

defmodule Google.Container.V1beta1.BlueGreenSettings.StandardRolloutPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :update_batch_size, 0

  field :batch_percentage, 1, type: :float, json_name: "batchPercentage", oneof: 0
  field :batch_node_count, 2, type: :int32, json_name: "batchNodeCount", oneof: 0

  field :batch_soak_duration, 3,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "batchSoakDuration"
end

defmodule Google.Container.V1beta1.BlueGreenSettings.AutoscaledRolloutPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Container.V1beta1.BlueGreenSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :rollout_policy, 0

  field :standard_rollout_policy, 1,
    type: Google.Container.V1beta1.BlueGreenSettings.StandardRolloutPolicy,
    json_name: "standardRolloutPolicy",
    oneof: 0

  field :autoscaled_rollout_policy, 3,
    type: Google.Container.V1beta1.BlueGreenSettings.AutoscaledRolloutPolicy,
    json_name: "autoscaledRolloutPolicy",
    oneof: 0

  field :node_pool_soak_duration, 2,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "nodePoolSoakDuration"
end

defmodule Google.Container.V1beta1.NodePool.UpgradeSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_surge, 1, type: :int32, json_name: "maxSurge"
  field :max_unavailable, 2, type: :int32, json_name: "maxUnavailable"

  field :strategy, 3,
    proto3_optional: true,
    type: Google.Container.V1beta1.NodePoolUpdateStrategy,
    enum: true

  field :blue_green_settings, 4,
    proto3_optional: true,
    type: Google.Container.V1beta1.BlueGreenSettings,
    json_name: "blueGreenSettings"
end

defmodule Google.Container.V1beta1.NodePool.UpdateInfo.BlueGreenInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :phase, 1,
    type: Google.Container.V1beta1.NodePool.UpdateInfo.BlueGreenInfo.Phase,
    enum: true

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

defmodule Google.Container.V1beta1.NodePool.UpdateInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :blue_green_info, 1,
    type: Google.Container.V1beta1.NodePool.UpdateInfo.BlueGreenInfo,
    json_name: "blueGreenInfo"
end

defmodule Google.Container.V1beta1.NodePool.PlacementPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Container.V1beta1.NodePool.PlacementPolicy.Type, enum: true
  field :tpu_topology, 2, type: :string, json_name: "tpuTopology"
  field :policy_name, 3, type: :string, json_name: "policyName"
end

defmodule Google.Container.V1beta1.NodePool.QueuedProvisioning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.NodePool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :config, 2, type: Google.Container.V1beta1.NodeConfig
  field :initial_node_count, 3, type: :int32, json_name: "initialNodeCount"
  field :locations, 13, repeated: true, type: :string

  field :network_config, 14,
    type: Google.Container.V1beta1.NodeNetworkConfig,
    json_name: "networkConfig"

  field :self_link, 100, type: :string, json_name: "selfLink", deprecated: false
  field :version, 101, type: :string

  field :instance_group_urls, 102,
    repeated: true,
    type: :string,
    json_name: "instanceGroupUrls",
    deprecated: false

  field :status, 103,
    type: Google.Container.V1beta1.NodePool.Status,
    enum: true,
    deprecated: false

  field :status_message, 104, type: :string, json_name: "statusMessage", deprecated: true
  field :autoscaling, 4, type: Google.Container.V1beta1.NodePoolAutoscaling
  field :management, 5, type: Google.Container.V1beta1.NodeManagement

  field :max_pods_constraint, 6,
    type: Google.Container.V1beta1.MaxPodsConstraint,
    json_name: "maxPodsConstraint"

  field :conditions, 105, repeated: true, type: Google.Container.V1beta1.StatusCondition
  field :pod_ipv4_cidr_size, 7, type: :int32, json_name: "podIpv4CidrSize", deprecated: false

  field :upgrade_settings, 107,
    type: Google.Container.V1beta1.NodePool.UpgradeSettings,
    json_name: "upgradeSettings"

  field :placement_policy, 108,
    type: Google.Container.V1beta1.NodePool.PlacementPolicy,
    json_name: "placementPolicy"

  field :update_info, 109,
    type: Google.Container.V1beta1.NodePool.UpdateInfo,
    json_name: "updateInfo",
    deprecated: false

  field :etag, 110, type: :string

  field :queued_provisioning, 112,
    type: Google.Container.V1beta1.NodePool.QueuedProvisioning,
    json_name: "queuedProvisioning"

  field :best_effort_provisioning, 113,
    type: Google.Container.V1beta1.BestEffortProvisioning,
    json_name: "bestEffortProvisioning"
end

defmodule Google.Container.V1beta1.NodeManagement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :auto_upgrade, 1, type: :bool, json_name: "autoUpgrade"
  field :auto_repair, 2, type: :bool, json_name: "autoRepair"

  field :upgrade_options, 10,
    type: Google.Container.V1beta1.AutoUpgradeOptions,
    json_name: "upgradeOptions"
end

defmodule Google.Container.V1beta1.AutoUpgradeOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :auto_upgrade_start_time, 1,
    type: :string,
    json_name: "autoUpgradeStartTime",
    deprecated: false

  field :description, 2, type: :string, deprecated: false
end

defmodule Google.Container.V1beta1.MaintenancePolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :window, 1, type: Google.Container.V1beta1.MaintenanceWindow
  field :resource_version, 3, type: :string, json_name: "resourceVersion"
end

defmodule Google.Container.V1beta1.MaintenanceWindow.MaintenanceExclusionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Container.V1beta1.TimeWindow
end

defmodule Google.Container.V1beta1.MaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :policy, 0

  field :daily_maintenance_window, 2,
    type: Google.Container.V1beta1.DailyMaintenanceWindow,
    json_name: "dailyMaintenanceWindow",
    oneof: 0

  field :recurring_window, 3,
    type: Google.Container.V1beta1.RecurringTimeWindow,
    json_name: "recurringWindow",
    oneof: 0

  field :maintenance_exclusions, 4,
    repeated: true,
    type: Google.Container.V1beta1.MaintenanceWindow.MaintenanceExclusionsEntry,
    json_name: "maintenanceExclusions",
    map: true
end

defmodule Google.Container.V1beta1.TimeWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :options, 0

  field :maintenance_exclusion_options, 3,
    type: Google.Container.V1beta1.MaintenanceExclusionOptions,
    json_name: "maintenanceExclusionOptions",
    oneof: 0

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Container.V1beta1.MaintenanceExclusionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scope, 1, type: Google.Container.V1beta1.MaintenanceExclusionOptions.Scope, enum: true
end

defmodule Google.Container.V1beta1.RecurringTimeWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :window, 1, type: Google.Container.V1beta1.TimeWindow
  field :recurrence, 2, type: :string
end

defmodule Google.Container.V1beta1.DailyMaintenanceWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 2, type: :string, json_name: "startTime"
  field :duration, 3, type: :string, deprecated: false
end

defmodule Google.Container.V1beta1.SetNodePoolManagementRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :management, 5, type: Google.Container.V1beta1.NodeManagement, deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1beta1.SetNodePoolSizeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :node_count, 5, type: :int32, json_name: "nodeCount", deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1beta1.CompleteNodePoolUpgradeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Container.V1beta1.RollbackNodePoolUpgradeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :node_pool_id, 4, type: :string, json_name: "nodePoolId", deprecated: true
  field :name, 6, type: :string
  field :respect_pdb, 7, type: :bool, json_name: "respectPdb"
end

defmodule Google.Container.V1beta1.ListNodePoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :node_pools, 1,
    repeated: true,
    type: Google.Container.V1beta1.NodePool,
    json_name: "nodePools"
end

defmodule Google.Container.V1beta1.ClusterAutoscaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_node_autoprovisioning, 1, type: :bool, json_name: "enableNodeAutoprovisioning"

  field :resource_limits, 2,
    repeated: true,
    type: Google.Container.V1beta1.ResourceLimit,
    json_name: "resourceLimits"

  field :autoscaling_profile, 3,
    type: Google.Container.V1beta1.ClusterAutoscaling.AutoscalingProfile,
    json_name: "autoscalingProfile",
    enum: true

  field :autoprovisioning_node_pool_defaults, 4,
    type: Google.Container.V1beta1.AutoprovisioningNodePoolDefaults,
    json_name: "autoprovisioningNodePoolDefaults"

  field :autoprovisioning_locations, 5,
    repeated: true,
    type: :string,
    json_name: "autoprovisioningLocations"

  field :default_compute_class_config, 9,
    type: Google.Container.V1beta1.DefaultComputeClassConfig,
    json_name: "defaultComputeClassConfig"
end

defmodule Google.Container.V1beta1.AutoprovisioningNodePoolDefaults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :oauth_scopes, 1, repeated: true, type: :string, json_name: "oauthScopes"
  field :service_account, 2, type: :string, json_name: "serviceAccount"

  field :upgrade_settings, 3,
    type: Google.Container.V1beta1.NodePool.UpgradeSettings,
    json_name: "upgradeSettings"

  field :management, 4, type: Google.Container.V1beta1.NodeManagement
  field :min_cpu_platform, 5, type: :string, json_name: "minCpuPlatform", deprecated: true
  field :disk_size_gb, 6, type: :int32, json_name: "diskSizeGb"
  field :disk_type, 7, type: :string, json_name: "diskType"

  field :shielded_instance_config, 8,
    type: Google.Container.V1beta1.ShieldedInstanceConfig,
    json_name: "shieldedInstanceConfig"

  field :boot_disk_kms_key, 9, type: :string, json_name: "bootDiskKmsKey"
  field :image_type, 10, type: :string, json_name: "imageType"

  field :insecure_kubelet_readonly_port_enabled, 13,
    proto3_optional: true,
    type: :bool,
    json_name: "insecureKubeletReadonlyPortEnabled"
end

defmodule Google.Container.V1beta1.ResourceLimit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_type, 1, type: :string, json_name: "resourceType"
  field :minimum, 2, type: :int64
  field :maximum, 3, type: :int64
end

defmodule Google.Container.V1beta1.DefaultComputeClassConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.NodePoolAutoscaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :min_node_count, 2, type: :int32, json_name: "minNodeCount"
  field :max_node_count, 3, type: :int32, json_name: "maxNodeCount"
  field :autoprovisioned, 4, type: :bool

  field :location_policy, 5,
    type: Google.Container.V1beta1.NodePoolAutoscaling.LocationPolicy,
    json_name: "locationPolicy",
    enum: true

  field :total_min_node_count, 6, type: :int32, json_name: "totalMinNodeCount"
  field :total_max_node_count, 7, type: :int32, json_name: "totalMaxNodeCount"
end

defmodule Google.Container.V1beta1.SetLabelsRequest.ResourceLabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1beta1.SetLabelsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :resource_labels, 4,
    repeated: true,
    type: Google.Container.V1beta1.SetLabelsRequest.ResourceLabelsEntry,
    json_name: "resourceLabels",
    map: true,
    deprecated: false

  field :label_fingerprint, 5, type: :string, json_name: "labelFingerprint", deprecated: false
  field :name, 7, type: :string
end

defmodule Google.Container.V1beta1.SetLegacyAbacRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :enabled, 4, type: :bool, deprecated: false
  field :name, 6, type: :string
end

defmodule Google.Container.V1beta1.StartIPRotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :name, 6, type: :string
  field :rotate_credentials, 7, type: :bool, json_name: "rotateCredentials"
end

defmodule Google.Container.V1beta1.CompleteIPRotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true
  field :name, 7, type: :string
end

defmodule Google.Container.V1beta1.AcceleratorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accelerator_count, 1, type: :int64, json_name: "acceleratorCount"
  field :accelerator_type, 2, type: :string, json_name: "acceleratorType"
  field :gpu_partition_size, 3, type: :string, json_name: "gpuPartitionSize"

  field :max_time_shared_clients_per_gpu, 4,
    type: :int64,
    json_name: "maxTimeSharedClientsPerGpu",
    deprecated: true

  field :gpu_sharing_config, 5,
    proto3_optional: true,
    type: Google.Container.V1beta1.GPUSharingConfig,
    json_name: "gpuSharingConfig"

  field :gpu_driver_installation_config, 6,
    proto3_optional: true,
    type: Google.Container.V1beta1.GPUDriverInstallationConfig,
    json_name: "gpuDriverInstallationConfig"
end

defmodule Google.Container.V1beta1.GPUSharingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_shared_clients_per_gpu, 1, type: :int64, json_name: "maxSharedClientsPerGpu"

  field :gpu_sharing_strategy, 2,
    proto3_optional: true,
    type: Google.Container.V1beta1.GPUSharingConfig.GPUSharingStrategy,
    json_name: "gpuSharingStrategy",
    enum: true
end

defmodule Google.Container.V1beta1.GPUDriverInstallationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gpu_driver_version, 1,
    proto3_optional: true,
    type: Google.Container.V1beta1.GPUDriverInstallationConfig.GPUDriverVersion,
    json_name: "gpuDriverVersion",
    enum: true
end

defmodule Google.Container.V1beta1.ManagedPrometheusConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :auto_monitoring_config, 2,
    type: Google.Container.V1beta1.AutoMonitoringConfig,
    json_name: "autoMonitoringConfig"
end

defmodule Google.Container.V1beta1.AutoMonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scope, 1, type: Google.Container.V1beta1.AutoMonitoringConfig.Scope, enum: true
end

defmodule Google.Container.V1beta1.WorkloadMetadataConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :node_metadata, 1,
    type: Google.Container.V1beta1.WorkloadMetadataConfig.NodeMetadata,
    json_name: "nodeMetadata",
    enum: true,
    deprecated: true

  field :mode, 2, type: Google.Container.V1beta1.WorkloadMetadataConfig.Mode, enum: true
end

defmodule Google.Container.V1beta1.SetNetworkPolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: true
  field :zone, 2, type: :string, deprecated: true
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: true

  field :network_policy, 4,
    type: Google.Container.V1beta1.NetworkPolicy,
    json_name: "networkPolicy",
    deprecated: false

  field :name, 6, type: :string
end

defmodule Google.Container.V1beta1.SetMaintenancePolicyRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :zone, 2, type: :string, deprecated: false
  field :cluster_id, 3, type: :string, json_name: "clusterId", deprecated: false

  field :maintenance_policy, 4,
    type: Google.Container.V1beta1.MaintenancePolicy,
    json_name: "maintenancePolicy",
    deprecated: false

  field :name, 5, type: :string
end

defmodule Google.Container.V1beta1.ListLocationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Container.V1beta1.ListLocationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :locations, 1, repeated: true, type: Google.Container.V1beta1.Location
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Container.V1beta1.Location do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Container.V1beta1.Location.LocationType, enum: true
  field :name, 2, type: :string
  field :recommended, 3, type: :bool
end

defmodule Google.Container.V1beta1.StatusCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :code, 1,
    type: Google.Container.V1beta1.StatusCondition.Code,
    enum: true,
    deprecated: true

  field :message, 2, type: :string
  field :canonical_code, 3, type: Google.Rpc.Code, json_name: "canonicalCode", enum: true
end

defmodule Google.Container.V1beta1.NetworkConfig.ClusterNetworkPerformanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :total_egress_bandwidth_tier, 1,
    proto3_optional: true,
    type: Google.Container.V1beta1.NetworkConfig.ClusterNetworkPerformanceConfig.Tier,
    json_name: "totalEgressBandwidthTier",
    enum: true
end

defmodule Google.Container.V1beta1.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :network, 1, type: :string, deprecated: false
  field :subnetwork, 2, type: :string, deprecated: false
  field :enable_intra_node_visibility, 5, type: :bool, json_name: "enableIntraNodeVisibility"

  field :default_snat_status, 7,
    type: Google.Container.V1beta1.DefaultSnatStatus,
    json_name: "defaultSnatStatus"

  field :enable_l4ilb_subsetting, 10, type: :bool, json_name: "enableL4ilbSubsetting"

  field :datapath_provider, 11,
    type: Google.Container.V1beta1.DatapathProvider,
    json_name: "datapathProvider",
    enum: true

  field :private_ipv6_google_access, 12,
    type: Google.Container.V1beta1.PrivateIPv6GoogleAccess,
    json_name: "privateIpv6GoogleAccess",
    enum: true

  field :dns_config, 13, type: Google.Container.V1beta1.DNSConfig, json_name: "dnsConfig"

  field :service_external_ips_config, 15,
    type: Google.Container.V1beta1.ServiceExternalIPsConfig,
    json_name: "serviceExternalIpsConfig"

  field :gateway_api_config, 16,
    type: Google.Container.V1beta1.GatewayAPIConfig,
    json_name: "gatewayApiConfig"

  field :enable_multi_networking, 17, type: :bool, json_name: "enableMultiNetworking"

  field :network_performance_config, 18,
    type: Google.Container.V1beta1.NetworkConfig.ClusterNetworkPerformanceConfig,
    json_name: "networkPerformanceConfig"

  field :enable_fqdn_network_policy, 19,
    proto3_optional: true,
    type: :bool,
    json_name: "enableFqdnNetworkPolicy"

  field :in_transit_encryption_config, 20,
    proto3_optional: true,
    type: Google.Container.V1beta1.InTransitEncryptionConfig,
    json_name: "inTransitEncryptionConfig",
    enum: true

  field :enable_cilium_clusterwide_network_policy, 21,
    proto3_optional: true,
    type: :bool,
    json_name: "enableCiliumClusterwideNetworkPolicy"

  field :default_enable_private_nodes, 22,
    proto3_optional: true,
    type: :bool,
    json_name: "defaultEnablePrivateNodes"

  field :disable_l4_lb_firewall_reconciliation, 24,
    proto3_optional: true,
    type: :bool,
    json_name: "disableL4LbFirewallReconciliation"
end

defmodule Google.Container.V1beta1.GatewayAPIConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channel, 1, type: Google.Container.V1beta1.GatewayAPIConfig.Channel, enum: true
end

defmodule Google.Container.V1beta1.ServiceExternalIPsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.ListUsableSubnetworksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Container.V1beta1.ListUsableSubnetworksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subnetworks, 1, repeated: true, type: Google.Container.V1beta1.UsableSubnetwork
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Container.V1beta1.UsableSubnetworkSecondaryRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :range_name, 1, type: :string, json_name: "rangeName"
  field :ip_cidr_range, 2, type: :string, json_name: "ipCidrRange"

  field :status, 3,
    type: Google.Container.V1beta1.UsableSubnetworkSecondaryRange.Status,
    enum: true
end

defmodule Google.Container.V1beta1.UsableSubnetwork do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subnetwork, 1, type: :string
  field :network, 2, type: :string
  field :ip_cidr_range, 3, type: :string, json_name: "ipCidrRange"

  field :secondary_ip_ranges, 4,
    repeated: true,
    type: Google.Container.V1beta1.UsableSubnetworkSecondaryRange,
    json_name: "secondaryIpRanges"

  field :status_message, 5, type: :string, json_name: "statusMessage"
end

defmodule Google.Container.V1beta1.VerticalPodAutoscaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.DefaultSnatStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.IntraNodeVisibilityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.ILBSubsettingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.DNSConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cluster_dns, 1,
    type: Google.Container.V1beta1.DNSConfig.Provider,
    json_name: "clusterDns",
    enum: true

  field :cluster_dns_scope, 2,
    type: Google.Container.V1beta1.DNSConfig.DNSScope,
    json_name: "clusterDnsScope",
    enum: true

  field :cluster_dns_domain, 3, type: :string, json_name: "clusterDnsDomain"

  field :additive_vpc_scope_dns_domain, 5,
    type: :string,
    json_name: "additiveVpcScopeDnsDomain",
    deprecated: false
end

defmodule Google.Container.V1beta1.MaxPodsConstraint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_pods_per_node, 1, type: :int64, json_name: "maxPodsPerNode"
end

defmodule Google.Container.V1beta1.WorkloadIdentityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :identity_namespace, 1, type: :string, json_name: "identityNamespace", deprecated: true
  field :workload_pool, 2, type: :string, json_name: "workloadPool"
  field :identity_provider, 3, type: :string, json_name: "identityProvider"
end

defmodule Google.Container.V1beta1.WorkloadALTSConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_alts, 1, type: Google.Protobuf.BoolValue, json_name: "enableAlts"
end

defmodule Google.Container.V1beta1.WorkloadCertificates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_certificates, 1, type: Google.Protobuf.BoolValue, json_name: "enableCertificates"
end

defmodule Google.Container.V1beta1.MeshCertificates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_certificates, 1, type: Google.Protobuf.BoolValue, json_name: "enableCertificates"
end

defmodule Google.Container.V1beta1.DatabaseEncryption.OperationError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key_name, 1, type: :string, json_name: "keyName"
  field :error_message, 2, type: :string, json_name: "errorMessage"
  field :timestamp, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Container.V1beta1.DatabaseEncryption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key_name, 1, type: :string, json_name: "keyName"
  field :state, 2, type: Google.Container.V1beta1.DatabaseEncryption.State, enum: true

  field :current_state, 3,
    proto3_optional: true,
    type: Google.Container.V1beta1.DatabaseEncryption.CurrentState,
    json_name: "currentState",
    enum: true,
    deprecated: false

  field :decryption_keys, 4,
    repeated: true,
    type: :string,
    json_name: "decryptionKeys",
    deprecated: false

  field :last_operation_errors, 5,
    repeated: true,
    type: Google.Container.V1beta1.DatabaseEncryption.OperationError,
    json_name: "lastOperationErrors",
    deprecated: false
end

defmodule Google.Container.V1beta1.ResourceUsageExportConfig.BigQueryDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
end

defmodule Google.Container.V1beta1.ResourceUsageExportConfig.ConsumptionMeteringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.ResourceUsageExportConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bigquery_destination, 1,
    type: Google.Container.V1beta1.ResourceUsageExportConfig.BigQueryDestination,
    json_name: "bigqueryDestination"

  field :enable_network_egress_metering, 2, type: :bool, json_name: "enableNetworkEgressMetering"

  field :consumption_metering_config, 3,
    type: Google.Container.V1beta1.ResourceUsageExportConfig.ConsumptionMeteringConfig,
    json_name: "consumptionMeteringConfig"
end

defmodule Google.Container.V1beta1.ShieldedNodes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.VirtualNIC do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.FastSocket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.GetOpenIDConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string
end

defmodule Google.Container.V1beta1.GetOpenIDConfigResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issuer, 1, type: :string
  field :jwks_uri, 2, type: :string
  field :response_types_supported, 3, repeated: true, type: :string
  field :subject_types_supported, 4, repeated: true, type: :string
  field :id_token_signing_alg_values_supported, 5, repeated: true, type: :string
  field :claims_supported, 6, repeated: true, type: :string
  field :grant_types, 7, repeated: true, type: :string
end

defmodule Google.Container.V1beta1.GetJSONWebKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string
end

defmodule Google.Container.V1beta1.Jwk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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

defmodule Google.Container.V1beta1.GetJSONWebKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :keys, 1, repeated: true, type: Google.Container.V1beta1.Jwk
end

defmodule Google.Container.V1beta1.CheckAutopilotCompatibilityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Container.V1beta1.AutopilotCompatibilityIssue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :last_observation, 1, type: Google.Protobuf.Timestamp, json_name: "lastObservation"
  field :constraint_type, 2, type: :string, json_name: "constraintType"

  field :incompatibility_type, 3,
    type: Google.Container.V1beta1.AutopilotCompatibilityIssue.IssueType,
    json_name: "incompatibilityType",
    enum: true

  field :subjects, 4, repeated: true, type: :string
  field :documentation_url, 5, type: :string, json_name: "documentationUrl"
  field :description, 6, type: :string
end

defmodule Google.Container.V1beta1.CheckAutopilotCompatibilityResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issues, 1, repeated: true, type: Google.Container.V1beta1.AutopilotCompatibilityIssue
  field :summary, 2, type: :string
end

defmodule Google.Container.V1beta1.ReleaseChannel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :channel, 1, type: Google.Container.V1beta1.ReleaseChannel.Channel, enum: true
end

defmodule Google.Container.V1beta1.CostManagementConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.TpuConfig do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :use_service_networking, 2, type: :bool, json_name: "useServiceNetworking"
  field :ipv4_cidr_block, 3, type: :string, json_name: "ipv4CidrBlock"
end

defmodule Google.Container.V1beta1.Master do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Container.V1beta1.AutopilotConversionStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 2,
    type: Google.Container.V1beta1.AutopilotConversionStatus.State,
    enum: true,
    deprecated: false
end

defmodule Google.Container.V1beta1.Autopilot do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :workload_policy_config, 2,
    type: Google.Container.V1beta1.WorkloadPolicyConfig,
    json_name: "workloadPolicyConfig"

  field :conversion_status, 3,
    type: Google.Container.V1beta1.AutopilotConversionStatus,
    json_name: "conversionStatus",
    deprecated: false
end

defmodule Google.Container.V1beta1.WorkloadPolicyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :allow_net_admin, 1, proto3_optional: true, type: :bool, json_name: "allowNetAdmin"

  field :autopilot_compatibility_auditing_enabled, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "autopilotCompatibilityAuditingEnabled"
end

defmodule Google.Container.V1beta1.NotificationConfig.PubSub do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
  field :topic, 2, type: :string, deprecated: false
  field :filter, 3, type: Google.Container.V1beta1.NotificationConfig.Filter
end

defmodule Google.Container.V1beta1.NotificationConfig.Filter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :event_type, 1,
    repeated: true,
    type: Google.Container.V1beta1.NotificationConfig.EventType,
    json_name: "eventType",
    enum: true
end

defmodule Google.Container.V1beta1.NotificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pubsub, 1, type: Google.Container.V1beta1.NotificationConfig.PubSub
end

defmodule Google.Container.V1beta1.ConfidentialNodes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool

  field :confidential_instance_type, 2,
    type: Google.Container.V1beta1.ConfidentialNodes.ConfidentialInstanceType,
    json_name: "confidentialInstanceType",
    enum: true
end

defmodule Google.Container.V1beta1.UpgradeEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_type, 1,
    type: Google.Container.V1beta1.UpgradeResourceType,
    json_name: "resourceType",
    enum: true

  field :operation, 2, type: :string
  field :operation_start_time, 3, type: Google.Protobuf.Timestamp, json_name: "operationStartTime"
  field :current_version, 4, type: :string, json_name: "currentVersion"
  field :target_version, 5, type: :string, json_name: "targetVersion"
  field :resource, 6, type: :string
end

defmodule Google.Container.V1beta1.UpgradeInfoEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_type, 1,
    type: Google.Container.V1beta1.UpgradeResourceType,
    json_name: "resourceType",
    enum: true

  field :operation, 2, type: :string
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 4, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :current_version, 5, type: :string, json_name: "currentVersion"
  field :target_version, 6, type: :string, json_name: "targetVersion"
  field :resource, 7, type: :string

  field :state, 8,
    type: Google.Container.V1beta1.UpgradeInfoEvent.State,
    enum: true,
    deprecated: false

  field :standard_support_end_time, 9,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "standardSupportEndTime"

  field :extended_support_end_time, 10,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "extendedSupportEndTime"

  field :description, 11, type: :string

  field :event_type, 12,
    type: Google.Container.V1beta1.UpgradeInfoEvent.EventType,
    json_name: "eventType",
    enum: true
end

defmodule Google.Container.V1beta1.UpgradeAvailableEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :version, 1, type: :string

  field :resource_type, 2,
    type: Google.Container.V1beta1.UpgradeResourceType,
    json_name: "resourceType",
    enum: true

  field :release_channel, 3,
    type: Google.Container.V1beta1.ReleaseChannel,
    json_name: "releaseChannel"

  field :resource, 4, type: :string

  field :windows_versions, 5,
    type: Google.Container.V1beta1.WindowsVersions,
    json_name: "windowsVersions"
end

defmodule Google.Container.V1beta1.SecurityBulletinEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
  field :mitigated_versions, 11, repeated: true, type: :string, json_name: "mitigatedVersions"
end

defmodule Google.Container.V1beta1.IdentityServiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.LoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :component_config, 1,
    type: Google.Container.V1beta1.LoggingComponentConfig,
    json_name: "componentConfig"
end

defmodule Google.Container.V1beta1.LoggingComponentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_components, 1,
    repeated: true,
    type: Google.Container.V1beta1.LoggingComponentConfig.Component,
    json_name: "enableComponents",
    enum: true
end

defmodule Google.Container.V1beta1.RayClusterLoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.MonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :component_config, 1,
    type: Google.Container.V1beta1.MonitoringComponentConfig,
    json_name: "componentConfig"

  field :managed_prometheus_config, 2,
    type: Google.Container.V1beta1.ManagedPrometheusConfig,
    json_name: "managedPrometheusConfig"

  field :advanced_datapath_observability_config, 3,
    type: Google.Container.V1beta1.AdvancedDatapathObservabilityConfig,
    json_name: "advancedDatapathObservabilityConfig"
end

defmodule Google.Container.V1beta1.AdvancedDatapathObservabilityConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_metrics, 1, type: :bool, json_name: "enableMetrics"

  field :relay_mode, 2,
    type: Google.Container.V1beta1.AdvancedDatapathObservabilityConfig.RelayMode,
    json_name: "relayMode",
    enum: true

  field :enable_relay, 3, proto3_optional: true, type: :bool, json_name: "enableRelay"
end

defmodule Google.Container.V1beta1.RayClusterMonitoringConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Container.V1beta1.NodePoolLoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :variant_config, 1,
    type: Google.Container.V1beta1.LoggingVariantConfig,
    json_name: "variantConfig"
end

defmodule Google.Container.V1beta1.LoggingVariantConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :variant, 1, type: Google.Container.V1beta1.LoggingVariantConfig.Variant, enum: true
end

defmodule Google.Container.V1beta1.MonitoringComponentConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enable_components, 1,
    repeated: true,
    type: Google.Container.V1beta1.MonitoringComponentConfig.Component,
    json_name: "enableComponents",
    enum: true
end

defmodule Google.Container.V1beta1.PodAutoscaling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hpa_profile, 2,
    proto3_optional: true,
    type: Google.Container.V1beta1.PodAutoscaling.HPAProfile,
    json_name: "hpaProfile",
    enum: true
end

defmodule Google.Container.V1beta1.Fleet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project, 1, type: :string
  field :membership, 2, type: :string, deprecated: false
  field :pre_registered, 3, type: :bool, json_name: "preRegistered", deprecated: false
end

defmodule Google.Container.V1beta1.ControlPlaneEndpointsConfig.DNSEndpointConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoint, 2, type: :string, deprecated: false

  field :allow_external_traffic, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "allowExternalTraffic"
end

defmodule Google.Container.V1beta1.ControlPlaneEndpointsConfig.IPEndpointsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, proto3_optional: true, type: :bool

  field :enable_public_endpoint, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "enablePublicEndpoint"

  field :global_access, 3, proto3_optional: true, type: :bool, json_name: "globalAccess"

  field :authorized_networks_config, 4,
    type: Google.Container.V1beta1.MasterAuthorizedNetworksConfig,
    json_name: "authorizedNetworksConfig"

  field :public_endpoint, 5, type: :string, json_name: "publicEndpoint", deprecated: false
  field :private_endpoint, 6, type: :string, json_name: "privateEndpoint", deprecated: false
  field :private_endpoint_subnetwork, 7, type: :string, json_name: "privateEndpointSubnetwork"
end

defmodule Google.Container.V1beta1.ControlPlaneEndpointsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dns_endpoint_config, 1,
    type: Google.Container.V1beta1.ControlPlaneEndpointsConfig.DNSEndpointConfig,
    json_name: "dnsEndpointConfig"

  field :ip_endpoints_config, 3,
    type: Google.Container.V1beta1.ControlPlaneEndpointsConfig.IPEndpointsConfig,
    json_name: "ipEndpointsConfig"
end

defmodule Google.Container.V1beta1.ResourceManagerTags.TagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Container.V1beta1.ResourceManagerTags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tags, 1,
    repeated: true,
    type: Google.Container.V1beta1.ResourceManagerTags.TagsEntry,
    map: true
end

defmodule Google.Container.V1beta1.EnterpriseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cluster_tier, 1,
    type: Google.Container.V1beta1.EnterpriseConfig.ClusterTier,
    json_name: "clusterTier",
    enum: true,
    deprecated: false

  field :desired_tier, 2,
    type: Google.Container.V1beta1.EnterpriseConfig.ClusterTier,
    json_name: "desiredTier",
    enum: true
end

defmodule Google.Container.V1beta1.SecretManagerConfig.RotationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, proto3_optional: true, type: :bool

  field :rotation_interval, 2,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "rotationInterval"
end

defmodule Google.Container.V1beta1.SecretManagerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, proto3_optional: true, type: :bool

  field :rotation_config, 2,
    proto3_optional: true,
    type: Google.Container.V1beta1.SecretManagerConfig.RotationConfig,
    json_name: "rotationConfig"
end

defmodule Google.Container.V1beta1.BootDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :disk_type, 1, type: :string, json_name: "diskType"
  field :size_gb, 2, type: :int64, json_name: "sizeGb"
  field :provisioned_iops, 3, type: :int64, json_name: "provisionedIops"
  field :provisioned_throughput, 4, type: :int64, json_name: "provisionedThroughput"
end

defmodule Google.Container.V1beta1.SecondaryBootDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mode, 1, type: Google.Container.V1beta1.SecondaryBootDisk.Mode, enum: true
  field :disk_image, 2, type: :string, json_name: "diskImage"
end

defmodule Google.Container.V1beta1.SecondaryBootDiskUpdateStrategy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Container.V1beta1.FetchClusterUpgradeInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version, 100, type: :string
end

defmodule Google.Container.V1beta1.ClusterUpgradeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :minor_target_version, 7,
    proto3_optional: true,
    type: :string,
    json_name: "minorTargetVersion"

  field :patch_target_version, 8,
    proto3_optional: true,
    type: :string,
    json_name: "patchTargetVersion"

  field :auto_upgrade_status, 2,
    repeated: true,
    type: Google.Container.V1beta1.ClusterUpgradeInfo.AutoUpgradeStatus,
    json_name: "autoUpgradeStatus",
    enum: true

  field :paused_reason, 3,
    repeated: true,
    type: Google.Container.V1beta1.ClusterUpgradeInfo.AutoUpgradePausedReason,
    json_name: "pausedReason",
    enum: true

  field :upgrade_details, 4,
    repeated: true,
    type: Google.Container.V1beta1.UpgradeDetails,
    json_name: "upgradeDetails"

  field :end_of_standard_support_timestamp, 5,
    proto3_optional: true,
    type: :string,
    json_name: "endOfStandardSupportTimestamp"

  field :end_of_extended_support_timestamp, 6,
    proto3_optional: true,
    type: :string,
    json_name: "endOfExtendedSupportTimestamp"
end

defmodule Google.Container.V1beta1.UpgradeDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :state, 1,
    type: Google.Container.V1beta1.UpgradeDetails.State,
    enum: true,
    deprecated: false

  field :start_time, 2,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "startTime"

  field :end_time, 3, proto3_optional: true, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :initial_version, 4, type: :string, json_name: "initialVersion"
  field :target_version, 5, type: :string, json_name: "targetVersion"

  field :start_type, 6,
    type: Google.Container.V1beta1.UpgradeDetails.StartType,
    json_name: "startType",
    enum: true
end

defmodule Google.Container.V1beta1.FetchNodePoolUpgradeInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version, 100, type: :string
end

defmodule Google.Container.V1beta1.NodePoolUpgradeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :minor_target_version, 1,
    proto3_optional: true,
    type: :string,
    json_name: "minorTargetVersion"

  field :patch_target_version, 2,
    proto3_optional: true,
    type: :string,
    json_name: "patchTargetVersion"

  field :auto_upgrade_status, 3,
    repeated: true,
    type: Google.Container.V1beta1.NodePoolUpgradeInfo.AutoUpgradeStatus,
    json_name: "autoUpgradeStatus",
    enum: true

  field :paused_reason, 4,
    repeated: true,
    type: Google.Container.V1beta1.NodePoolUpgradeInfo.AutoUpgradePausedReason,
    json_name: "pausedReason",
    enum: true

  field :upgrade_details, 5,
    repeated: true,
    type: Google.Container.V1beta1.UpgradeDetails,
    json_name: "upgradeDetails"

  field :end_of_standard_support_timestamp, 6,
    proto3_optional: true,
    type: :string,
    json_name: "endOfStandardSupportTimestamp"

  field :end_of_extended_support_timestamp, 7,
    proto3_optional: true,
    type: :string,
    json_name: "endOfExtendedSupportTimestamp"
end

defmodule Google.Container.V1beta1.GkeAutoUpgradeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :patch_mode, 1,
    type: Google.Container.V1beta1.GkeAutoUpgradeConfig.PatchMode,
    json_name: "patchMode",
    enum: true
end

defmodule Google.Container.V1beta1.ClusterManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.container.v1beta1.ClusterManager",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListClusters,
      Google.Container.V1beta1.ListClustersRequest,
      Google.Container.V1beta1.ListClustersResponse

  rpc :GetCluster, Google.Container.V1beta1.GetClusterRequest, Google.Container.V1beta1.Cluster

  rpc :CreateCluster,
      Google.Container.V1beta1.CreateClusterRequest,
      Google.Container.V1beta1.Operation

  rpc :UpdateCluster,
      Google.Container.V1beta1.UpdateClusterRequest,
      Google.Container.V1beta1.Operation

  rpc :UpdateNodePool,
      Google.Container.V1beta1.UpdateNodePoolRequest,
      Google.Container.V1beta1.Operation

  rpc :SetNodePoolAutoscaling,
      Google.Container.V1beta1.SetNodePoolAutoscalingRequest,
      Google.Container.V1beta1.Operation

  rpc :SetLoggingService,
      Google.Container.V1beta1.SetLoggingServiceRequest,
      Google.Container.V1beta1.Operation

  rpc :SetMonitoringService,
      Google.Container.V1beta1.SetMonitoringServiceRequest,
      Google.Container.V1beta1.Operation

  rpc :SetAddonsConfig,
      Google.Container.V1beta1.SetAddonsConfigRequest,
      Google.Container.V1beta1.Operation

  rpc :SetLocations,
      Google.Container.V1beta1.SetLocationsRequest,
      Google.Container.V1beta1.Operation

  rpc :UpdateMaster,
      Google.Container.V1beta1.UpdateMasterRequest,
      Google.Container.V1beta1.Operation

  rpc :SetMasterAuth,
      Google.Container.V1beta1.SetMasterAuthRequest,
      Google.Container.V1beta1.Operation

  rpc :DeleteCluster,
      Google.Container.V1beta1.DeleteClusterRequest,
      Google.Container.V1beta1.Operation

  rpc :ListOperations,
      Google.Container.V1beta1.ListOperationsRequest,
      Google.Container.V1beta1.ListOperationsResponse

  rpc :GetOperation,
      Google.Container.V1beta1.GetOperationRequest,
      Google.Container.V1beta1.Operation

  rpc :CancelOperation, Google.Container.V1beta1.CancelOperationRequest, Google.Protobuf.Empty

  rpc :GetServerConfig,
      Google.Container.V1beta1.GetServerConfigRequest,
      Google.Container.V1beta1.ServerConfig

  rpc :GetJSONWebKeys,
      Google.Container.V1beta1.GetJSONWebKeysRequest,
      Google.Container.V1beta1.GetJSONWebKeysResponse

  rpc :ListNodePools,
      Google.Container.V1beta1.ListNodePoolsRequest,
      Google.Container.V1beta1.ListNodePoolsResponse

  rpc :GetNodePool, Google.Container.V1beta1.GetNodePoolRequest, Google.Container.V1beta1.NodePool

  rpc :CreateNodePool,
      Google.Container.V1beta1.CreateNodePoolRequest,
      Google.Container.V1beta1.Operation

  rpc :DeleteNodePool,
      Google.Container.V1beta1.DeleteNodePoolRequest,
      Google.Container.V1beta1.Operation

  rpc :CompleteNodePoolUpgrade,
      Google.Container.V1beta1.CompleteNodePoolUpgradeRequest,
      Google.Protobuf.Empty

  rpc :RollbackNodePoolUpgrade,
      Google.Container.V1beta1.RollbackNodePoolUpgradeRequest,
      Google.Container.V1beta1.Operation

  rpc :SetNodePoolManagement,
      Google.Container.V1beta1.SetNodePoolManagementRequest,
      Google.Container.V1beta1.Operation

  rpc :SetLabels, Google.Container.V1beta1.SetLabelsRequest, Google.Container.V1beta1.Operation

  rpc :SetLegacyAbac,
      Google.Container.V1beta1.SetLegacyAbacRequest,
      Google.Container.V1beta1.Operation

  rpc :StartIPRotation,
      Google.Container.V1beta1.StartIPRotationRequest,
      Google.Container.V1beta1.Operation

  rpc :CompleteIPRotation,
      Google.Container.V1beta1.CompleteIPRotationRequest,
      Google.Container.V1beta1.Operation

  rpc :SetNodePoolSize,
      Google.Container.V1beta1.SetNodePoolSizeRequest,
      Google.Container.V1beta1.Operation

  rpc :SetNetworkPolicy,
      Google.Container.V1beta1.SetNetworkPolicyRequest,
      Google.Container.V1beta1.Operation

  rpc :SetMaintenancePolicy,
      Google.Container.V1beta1.SetMaintenancePolicyRequest,
      Google.Container.V1beta1.Operation

  rpc :ListUsableSubnetworks,
      Google.Container.V1beta1.ListUsableSubnetworksRequest,
      Google.Container.V1beta1.ListUsableSubnetworksResponse

  rpc :CheckAutopilotCompatibility,
      Google.Container.V1beta1.CheckAutopilotCompatibilityRequest,
      Google.Container.V1beta1.CheckAutopilotCompatibilityResponse

  rpc :ListLocations,
      Google.Container.V1beta1.ListLocationsRequest,
      Google.Container.V1beta1.ListLocationsResponse

  rpc :FetchClusterUpgradeInfo,
      Google.Container.V1beta1.FetchClusterUpgradeInfoRequest,
      Google.Container.V1beta1.ClusterUpgradeInfo

  rpc :FetchNodePoolUpgradeInfo,
      Google.Container.V1beta1.FetchNodePoolUpgradeInfoRequest,
      Google.Container.V1beta1.NodePoolUpgradeInfo
end

defmodule Google.Container.V1beta1.ClusterManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Container.V1beta1.ClusterManager.Service
end
