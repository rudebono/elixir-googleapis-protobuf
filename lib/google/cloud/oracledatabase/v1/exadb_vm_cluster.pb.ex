defmodule Google.Cloud.Oracledatabase.V1.ExadbVmClusterProperties.LicenseModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LICENSE_MODEL_UNSPECIFIED, 0
  field :LICENSE_INCLUDED, 1
  field :BRING_YOUR_OWN_LICENSE, 2
end

defmodule Google.Cloud.Oracledatabase.V1.ExadbVmClusterProperties.ExadbVmClusterLifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EXADB_VM_CLUSTER_LIFECYCLE_STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :UPDATING, 3
  field :TERMINATING, 4
  field :TERMINATED, 5
  field :FAILED, 6
  field :MAINTENANCE_IN_PROGRESS, 7
end

defmodule Google.Cloud.Oracledatabase.V1.ExadbVmClusterProperties.ShapeAttribute do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SHAPE_ATTRIBUTE_UNSPECIFIED, 0
  field :SMART_STORAGE, 1
  field :BLOCK_STORAGE, 2
end

defmodule Google.Cloud.Oracledatabase.V1.ExadbVmCluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.ExadbVmCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :properties, 2,
    type: Google.Cloud.Oracledatabase.V1.ExadbVmClusterProperties,
    deprecated: false

  field :gcp_oracle_zone, 3, type: :string, json_name: "gcpOracleZone", deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.ExadbVmCluster.LabelsEntry,
    map: true,
    deprecated: false

  field :odb_network, 6, type: :string, json_name: "odbNetwork", deprecated: false
  field :odb_subnet, 7, type: :string, json_name: "odbSubnet", deprecated: false
  field :backup_odb_subnet, 8, type: :string, json_name: "backupOdbSubnet", deprecated: false
  field :display_name, 9, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :entitlement_id, 11, type: :string, json_name: "entitlementId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ExadbVmClusterStorageDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :size_in_gbs_per_node, 2, type: :int32, json_name: "sizeInGbsPerNode", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ExadbVmClusterProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :cluster_name, 1, type: :string, json_name: "clusterName", deprecated: false
  field :grid_image_id, 2, type: :string, json_name: "gridImageId", deprecated: false
  field :node_count, 3, type: :int32, json_name: "nodeCount", deprecated: false

  field :enabled_ecpu_count_per_node, 20,
    type: :int32,
    json_name: "enabledEcpuCountPerNode",
    deprecated: false

  field :additional_ecpu_count_per_node, 21,
    type: :int32,
    json_name: "additionalEcpuCountPerNode",
    deprecated: false

  field :vm_file_system_storage, 6,
    type: Google.Cloud.Oracledatabase.V1.ExadbVmClusterStorageDetails,
    json_name: "vmFileSystemStorage",
    deprecated: false

  field :license_model, 7,
    type: Google.Cloud.Oracledatabase.V1.ExadbVmClusterProperties.LicenseModel,
    json_name: "licenseModel",
    enum: true,
    deprecated: false

  field :exascale_db_storage_vault, 8,
    type: :string,
    json_name: "exascaleDbStorageVault",
    deprecated: false

  field :hostname_prefix, 9, type: :string, json_name: "hostnamePrefix", deprecated: false
  field :hostname, 10, type: :string, deprecated: false

  field :ssh_public_keys, 11,
    repeated: true,
    type: :string,
    json_name: "sshPublicKeys",
    deprecated: false

  field :data_collection_options, 12,
    type: Google.Cloud.Oracledatabase.V1.DataCollectionOptionsCommon,
    json_name: "dataCollectionOptions",
    deprecated: false

  field :time_zone, 13, type: Google.Type.TimeZone, json_name: "timeZone", deprecated: false

  field :lifecycle_state, 14,
    type: Google.Cloud.Oracledatabase.V1.ExadbVmClusterProperties.ExadbVmClusterLifecycleState,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false

  field :shape_attribute, 15,
    type: Google.Cloud.Oracledatabase.V1.ExadbVmClusterProperties.ShapeAttribute,
    json_name: "shapeAttribute",
    enum: true,
    deprecated: false

  field :memory_size_gb, 16, type: :int32, json_name: "memorySizeGb", deprecated: false

  field :scan_listener_port_tcp, 17,
    type: :int32,
    json_name: "scanListenerPortTcp",
    deprecated: false

  field :oci_uri, 18, type: :string, json_name: "ociUri", deprecated: false
  field :gi_version, 19, type: :string, json_name: "giVersion", deprecated: false
end
