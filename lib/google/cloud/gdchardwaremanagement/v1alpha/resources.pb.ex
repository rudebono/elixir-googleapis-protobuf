defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.PowerSupply do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :POWER_SUPPLY_UNSPECIFIED, 0
  field :POWER_SUPPLY_AC, 1
  field :POWER_SUPPLY_DC, 2
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Entity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ENTITY_UNSPECIFIED, 0
  field :GOOGLE, 1
  field :CUSTOMER, 2
  field :VENDOR, 3
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Order.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :SUBMITTED, 2
  field :INFO_COMPLETE, 12
  field :ACCEPTED, 3
  field :ADDITIONAL_INFO_NEEDED, 4
  field :BUILDING, 5
  field :SHIPPING, 6
  field :INSTALLING, 7
  field :FAILED, 8
  field :PARTIALLY_COMPLETED, 9
  field :COMPLETED, 10
  field :CANCELLED, 11
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Order.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :PAID, 1
  field :POC, 2
  field :UNPAID, 2
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Order.DeploymentType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DEPLOYMENT_TYPE_UNSPECIFIED, 0
  field :FULL_PRODUCTION, 1
  field :PROOF_OF_CONCEPT, 2
  field :INTERNAL, 3
  field :CUSTOMER_LAB, 4
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareGroup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ADDITIONAL_INFO_NEEDED, 1
  field :BUILDING, 2
  field :SHIPPING, 3
  field :INSTALLING, 4
  field :PARTIALLY_INSTALLED, 5
  field :INSTALLED, 6
  field :FAILED, 7
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ADDITIONAL_INFO_NEEDED, 1
  field :BUILDING, 2
  field :SHIPPING, 3
  field :INSTALLING, 4
  field :INSTALLED, 5
  field :FAILED, 6
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.MacAddress.AddressType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ADDRESS_TYPE_UNSPECIFIED, 0
  field :NIC, 1
  field :BMC, 2
  field :VIRTUAL, 3
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Sku.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :RACK, 1
  field :SERVER, 2
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Zone.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ADDITIONAL_INFO_NEEDED, 1
  field :PREPARING, 2
  field :READY_FOR_CUSTOMER_FACTORY_TURNUP_CHECKS, 5
  field :CUSTOMER_FACTORY_TURNUP_CHECKS_STARTED, 8
  field :READY_FOR_SITE_TURNUP, 6
  field :CUSTOMER_FACTORY_TURNUP_CHECKS_FAILED, 7
  field :ACTIVE, 3
  field :CANCELLED, 4
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Zone.ProvisioningState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROVISIONING_STATE_UNSPECIFIED, 0
  field :PROVISIONING_REQUIRED, 1
  field :PROVISIONING_IN_PROGRESS, 2
  field :PROVISIONING_COMPLETE, 3
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo.PowerReceptacleType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :POWER_RECEPTACLE_TYPE_UNSPECIFIED, 0
  field :NEMA_5_15, 1
  field :C_13, 2
  field :STANDARD_EU, 3
  field :TYPE_G_BS1363, 4
  field :CEE_7_3, 5
  field :CEE_7_5, 6
  field :TYPE_F, 7
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo.NetworkUplinkType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NETWORK_UPLINK_TYPE_UNSPECIFIED, 0
  field :RJ_45, 1
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo.Voltage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :VOLTAGE_UNSPECIFIED, 0
  field :VOLTAGE_110, 1
  field :VOLTAGE_220, 3
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo.Amperes do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :AMPERES_UNSPECIFIED, 0
  field :AMPERES_15, 1
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareInstallationInfo.RackType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RACK_TYPE_UNSPECIFIED, 0
  field :TWO_POST, 1
  field :FOUR_POST, 2
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.SubscriptionConfig.SubscriptionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SUBSCRIPTION_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
  field :ERROR, 3
  field :FAILED_TO_RETRIEVE, 4
  field :COMPLETED, 5
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Order.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Order do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 13, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Order.LabelsEntry,
    map: true,
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Order.State,
    enum: true,
    deprecated: false

  field :organization_contact, 6,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.OrganizationContact,
    json_name: "organizationContact",
    deprecated: false

  field :target_workloads, 7,
    repeated: true,
    type: :string,
    json_name: "targetWorkloads",
    deprecated: false

  field :customer_motivation, 8, type: :string, json_name: "customerMotivation", deprecated: false

  field :fulfillment_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "fulfillmentTime",
    deprecated: true

  field :customer_requested_installation_date, 21,
    type: Google.Type.Date,
    json_name: "customerRequestedInstallationDate",
    deprecated: false

  field :region_code, 10, type: :string, json_name: "regionCode", deprecated: false
  field :order_form_uri, 11, type: :string, json_name: "orderFormUri", deprecated: false

  field :type, 12,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Order.Type,
    enum: true,
    deprecated: false

  field :submit_time, 14,
    type: Google.Protobuf.Timestamp,
    json_name: "submitTime",
    deprecated: false

  field :billing_id, 15, type: :string, json_name: "billingId", deprecated: false

  field :existing_hardware, 16,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareLocation,
    json_name: "existingHardware",
    deprecated: false

  field :deployment_type, 18,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Order.DeploymentType,
    json_name: "deploymentType",
    enum: true,
    deprecated: false

  field :actual_installation_date, 19,
    type: Google.Type.Date,
    json_name: "actualInstallationDate",
    deprecated: false

  field :estimated_installation_date, 20,
    type: Google.Type.Date,
    json_name: "estimatedInstallationDate",
    deprecated: false

  field :estimated_delivery_date, 22,
    type: Google.Type.Date,
    json_name: "estimatedDeliveryDate",
    deprecated: false

  field :migration, 23, type: :bool, deprecated: false

  field :accepted_time, 24,
    type: Google.Protobuf.Timestamp,
    json_name: "acceptedTime",
    deprecated: false

  field :requested_date_change, 25,
    type: Google.Type.Date,
    json_name: "requestedDateChange",
    deprecated: false

  field :vendor_notes, 26, type: :string, json_name: "vendorNotes", deprecated: false

  field :vendor_contact, 27,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.OrganizationContact,
    json_name: "vendorContact",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Site.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Site do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 24, type: :string, json_name: "displayName", deprecated: false
  field :description, 25, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Site.LabelsEntry,
    map: true,
    deprecated: false

  field :organization_contact, 5,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.OrganizationContact,
    json_name: "organizationContact",
    deprecated: false

  field :google_maps_pin_uri, 6, type: :string, json_name: "googleMapsPinUri", deprecated: false

  field :access_times, 26,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.TimePeriod,
    json_name: "accessTimes",
    deprecated: false

  field :notes, 27, type: :string, deprecated: false
  field :customer_site_id, 28, type: :string, json_name: "customerSiteId", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareGroup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareGroup.LabelsEntry,
    map: true,
    deprecated: false

  field :hardware_count, 5, type: :int32, json_name: "hardwareCount", deprecated: false

  field :config, 6,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareConfig,
    deprecated: false

  field :site, 7, type: :string, deprecated: false

  field :state, 8,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareGroup.State,
    enum: true,
    deprecated: false

  field :zone, 9, type: :string, deprecated: false

  field :requested_installation_date, 10,
    type: Google.Type.Date,
    json_name: "requestedInstallationDate",
    deprecated: true
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.MacAddress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :address, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.MacAddress.AddressType,
    enum: true,
    deprecated: false

  field :ipv4_address, 3, type: :string, json_name: "ipv4Address", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.DiskInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :manufacturer, 1, type: :string, deprecated: false
  field :slot, 2, type: :int32, deprecated: false
  field :serial_number, 3, type: :string, json_name: "serialNumber", deprecated: false
  field :psid, 4, type: :string, deprecated: false
  field :part_number, 5, type: :string, json_name: "partNumber", deprecated: false
  field :model_number, 6, type: :string, json_name: "modelNumber", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.MachineInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :service_tag, 1, type: :string, json_name: "serviceTag", deprecated: false

  field :mac_addresses, 2,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.MacAddress,
    json_name: "macAddresses",
    deprecated: false

  field :name, 3, type: :string, deprecated: false

  field :disk_infos, 4,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.DiskInfo,
    json_name: "diskInfos",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.LabelsEntry,
    map: true,
    deprecated: false

  field :order, 6, type: :string, deprecated: false
  field :hardware_group, 7, type: :string, json_name: "hardwareGroup", deprecated: false
  field :site, 8, type: :string, deprecated: false

  field :state, 9,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.State,
    enum: true,
    deprecated: false

  field :ciq_uri, 10, type: :string, json_name: "ciqUri", deprecated: false

  field :config, 11,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareConfig,
    deprecated: false

  field :estimated_installation_date, 12,
    type: Google.Type.Date,
    json_name: "estimatedInstallationDate",
    deprecated: false

  field :physical_info, 13,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo,
    json_name: "physicalInfo",
    deprecated: false

  field :installation_info, 14,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareInstallationInfo,
    json_name: "installationInfo",
    deprecated: false

  field :zone, 15, type: :string, deprecated: false

  field :requested_installation_date, 16,
    type: Google.Type.Date,
    json_name: "requestedInstallationDate",
    deprecated: false

  field :actual_installation_date, 17,
    type: Google.Type.Date,
    json_name: "actualInstallationDate",
    deprecated: false

  field :machine_infos, 20,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Hardware.MachineInfo,
    json_name: "machineInfos",
    deprecated: false

  field :estimated_delivery_date, 21,
    type: Google.Type.Date,
    json_name: "estimatedDeliveryDate",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Comment.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Comment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Comment.LabelsEntry,
    map: true,
    deprecated: false

  field :author, 4, type: :string, deprecated: false
  field :text, 5, type: :string, deprecated: false

  field :customer_viewed_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "customerViewedTime",
    deprecated: false

  field :author_entity, 7,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Entity,
    json_name: "authorEntity",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ChangeLogEntry.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ChangeLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.ChangeLogEntry.LabelsEntry,
    map: true,
    deprecated: false

  field :log, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Sku.Range do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :min, 1, type: :int32
  field :max, 2, type: :int32
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Sku do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :config, 6, type: Google.Cloud.Gdchardwaremanagement.V1alpha.SkuConfig, deprecated: false

  field :instances, 7,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.SkuInstance,
    deprecated: false

  field :description, 8, type: :string, deprecated: false
  field :revision_id, 9, type: :string, json_name: "revisionId", deprecated: false
  field :is_active, 10, type: :bool, json_name: "isActive", deprecated: false

  field :type, 11,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Sku.Type,
    enum: true,
    deprecated: false

  field :vcpu_count, 12, type: :int32, json_name: "vcpuCount", deprecated: false

  field :hardware_count_ranges, 13,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Sku.Range,
    json_name: "hardwareCountRanges",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Zone.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Zone do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Zone.LabelsEntry,
    map: true,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false

  field :state, 8,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Zone.State,
    enum: true,
    deprecated: false

  field :contacts, 9,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Contact,
    deprecated: false

  field :ciq_uri, 10, type: :string, json_name: "ciqUri", deprecated: false

  field :network_config, 11,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.ZoneNetworkConfig,
    json_name: "networkConfig",
    deprecated: false

  field :globally_unique_id, 12, type: :string, json_name: "globallyUniqueId", deprecated: false

  field :subscription_configs, 13,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.SubscriptionConfig,
    json_name: "subscriptionConfigs",
    deprecated: false

  field :provisioning_state, 14,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Zone.ProvisioningState,
    json_name: "provisioningState",
    enum: true,
    deprecated: false

  field :skip_cluster_provisioning, 16,
    type: :bool,
    json_name: "skipClusterProvisioning",
    deprecated: false

  field :cluster_intent_required, 17,
    type: :bool,
    json_name: "clusterIntentRequired",
    deprecated: false

  field :cluster_intent_verified, 18,
    type: :bool,
    json_name: "clusterIntentVerified",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.OrganizationContact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :address, 1, type: Google.Type.PostalAddress, deprecated: false
  field :email, 2, type: :string, deprecated: false
  field :phone, 3, type: :string, deprecated: false

  field :contacts, 4,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Contact,
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Contact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :given_name, 1, type: :string, json_name: "givenName", deprecated: false
  field :family_name, 2, type: :string, json_name: "familyName", deprecated: false
  field :email, 3, type: :string, deprecated: false
  field :phone, 4, type: :string, deprecated: false
  field :time_zone, 5, type: Google.Type.TimeZone, json_name: "timeZone", deprecated: false

  field :reachable_times, 6,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.TimePeriod,
    json_name: "reachableTimes",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sku, 1, type: :string, deprecated: false

  field :power_supply, 2,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.PowerSupply,
    json_name: "powerSupply",
    enum: true,
    deprecated: false

  field :subscription_duration_months, 3,
    type: :int32,
    json_name: "subscriptionDurationMonths",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.SkuConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cpu, 1, type: :string
  field :gpu, 2, type: :string
  field :ram, 3, type: :string
  field :storage, 4, type: :string
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.SkuInstance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode"

  field :power_supply, 2,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.PowerSupply,
    json_name: "powerSupply",
    enum: true

  field :billing_sku, 3, type: :string, json_name: "billingSku"
  field :billing_sku_per_vcpu, 4, type: :string, json_name: "billingSkuPerVcpu"
  field :subscription_duration_months, 5, type: :int32, json_name: "subscriptionDurationMonths"
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :power_receptacle, 1,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo.PowerReceptacleType,
    json_name: "powerReceptacle",
    enum: true,
    deprecated: false

  field :network_uplink, 2,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo.NetworkUplinkType,
    json_name: "networkUplink",
    enum: true,
    deprecated: false

  field :voltage, 3,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo.Voltage,
    enum: true,
    deprecated: false

  field :amperes, 4,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwarePhysicalInfo.Amperes,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareInstallationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rack_location, 1, type: :string, json_name: "rackLocation", deprecated: false

  field :power_distance_meters, 2,
    type: :int32,
    json_name: "powerDistanceMeters",
    deprecated: false

  field :switch_distance_meters, 3,
    type: :int32,
    json_name: "switchDistanceMeters",
    deprecated: false

  field :rack_unit_dimensions, 4,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Dimensions,
    json_name: "rackUnitDimensions",
    deprecated: false

  field :rack_space, 5,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.RackSpace,
    json_name: "rackSpace",
    deprecated: false

  field :rack_type, 6,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareInstallationInfo.RackType,
    json_name: "rackType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.ZoneNetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :machine_mgmt_ipv4_range, 1,
    type: :string,
    json_name: "machineMgmtIpv4Range",
    deprecated: false

  field :kubernetes_node_ipv4_range, 2,
    type: :string,
    json_name: "kubernetesNodeIpv4Range",
    deprecated: false

  field :kubernetes_control_plane_ipv4_range, 3,
    type: :string,
    json_name: "kubernetesControlPlaneIpv4Range",
    deprecated: false

  field :management_ipv4_subnet, 4,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Subnet,
    json_name: "managementIpv4Subnet",
    deprecated: false

  field :kubernetes_ipv4_subnet, 5,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.Subnet,
    json_name: "kubernetesIpv4Subnet",
    deprecated: false

  field :dns_ipv4_addresses, 6,
    repeated: true,
    type: :string,
    json_name: "dnsIpv4Addresses",
    deprecated: false

  field :kubernetes_primary_vlan_id, 7,
    type: :int32,
    json_name: "kubernetesPrimaryVlanId",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Subnet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :address_range, 1, type: :string, json_name: "addressRange", deprecated: false

  field :default_gateway_ip_address, 2,
    type: :string,
    json_name: "defaultGatewayIpAddress",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.TimePeriod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Type.TimeOfDay, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Type.TimeOfDay, json_name: "endTime", deprecated: false
  field :days, 3, repeated: true, type: Google.Type.DayOfWeek, enum: true, deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.Dimensions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :width_inches, 1, type: :float, json_name: "widthInches", deprecated: false
  field :height_inches, 2, type: :float, json_name: "heightInches", deprecated: false
  field :depth_inches, 3, type: :float, json_name: "depthInches", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.RackSpace do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_rack_unit, 1, type: :int32, json_name: "startRackUnit", deprecated: false
  field :end_rack_unit, 2, type: :int32, json_name: "endRackUnit", deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.HardwareLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :site, 1, type: :string, deprecated: false
  field :rack_location, 2, type: :string, json_name: "rackLocation", deprecated: false

  field :rack_space, 3,
    repeated: true,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.RackSpace,
    json_name: "rackSpace",
    deprecated: false
end

defmodule Google.Cloud.Gdchardwaremanagement.V1alpha.SubscriptionConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subscription_id, 1, type: :string, json_name: "subscriptionId", deprecated: false
  field :billing_id, 2, type: :string, json_name: "billingId", deprecated: false

  field :state, 3,
    type: Google.Cloud.Gdchardwaremanagement.V1alpha.SubscriptionConfig.SubscriptionState,
    enum: true,
    deprecated: false
end
