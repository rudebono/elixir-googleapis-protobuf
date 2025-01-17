defmodule Google.Cloud.Backupdr.V1.KeyRevocationActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :STOP, 2
end

defmodule Google.Cloud.Backupdr.V1.ComputeInstanceRestoreProperties.InstancePrivateIpv6GoogleAccess do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :INSTANCE_PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED, 0
  field :INHERIT_FROM_SUBNETWORK, 1
  field :ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE, 2
  field :ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE, 3
end

defmodule Google.Cloud.Backupdr.V1.NetworkInterface.StackType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :STACK_TYPE_UNSPECIFIED, 0
  field :IPV4_ONLY, 1
  field :IPV4_IPV6, 2
end

defmodule Google.Cloud.Backupdr.V1.NetworkInterface.Ipv6AccessType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :UNSPECIFIED_IPV6_ACCESS_TYPE, 0
  field :INTERNAL, 1
  field :EXTERNAL, 2
end

defmodule Google.Cloud.Backupdr.V1.NetworkInterface.NicType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :NIC_TYPE_UNSPECIFIED, 0
  field :VIRTIO_NET, 1
  field :GVNIC, 2
end

defmodule Google.Cloud.Backupdr.V1.NetworkPerformanceConfig.Tier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :DEFAULT, 1
  field :TIER_1, 2
end

defmodule Google.Cloud.Backupdr.V1.AccessConfig.AccessType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ACCESS_TYPE_UNSPECIFIED, 0
  field :ONE_TO_ONE_NAT, 1
  field :DIRECT_IPV6, 2
end

defmodule Google.Cloud.Backupdr.V1.AccessConfig.NetworkTier do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :NETWORK_TIER_UNSPECIFIED, 0
  field :PREMIUM, 1
  field :STANDARD, 2
end

defmodule Google.Cloud.Backupdr.V1.AllocationAffinity.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :NO_RESERVATION, 1
  field :ANY_RESERVATION, 2
  field :SPECIFIC_RESERVATION, 3
end

defmodule Google.Cloud.Backupdr.V1.Scheduling.OnHostMaintenance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ON_HOST_MAINTENANCE_UNSPECIFIED, 0
  field :TERMINATE, 1
  field :MIGRATE, 1000
end

defmodule Google.Cloud.Backupdr.V1.Scheduling.ProvisioningModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PROVISIONING_MODEL_UNSPECIFIED, 0
  field :STANDARD, 1
  field :SPOT, 2
end

defmodule Google.Cloud.Backupdr.V1.Scheduling.InstanceTerminationAction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :INSTANCE_TERMINATION_ACTION_UNSPECIFIED, 0
  field :DELETE, 1
  field :STOP, 2
end

defmodule Google.Cloud.Backupdr.V1.Scheduling.NodeAffinity.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OPERATOR_UNSPECIFIED, 0
  field :IN, 1
  field :NOT_IN, 2
end

defmodule Google.Cloud.Backupdr.V1.AttachedDisk.DiskType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DISK_TYPE_UNSPECIFIED, 0
  field :SCRATCH, 1
  field :PERSISTENT, 2
end

defmodule Google.Cloud.Backupdr.V1.AttachedDisk.DiskMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DISK_MODE_UNSPECIFIED, 0
  field :READ_WRITE, 1
  field :READ_ONLY, 2
  field :LOCKED, 3
end

defmodule Google.Cloud.Backupdr.V1.AttachedDisk.DiskInterface do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DISK_INTERFACE_UNSPECIFIED, 0
  field :SCSI, 1
  field :NVME, 2
  field :NVDIMM, 3
  field :ISCSI, 4
end

defmodule Google.Cloud.Backupdr.V1.AttachedDisk.DiskSavedState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :DISK_SAVED_STATE_UNSPECIFIED, 0
  field :PRESERVED, 1
end

defmodule Google.Cloud.Backupdr.V1.GuestOsFeature.FeatureType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :FEATURE_TYPE_UNSPECIFIED, 0
  field :VIRTIO_SCSI_MULTIQUEUE, 1
  field :WINDOWS, 2
  field :MULTI_IP_SUBNET, 3
  field :UEFI_COMPATIBLE, 4
  field :SECURE_BOOT, 5
  field :GVNIC, 6
  field :SEV_CAPABLE, 7
  field :BARE_METAL_LINUX_COMPATIBLE, 8
  field :SUSPEND_RESUME_COMPATIBLE, 9
  field :SEV_LIVE_MIGRATABLE, 10
  field :SEV_SNP_CAPABLE, 11
  field :TDX_CAPABLE, 12
  field :IDPF, 13
  field :SEV_LIVE_MIGRATABLE_V2, 14
