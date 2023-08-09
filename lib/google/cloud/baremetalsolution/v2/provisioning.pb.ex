defmodule Google.Cloud.Baremetalsolution.V2.ProvisioningConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :SUBMITTED, 2
  field :PROVISIONING, 3
  field :PROVISIONED, 4
  field :VALIDATED, 5
  field :CANCELLED, 6
  field :FAILED, 7
end

defmodule Google.Cloud.Baremetalsolution.V2.ProvisioningQuota.AssetType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ASSET_TYPE_UNSPECIFIED, 0
  field :ASSET_TYPE_SERVER, 1
  field :ASSET_TYPE_STORAGE, 2
  field :ASSET_TYPE_NETWORK, 3
end

defmodule Google.Cloud.Baremetalsolution.V2.InstanceConfig.NetworkConfig do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NETWORKCONFIG_UNSPECIFIED, 0
  field :SINGLE_VLAN, 1
  field :MULTI_VLAN, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.VolumeConfig.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :FLASH, 1
  field :DISK, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.VolumeConfig.Protocol do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PROTOCOL_UNSPECIFIED, 0
  field :PROTOCOL_FC, 1
  field :PROTOCOL_NFS, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.VolumeConfig.NfsExport.Permissions do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PERMISSIONS_UNSPECIFIED, 0
  field :READ_ONLY, 1
  field :READ_WRITE, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.NetworkConfig.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :CLIENT, 1
  field :PRIVATE, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.NetworkConfig.Bandwidth do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :BANDWIDTH_UNSPECIFIED, 0
  field :BW_1_GBPS, 1
  field :BW_2_GBPS, 2
  field :BW_5_GBPS, 3
  field :BW_10_GBPS, 4
end

defmodule Google.Cloud.Baremetalsolution.V2.NetworkConfig.ServiceCidr do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SERVICE_CIDR_UNSPECIFIED, 0
  field :DISABLED, 1
  field :HIGH_26, 2
  field :HIGH_27, 3
  field :HIGH_28, 4
end

defmodule Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate.LogicalInterface.InterfaceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :INTERFACE_TYPE_UNSPECIFIED, 0
  field :BOND, 1
  field :NIC, 2
end

defmodule Google.Cloud.Baremetalsolution.V2.ProvisioningConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :instances, 2, repeated: true, type: Google.Cloud.Baremetalsolution.V2.InstanceConfig
  field :networks, 3, repeated: true, type: Google.Cloud.Baremetalsolution.V2.NetworkConfig
  field :volumes, 4, repeated: true, type: Google.Cloud.Baremetalsolution.V2.VolumeConfig
  field :ticket_id, 5, type: :string, json_name: "ticketId"
  field :handover_service_account, 6, type: :string, json_name: "handoverServiceAccount"
  field :email, 7, type: :string, deprecated: true

  field :state, 8,
    type: Google.Cloud.Baremetalsolution.V2.ProvisioningConfig.State,
    enum: true,
    deprecated: false

  field :location, 9, type: :string, deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :cloud_console_uri, 11, type: :string, json_name: "cloudConsoleUri", deprecated: false
  field :vpc_sc_enabled, 12, type: :bool, json_name: "vpcScEnabled"
  field :status_message, 13, type: :string, json_name: "statusMessage"
  field :custom_id, 14, type: :string, json_name: "customId", deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.SubmitProvisioningConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :provisioning_config, 2,
    type: Google.Cloud.Baremetalsolution.V2.ProvisioningConfig,
    json_name: "provisioningConfig",
    deprecated: false

  field :email, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.SubmitProvisioningConfigResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :provisioning_config, 1,
    type: Google.Cloud.Baremetalsolution.V2.ProvisioningConfig,
    json_name: "provisioningConfig"
end

defmodule Google.Cloud.Baremetalsolution.V2.ProvisioningQuota do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :quota, 0

  oneof :availability, 1

  field :name, 1, type: :string, deprecated: false

  field :asset_type, 2,
    type: Google.Cloud.Baremetalsolution.V2.ProvisioningQuota.AssetType,
    json_name: "assetType",
    enum: true

  field :gcp_service, 3, type: :string, json_name: "gcpService"
  field :location, 4, type: :string
  field :available_count, 5, type: :int32, json_name: "availableCount"

  field :instance_quota, 6,
    type: Google.Cloud.Baremetalsolution.V2.InstanceQuota,
    json_name: "instanceQuota",
    oneof: 0

  field :server_count, 7, type: :int64, json_name: "serverCount", oneof: 1
  field :network_bandwidth, 8, type: :int64, json_name: "networkBandwidth", oneof: 1
  field :storage_gib, 9, type: :int64, json_name: "storageGib", oneof: 1
end

defmodule Google.Cloud.Baremetalsolution.V2.ListProvisioningQuotasRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Baremetalsolution.V2.ListProvisioningQuotasResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :provisioning_quotas, 1,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.ProvisioningQuota,
    json_name: "provisioningQuotas"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Baremetalsolution.V2.InstanceConfig.NetworkAddress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :network_id, 1, type: :string, json_name: "networkId"
  field :address, 2, type: :string
  field :existing_network_id, 3, type: :string, json_name: "existingNetworkId"
end

