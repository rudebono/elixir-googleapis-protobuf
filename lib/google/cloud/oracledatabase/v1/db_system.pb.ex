defmodule Google.Cloud.Oracledatabase.V1.DbSystemProperties.DbSystemDatabaseEdition do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DB_SYSTEM_DATABASE_EDITION_UNSPECIFIED, 0
  field :STANDARD_EDITION, 1
  field :ENTERPRISE_EDITION, 2
  field :ENTERPRISE_EDITION_HIGH_PERFORMANCE, 3
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystemProperties.LicenseModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LICENSE_MODEL_UNSPECIFIED, 0
  field :LICENSE_INCLUDED, 1
  field :BRING_YOUR_OWN_LICENSE, 2
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystemProperties.DbSystemLifecycleState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :DB_SYSTEM_LIFECYCLE_STATE_UNSPECIFIED, 0
  field :PROVISIONING, 1
  field :AVAILABLE, 2
  field :UPDATING, 3
  field :TERMINATING, 4
  field :TERMINATED, 5
  field :FAILED, 6
  field :MIGRATED, 7
  field :MAINTENANCE_IN_PROGRESS, 8
  field :NEEDS_ATTENTION, 9
  field :UPGRADING, 10
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystemProperties.ComputeModel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :COMPUTE_MODEL_UNSPECIFIED, 0
  field :ECPU, 1
  field :OCPU, 2
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystemOptions.StorageManagement do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STORAGE_MANAGEMENT_UNSPECIFIED, 0
  field :ASM, 1
  field :LVM, 2
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystem.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :properties, 2, type: Google.Cloud.Oracledatabase.V1.DbSystemProperties, deprecated: false
  field :gcp_oracle_zone, 3, type: :string, json_name: "gcpOracleZone", deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DbSystem.LabelsEntry,
    map: true,
    deprecated: false

  field :odb_network, 5, type: :string, json_name: "odbNetwork", deprecated: false
  field :odb_subnet, 6, type: :string, json_name: "odbSubnet", deprecated: false
  field :entitlement_id, 7, type: :string, json_name: "entitlementId", deprecated: false
  field :display_name, 8, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :oci_url, 10, type: :string, json_name: "ociUrl", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystemProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :shape, 1, type: :string, deprecated: false
  field :compute_count, 2, type: :int32, json_name: "computeCount", deprecated: false

  field :initial_data_storage_size_gb, 3,
    type: :int32,
    json_name: "initialDataStorageSizeGb",
    deprecated: false

  field :database_edition, 4,
    type: Google.Cloud.Oracledatabase.V1.DbSystemProperties.DbSystemDatabaseEdition,
    json_name: "databaseEdition",
    enum: true,
    deprecated: false

  field :license_model, 5,
    type: Google.Cloud.Oracledatabase.V1.DbSystemProperties.LicenseModel,
    json_name: "licenseModel",
    enum: true,
    deprecated: false

  field :ssh_public_keys, 6,
    repeated: true,
    type: :string,
    json_name: "sshPublicKeys",
    deprecated: false

  field :hostname_prefix, 7, type: :string, json_name: "hostnamePrefix", deprecated: false
  field :hostname, 8, type: :string, deprecated: false
  field :private_ip, 9, type: :string, json_name: "privateIp", deprecated: false

  field :data_collection_options, 10,
    type: Google.Cloud.Oracledatabase.V1.DataCollectionOptionsDbSystem,
    json_name: "dataCollectionOptions",
    deprecated: false

  field :time_zone, 11, type: Google.Type.TimeZone, json_name: "timeZone", deprecated: false

  field :lifecycle_state, 12,
    type: Google.Cloud.Oracledatabase.V1.DbSystemProperties.DbSystemLifecycleState,
    json_name: "lifecycleState",
    enum: true,
    deprecated: false

  field :db_home, 13,
    type: Google.Cloud.Oracledatabase.V1.DbHome,
    json_name: "dbHome",
    deprecated: false

  field :ocid, 14, type: :string, deprecated: false
  field :memory_size_gb, 15, type: :int32, json_name: "memorySizeGb", deprecated: false

  field :compute_model, 16,
    type: Google.Cloud.Oracledatabase.V1.DbSystemProperties.ComputeModel,
    json_name: "computeModel",
    enum: true,
    deprecated: false

  field :data_storage_size_gb, 17, type: :int32, json_name: "dataStorageSizeGb", deprecated: false
  field :reco_storage_size_gb, 18, type: :int32, json_name: "recoStorageSizeGb", deprecated: false
  field :domain, 19, type: :string, deprecated: false
  field :node_count, 20, type: :int32, json_name: "nodeCount", deprecated: false

  field :db_system_options, 21,
    type: Google.Cloud.Oracledatabase.V1.DbSystemOptions,
    json_name: "dbSystemOptions",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DataCollectionOptionsDbSystem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :is_diagnostics_events_enabled, 1,
    type: :bool,
    json_name: "isDiagnosticsEventsEnabled",
    deprecated: false

  field :is_incident_logs_enabled, 2,
    type: :bool,
    json_name: "isIncidentLogsEnabled",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DbSystemOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :storage_management, 1,
    type: Google.Cloud.Oracledatabase.V1.DbSystemOptions.StorageManagement,
    json_name: "storageManagement",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DbHome do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :db_version, 2, type: :string, json_name: "dbVersion", deprecated: false
  field :database, 3, type: Google.Cloud.Oracledatabase.V1.Database, deprecated: false

  field :is_unified_auditing_enabled, 4,
    type: :bool,
    json_name: "isUnifiedAuditingEnabled",
    deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.CreateDbSystemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :db_system_id, 2, type: :string, json_name: "dbSystemId", deprecated: false

  field :db_system, 3,
    type: Google.Cloud.Oracledatabase.V1.DbSystem,
    json_name: "dbSystem",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.DeleteDbSystemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.GetDbSystemRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbSystemsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Oracledatabase.V1.ListDbSystemsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :db_systems, 1,
    repeated: true,
    type: Google.Cloud.Oracledatabase.V1.DbSystem,
    json_name: "dbSystems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