end

defmodule Google.Cloud.Backupdr.V1.ComputeInstanceBackupProperties.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.ComputeInstanceBackupProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :description, 1, proto3_optional: true, type: :string
  field :tags, 2, proto3_optional: true, type: Google.Cloud.Backupdr.V1.Tags
  field :machine_type, 3, proto3_optional: true, type: :string, json_name: "machineType"
  field :can_ip_forward, 4, proto3_optional: true, type: :bool, json_name: "canIpForward"

  field :network_interface, 5,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.NetworkInterface,
    json_name: "networkInterface"

  field :disk, 6, repeated: true, type: Google.Cloud.Backupdr.V1.AttachedDisk
  field :metadata, 7, proto3_optional: true, type: Google.Cloud.Backupdr.V1.Metadata

  field :service_account, 8,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.ServiceAccount,
    json_name: "serviceAccount"

  field :scheduling, 9, proto3_optional: true, type: Google.Cloud.Backupdr.V1.Scheduling

  field :guest_accelerator, 10,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.AcceleratorConfig,
    json_name: "guestAccelerator"

  field :min_cpu_platform, 11, proto3_optional: true, type: :string, json_name: "minCpuPlatform"

  field :key_revocation_action_type, 12,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.KeyRevocationActionType,
    json_name: "keyRevocationActionType",
    enum: true

  field :source_instance, 13, proto3_optional: true, type: :string, json_name: "sourceInstance"

  field :labels, 14,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.ComputeInstanceBackupProperties.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Backupdr.V1.ComputeInstanceRestoreProperties.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.ComputeInstanceRestoreProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, proto3_optional: true, type: :string, deprecated: false

  field :advanced_machine_features, 2,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AdvancedMachineFeatures,
    json_name: "advancedMachineFeatures",
    deprecated: false

  field :can_ip_forward, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "canIpForward",
    deprecated: false

  field :confidential_instance_config, 4,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.ConfidentialInstanceConfig,
    json_name: "confidentialInstanceConfig",
    deprecated: false

  field :deletion_protection, 5,
    proto3_optional: true,
    type: :bool,
    json_name: "deletionProtection",
    deprecated: false

  field :description, 6, proto3_optional: true, type: :string, deprecated: false
  field :disks, 7, repeated: true, type: Google.Cloud.Backupdr.V1.AttachedDisk, deprecated: false

  field :display_device, 8,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.DisplayDevice,
    json_name: "displayDevice",
    deprecated: false

  field :guest_accelerators, 9,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.AcceleratorConfig,
    json_name: "guestAccelerators",
    deprecated: false

  field :hostname, 10, proto3_optional: true, type: :string, deprecated: false

  field :instance_encryption_key, 11,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.CustomerEncryptionKey,
    json_name: "instanceEncryptionKey",
    deprecated: false

  field :key_revocation_action_type, 12,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.KeyRevocationActionType,
    json_name: "keyRevocationActionType",
    enum: true,
    deprecated: false

  field :labels, 13,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.ComputeInstanceRestoreProperties.LabelsEntry,
    map: true,
    deprecated: false

  field :machine_type, 14,
    proto3_optional: true,
    type: :string,
    json_name: "machineType",
    deprecated: false

  field :metadata, 15,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.Metadata,
    deprecated: false

  field :min_cpu_platform, 16,
    proto3_optional: true,
    type: :string,
    json_name: "minCpuPlatform",
    deprecated: false

  field :network_interfaces, 17,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.NetworkInterface,
    json_name: "networkInterfaces",
    deprecated: false

  field :network_performance_config, 18,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.NetworkPerformanceConfig,
    json_name: "networkPerformanceConfig",
    deprecated: false

  field :params, 19,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.InstanceParams,
    deprecated: false

  field :private_ipv6_google_access, 20,
    proto3_optional: true,
    type:
      Google.Cloud.Backupdr.V1.ComputeInstanceRestoreProperties.InstancePrivateIpv6GoogleAccess,
    json_name: "privateIpv6GoogleAccess",
    enum: true,
    deprecated: false

  field :allocation_affinity, 21,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AllocationAffinity,
    json_name: "allocationAffinity",
    deprecated: false

  field :resource_policies, 22,
    repeated: true,
    type: :string,
    json_name: "resourcePolicies",
    deprecated: false

  field :scheduling, 23,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.Scheduling,
    deprecated: false

  field :service_accounts, 24,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.ServiceAccount,
    json_name: "serviceAccounts",
    deprecated: false

  field :tags, 26, proto3_optional: true, type: Google.Cloud.Backupdr.V1.Tags, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ComputeInstanceTargetEnvironment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project, 1, type: :string, deprecated: false
  field :zone, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ComputeInstanceDataSourceProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :machine_type, 3, type: :string, json_name: "machineType"
  field :total_disk_count, 4, type: :int64, json_name: "totalDiskCount"
  field :total_disk_size_gb, 5, type: :int64, json_name: "totalDiskSizeGb"