defmodule Google.Cloud.Baremetalsolution.V2.InstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string
  field :instance_type, 3, type: :string, json_name: "instanceType"
  field :hyperthreading, 4, type: :bool
  field :os_image, 5, type: :string, json_name: "osImage"

  field :client_network, 6,
    type: Google.Cloud.Baremetalsolution.V2.InstanceConfig.NetworkAddress,
    json_name: "clientNetwork",
    deprecated: true

  field :private_network, 7,
    type: Google.Cloud.Baremetalsolution.V2.InstanceConfig.NetworkAddress,
    json_name: "privateNetwork",
    deprecated: true

  field :user_note, 8, type: :string, json_name: "userNote"
  field :account_networks_enabled, 9, type: :bool, json_name: "accountNetworksEnabled"

  field :network_config, 10,
    type: Google.Cloud.Baremetalsolution.V2.InstanceConfig.NetworkConfig,
    json_name: "networkConfig",
    enum: true

  field :network_template, 11, type: :string, json_name: "networkTemplate"

  field :logical_interfaces, 12,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.LogicalInterface,
    json_name: "logicalInterfaces"

  field :ssh_key_names, 13, repeated: true, type: :string, json_name: "sshKeyNames"
end

defmodule Google.Cloud.Baremetalsolution.V2.VolumeConfig.LunRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :quantity, 1, type: :int32
  field :size_gb, 2, type: :int32, json_name: "sizeGb"
end

defmodule Google.Cloud.Baremetalsolution.V2.VolumeConfig.NfsExport do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :client, 0

  field :network_id, 1, type: :string, json_name: "networkId"
  field :machine_id, 2, type: :string, json_name: "machineId", oneof: 0
  field :cidr, 3, type: :string, oneof: 0

  field :permissions, 4,
    type: Google.Cloud.Baremetalsolution.V2.VolumeConfig.NfsExport.Permissions,
    enum: true

  field :no_root_squash, 5, type: :bool, json_name: "noRootSquash"
  field :allow_suid, 6, type: :bool, json_name: "allowSuid"
  field :allow_dev, 7, type: :bool, json_name: "allowDev"
end

defmodule Google.Cloud.Baremetalsolution.V2.VolumeConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string
  field :snapshots_enabled, 3, type: :bool, json_name: "snapshotsEnabled"
  field :type, 4, type: Google.Cloud.Baremetalsolution.V2.VolumeConfig.Type, enum: true
  field :protocol, 5, type: Google.Cloud.Baremetalsolution.V2.VolumeConfig.Protocol, enum: true
  field :size_gb, 6, type: :int32, json_name: "sizeGb"

  field :lun_ranges, 7,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.VolumeConfig.LunRange,
    json_name: "lunRanges"

  field :machine_ids, 8, repeated: true, type: :string, json_name: "machineIds"

  field :nfs_exports, 9,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.VolumeConfig.NfsExport,
    json_name: "nfsExports"

  field :user_note, 10, type: :string, json_name: "userNote"
  field :gcp_service, 11, type: :string, json_name: "gcpService"

  field :performance_tier, 12,
    type: Google.Cloud.Baremetalsolution.V2.VolumePerformanceTier,
    json_name: "performanceTier",
    enum: true
end

defmodule Google.Cloud.Baremetalsolution.V2.NetworkConfig.IntakeVlanAttachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :pairing_key, 2, type: :string, json_name: "pairingKey"
end

defmodule Google.Cloud.Baremetalsolution.V2.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :id, 2, type: :string
  field :type, 3, type: Google.Cloud.Baremetalsolution.V2.NetworkConfig.Type, enum: true
  field :bandwidth, 4, type: Google.Cloud.Baremetalsolution.V2.NetworkConfig.Bandwidth, enum: true

  field :vlan_attachments, 5,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.NetworkConfig.IntakeVlanAttachment,
    json_name: "vlanAttachments"

  field :cidr, 6, type: :string

  field :service_cidr, 7,
    type: Google.Cloud.Baremetalsolution.V2.NetworkConfig.ServiceCidr,
    json_name: "serviceCidr",
    enum: true

  field :user_note, 8, type: :string, json_name: "userNote"
  field :gcp_service, 9, type: :string, json_name: "gcpService"
  field :vlan_same_project, 10, type: :bool, json_name: "vlanSameProject"
  field :jumbo_frames_enabled, 11, type: :bool, json_name: "jumboFramesEnabled"
end

defmodule Google.Cloud.Baremetalsolution.V2.InstanceQuota do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :instance_type, 2, type: :string, json_name: "instanceType", deprecated: true
  field :gcp_service, 5, type: :string, json_name: "gcpService"
  field :location, 3, type: :string
  field :available_machine_count, 4, type: :int32, json_name: "availableMachineCount"
end

defmodule Google.Cloud.Baremetalsolution.V2.GetProvisioningConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.CreateProvisioningConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :provisioning_config, 2,
    type: Google.Cloud.Baremetalsolution.V2.ProvisioningConfig,
    json_name: "provisioningConfig",
    deprecated: false

  field :email, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.UpdateProvisioningConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :provisioning_config, 1,
    type: Google.Cloud.Baremetalsolution.V2.ProvisioningConfig,
    json_name: "provisioningConfig",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :email, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate.LogicalInterface do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate.LogicalInterface.InterfaceType,
    enum: true

  field :required, 3, type: :bool
end

defmodule Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :applicable_instance_types, 2,
    repeated: true,
    type: :string,
    json_name: "applicableInstanceTypes"

  field :logical_interfaces, 3,
    repeated: true,
    type: Google.Cloud.Baremetalsolution.V2.ServerNetworkTemplate.LogicalInterface,
    json_name: "logicalInterfaces"
end