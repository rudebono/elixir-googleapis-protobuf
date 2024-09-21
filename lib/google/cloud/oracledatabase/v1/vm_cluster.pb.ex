defmodule Google.Cloud.Oracledatabase.V1.CloudVmClusterProperties.LicenseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LICENSE_TYPE_UNSPECIFIED, 0
  field :LICENSE_INCLUDED, 1
  field :BRING_YOUR_OWN_LICENSE, 2
end

defmodule Google.Cloud.Oracledatabase.V1.CloudVmClusterProperties.DiskRedundancy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :DISK_REDUNDANCY_UNSPECIFIED, 0
  field :HIGH, 1
  field :NORMAL, 2
end

defmodule Google.Cloud.Oracledatabase.V1.CloudVmClusterProperties.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :UPDATING, 3
  field :TERMINATING, 4
  field :TERMINATED, 5
  field :FAILED, 6
  field :MAINTENANCE_IN_PROGRESS, 7
end

defmodule Google.Cloud.Oracledatabase.V1.CloudVmCluster.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.CloudVmCluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :exadata_infrastructure, 2,
    type: :string,
    json_name: "exadataInfrastructure",
    deprecated: false

  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :gcp_oracle_zone, 12, type: :string, json_name: "gcpOracleZone", deprecated: false

  field :properties, 6,
    type: Google.Cloud.Oracledatabase.V1.CloudVmClusterProperties,
    deprecated: false

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.CloudVmCluster.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :cidr, 9, type: :string, deprecated: false
  field :backup_subnet_cidr, 10, type: :string, json_name: "backupSubnetCidr", deprecated: false
  field :network, 11, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.CloudVmClusterProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ocid, 1, type: :string, deprecated: false

  field :license_type, 2,
    type: Google.Cloud.Oracledatabase.V1.CloudVmClusterProperties.LicenseType,
    json_name: "licenseType",
    enum: true,
    deprecated: false

  field :gi_version, 3, type: :string, json_name: "giVersion", deprecated: false
  field :time_zone, 4, type: Google.Type.TimeZone, json_name: "timeZone", deprecated: false

  field :ssh_public_keys, 5,
    repeated: true,
    type: :string,
    json_name: "sshPublicKeys",
    deprecated: false

  field :node_count, 6, type: :int32, json_name: "nodeCount", deprecated: false
  field :shape, 7, type: :string, deprecated: false
  field :ocpu_count, 8, type: :float, json_name: "ocpuCount", deprecated: false
  field :memory_size_gb, 9, type: :int32, json_name: "memorySizeGb", deprecated: false

  field :db_node_storage_size_gb, 10,
    type: :int32,
    json_name: "dbNodeStorageSizeGb",
    deprecated: false

  field :storage_size_gb, 11, type: :int32, json_name: "storageSizeGb", deprecated: false

  field :data_storage_size_tb, 12,
    type: :double,
    json_name: "dataStorageSizeTb",
    deprecated: false

  field :disk_redundancy, 13,
    type: Google.Cloud.Oracledatabase.V1.CloudVmClusterProperties.DiskRedundancy,
    json_name: "diskRedundancy",
    enum: true,
    deprecated: false

  field :sparse_diskgroup_enabled, 14,
    type: :bool,
    json_name: "sparseDiskgroupEnabled",
    deprecated: false

  field :local_backup_enabled, 15, type: :bool, json_name: "localBackupEnabled", deprecated: false
  field :hostname_prefix, 16, type: :string, json_name: "hostnamePrefix", deprecated: false

  field :diagnostics_data_collection_options, 19,
    type: Google.Cloud.Oracledatabase.V1.DataCollectionOptions,
    json_name: "diagnosticsDataCollectionOptions",
    deprecated: false

  field :state, 20,
    type: Google.Cloud.Oracledatabase.V1.CloudVmClusterProperties.State,
    enum: true,
    deprecated: false

  field :scan_listener_port_tcp, 21,
    type: :int32,
    json_name: "scanListenerPortTcp",
    deprecated: false

  field :scan_listener_port_tcp_ssl, 22,
    type: :int32,
    json_name: "scanListenerPortTcpSsl",
    deprecated: false

  field :domain, 23, type: :string, deprecated: false
  field :scan_dns, 24, type: :string, json_name: "scanDns", deprecated: false
  field :hostname, 25, type: :string, deprecated: false
  field :cpu_core_count, 26, type: :int32, json_name: "cpuCoreCount", deprecated: false
  field :system_version, 27, type: :string, json_name: "systemVersion", deprecated: false
  field :scan_ip_ids, 28, repeated: true, type: :string, json_name: "scanIpIds", deprecated: false
  field :scan_dns_record_id, 29, type: :string, json_name: "scanDnsRecordId", deprecated: false
  field :oci_url, 30, type: :string, json_name: "ociUrl", deprecated: false

  field :db_server_ocids, 31,
    repeated: true,
    type: :string,
    json_name: "dbServerOcids",
    deprecated: false

  field :compartment_id, 32, type: :string, json_name: "compartmentId", deprecated: false
  field :dns_listener_ip, 35, type: :string, json_name: "dnsListenerIp", deprecated: false
  field :cluster_name, 36, type: :string, json_name: "clusterName", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DataCollectionOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :diagnostics_events_enabled, 1,
    type: :bool,
    json_name: "diagnosticsEventsEnabled",
    deprecated: false

  field :health_monitoring_enabled, 2,
    type: :bool,
    json_name: "healthMonitoringEnabled",
    deprecated: false

  field :incident_logs_enabled, 3,
    type: :bool,
    json_name: "incidentLogsEnabled",
    deprecated: false
end