end

defmodule Google.Cloud.Backupdr.V1.AdvancedMachineFeatures do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enable_nested_virtualization, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "enableNestedVirtualization",
    deprecated: false

  field :threads_per_core, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "threadsPerCore",
    deprecated: false

  field :visible_core_count, 3,
    proto3_optional: true,
    type: :int32,
    json_name: "visibleCoreCount",
    deprecated: false

  field :enable_uefi_networking, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "enableUefiNetworking",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ConfidentialInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enable_confidential_compute, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "enableConfidentialCompute",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DisplayDevice do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :enable_display, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "enableDisplay",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.AcceleratorConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :accelerator_type, 1,
    proto3_optional: true,
    type: :string,
    json_name: "acceleratorType",
    deprecated: false

  field :accelerator_count, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "acceleratorCount",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.CustomerEncryptionKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :key, 0

  field :raw_key, 1, type: :string, json_name: "rawKey", oneof: 0, deprecated: false

  field :rsa_encrypted_key, 2,
    type: :string,
    json_name: "rsaEncryptedKey",
    oneof: 0,
    deprecated: false

  field :kms_key_name, 3, type: :string, json_name: "kmsKeyName", oneof: 0, deprecated: false

  field :kms_key_service_account, 4,
    proto3_optional: true,
    type: :string,
    json_name: "kmsKeyServiceAccount",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.Entry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, proto3_optional: true, type: :string, deprecated: false
  field :value, 2, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.Metadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :items, 1, repeated: true, type: Google.Cloud.Backupdr.V1.Entry, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.NetworkInterface do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :network, 1, proto3_optional: true, type: :string, deprecated: false
  field :subnetwork, 2, proto3_optional: true, type: :string, deprecated: false

  field :ip_address, 3,
    proto3_optional: true,
    type: :string,
    json_name: "ipAddress",
    deprecated: false

  field :ipv6_address, 4,
    proto3_optional: true,
    type: :string,
    json_name: "ipv6Address",
    deprecated: false

  field :internal_ipv6_prefix_length, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "internalIpv6PrefixLength",
    deprecated: false

  field :name, 6, proto3_optional: true, type: :string, deprecated: false

  field :access_configs, 7,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.AccessConfig,
    json_name: "accessConfigs",
    deprecated: false

  field :ipv6_access_configs, 8,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.AccessConfig,
    json_name: "ipv6AccessConfigs",
    deprecated: false

  field :alias_ip_ranges, 9,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.AliasIpRange,
    json_name: "aliasIpRanges",
    deprecated: false

  field :stack_type, 10,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.NetworkInterface.StackType,
    json_name: "stackType",
    enum: true

  field :ipv6_access_type, 11,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.NetworkInterface.Ipv6AccessType,
    json_name: "ipv6AccessType",
    enum: true,
    deprecated: false

  field :queue_count, 12,
    proto3_optional: true,
    type: :int32,
    json_name: "queueCount",
    deprecated: false

  field :nic_type, 13,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.NetworkInterface.NicType,
    json_name: "nicType",
    enum: true,
    deprecated: false

  field :network_attachment, 14,
    proto3_optional: true,
    type: :string,
    json_name: "networkAttachment",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.NetworkPerformanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :total_egress_bandwidth_tier, 1,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.NetworkPerformanceConfig.Tier,
    json_name: "totalEgressBandwidthTier",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.AccessConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 1,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AccessConfig.AccessType,
    enum: true,
    deprecated: false

  field :name, 2, proto3_optional: true, type: :string, deprecated: false

  field :external_ip, 3,
    proto3_optional: true,
    type: :string,
    json_name: "externalIp",
    deprecated: false

  field :external_ipv6, 4,
    proto3_optional: true,
    type: :string,
    json_name: "externalIpv6",
    deprecated: false

  field :external_ipv6_prefix_length, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "externalIpv6PrefixLength",
    deprecated: false

  field :set_public_ptr, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "setPublicPtr",
    deprecated: false

  field :public_ptr_domain_name, 7,
    proto3_optional: true,
    type: :string,
    json_name: "publicPtrDomainName",
    deprecated: false

  field :network_tier, 8,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AccessConfig.NetworkTier,
    json_name: "networkTier",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.AliasIpRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ip_cidr_range, 1,
    proto3_optional: true,
    type: :string,
    json_name: "ipCidrRange",
    deprecated: false

  field :subnetwork_range_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "subnetworkRangeName",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.InstanceParams.ResourceManagerTagsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.InstanceParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_manager_tags, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.InstanceParams.ResourceManagerTagsEntry,
    json_name: "resourceManagerTags",
    map: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.AllocationAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :consume_allocation_type, 1,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AllocationAffinity.Type,
    json_name: "consumeAllocationType",
    enum: true,
    deprecated: false

  field :key, 2, proto3_optional: true, type: :string, deprecated: false
  field :values, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.Scheduling.NodeAffinity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, proto3_optional: true, type: :string, deprecated: false

  field :operator, 2,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.Scheduling.NodeAffinity.Operator,
    enum: true,
    deprecated: false

  field :values, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.Scheduling do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :on_host_maintenance, 1,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.Scheduling.OnHostMaintenance,
    json_name: "onHostMaintenance",
    enum: true,
    deprecated: false

  field :automatic_restart, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "automaticRestart",
    deprecated: false

  field :preemptible, 3, proto3_optional: true, type: :bool, deprecated: false

  field :node_affinities, 4,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.Scheduling.NodeAffinity,
    json_name: "nodeAffinities",
    deprecated: false

  field :min_node_cpus, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "minNodeCpus",
    deprecated: false

  field :provisioning_model, 6,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.Scheduling.ProvisioningModel,
    json_name: "provisioningModel",
    enum: true,
    deprecated: false

  field :instance_termination_action, 7,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.Scheduling.InstanceTerminationAction,
    json_name: "instanceTerminationAction",
    enum: true,
    deprecated: false

  field :local_ssd_recovery_timeout, 10,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.SchedulingDuration,
    json_name: "localSsdRecoveryTimeout",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.SchedulingDuration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :seconds, 1, proto3_optional: true, type: :int64, deprecated: false
  field :nanos, 2, proto3_optional: true, type: :int32, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :email, 1, proto3_optional: true, type: :string, deprecated: false
  field :scopes, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.Tags do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :items, 1, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.AttachedDisk.InitializeParams do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :disk_name, 1,
    proto3_optional: true,
    type: :string,
    json_name: "diskName",
    deprecated: false

  field :replica_zones, 2,
    repeated: true,
    type: :string,
    json_name: "replicaZones",
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.AttachedDisk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :initialize_params, 1,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AttachedDisk.InitializeParams,
    json_name: "initializeParams",
    deprecated: false

  field :device_name, 4,
    proto3_optional: true,
    type: :string,
    json_name: "deviceName",
    deprecated: false

  field :kind, 5, proto3_optional: true, type: :string, deprecated: false

  field :disk_type_deprecated, 6,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AttachedDisk.DiskType,
    json_name: "diskTypeDeprecated",
    enum: true,
    deprecated: true

  field :mode, 7,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AttachedDisk.DiskMode,
    enum: true,
    deprecated: false

  field :source, 8, proto3_optional: true, type: :string, deprecated: false
  field :index, 9, proto3_optional: true, type: :int64, deprecated: false
  field :boot, 10, proto3_optional: true, type: :bool, deprecated: false

  field :auto_delete, 11,
    proto3_optional: true,
    type: :bool,
    json_name: "autoDelete",
    deprecated: false

  field :license, 12, repeated: true, type: :string, deprecated: false

  field :disk_interface, 13,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AttachedDisk.DiskInterface,
    json_name: "diskInterface",
    enum: true,
    deprecated: false

  field :guest_os_feature, 14,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.GuestOsFeature,
    json_name: "guestOsFeature",
    deprecated: false

  field :disk_encryption_key, 15,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.CustomerEncryptionKey,
    json_name: "diskEncryptionKey",
    deprecated: false

  field :disk_size_gb, 16,
    proto3_optional: true,
    type: :int64,
    json_name: "diskSizeGb",
    deprecated: false

  field :saved_state, 17,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AttachedDisk.DiskSavedState,
    json_name: "savedState",
    enum: true,
    deprecated: false

  field :disk_type, 18,
    proto3_optional: true,
    type: :string,
    json_name: "diskType",
    deprecated: false

  field :type, 19,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.AttachedDisk.DiskType,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.GuestOsFeature do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 1,
    proto3_optional: true,
    type: Google.Cloud.Backupdr.V1.GuestOsFeature.FeatureType,
    enum: true
end
