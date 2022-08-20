defmodule Google.Cloud.Metastore.V1alpha.Service.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :SUSPENDING, 3
  field :SUSPENDED, 4
  field :UPDATING, 5
  field :DELETING, 6
  field :ERROR, 7
end

defmodule Google.Cloud.Metastore.V1alpha.Service.Tier do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TIER_UNSPECIFIED, 0
  field :DEVELOPER, 1
  field :ENTERPRISE, 3
end

defmodule Google.Cloud.Metastore.V1alpha.Service.ReleaseChannel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RELEASE_CHANNEL_UNSPECIFIED, 0
  field :CANARY, 1
  field :STABLE, 2
end

defmodule Google.Cloud.Metastore.V1alpha.Service.DatabaseType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :MYSQL, 1
  field :SPANNER, 2
end

defmodule Google.Cloud.Metastore.V1alpha.HiveMetastoreConfig.EndpointProtocol do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ENDPOINT_PROTOCOL_UNSPECIFIED, 0
  field :THRIFT, 1
  field :GRPC, 2
end

defmodule Google.Cloud.Metastore.V1alpha.MetadataImport.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :UPDATING, 3
  field :FAILED, 4
end

defmodule Google.Cloud.Metastore.V1alpha.MetadataImport.DatabaseDump.DatabaseType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :MYSQL, 1
end

defmodule Google.Cloud.Metastore.V1alpha.MetadataExport.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end

defmodule Google.Cloud.Metastore.V1alpha.Backup.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :DELETING, 2
  field :ACTIVE, 3
  field :FAILED, 4
  field :RESTORING, 5
end

defmodule Google.Cloud.Metastore.V1alpha.Restore.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :CANCELLED, 4
end

defmodule Google.Cloud.Metastore.V1alpha.Restore.RestoreType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :RESTORE_TYPE_UNSPECIFIED, 0
  field :FULL, 1
  field :METADATA_ONLY, 2
end

defmodule Google.Cloud.Metastore.V1alpha.DatabaseDumpSpec.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :MYSQL, 1
  field :AVRO, 2
end

defmodule Google.Cloud.Metastore.V1alpha.Service.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Metastore.V1alpha.Service do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :metastore_config, 0

  field :hive_metastore_config, 5,
    type: Google.Cloud.Metastore.V1alpha.HiveMetastoreConfig,
    json_name: "hiveMetastoreConfig",
    oneof: 0

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
    type: Google.Cloud.Metastore.V1alpha.Service.LabelsEntry,
    map: true

  field :network, 7, type: :string, deprecated: false
  field :endpoint_uri, 8, type: :string, json_name: "endpointUri", deprecated: false
  field :port, 9, type: :int32

  field :state, 10,
    type: Google.Cloud.Metastore.V1alpha.Service.State,
    enum: true,
    deprecated: false

  field :state_message, 11, type: :string, json_name: "stateMessage", deprecated: false
  field :artifact_gcs_uri, 12, type: :string, json_name: "artifactGcsUri", deprecated: false
  field :tier, 13, type: Google.Cloud.Metastore.V1alpha.Service.Tier, enum: true

  field :metadata_integration, 14,
    type: Google.Cloud.Metastore.V1alpha.MetadataIntegration,
    json_name: "metadataIntegration"

  field :maintenance_window, 15,
    type: Google.Cloud.Metastore.V1alpha.MaintenanceWindow,
    json_name: "maintenanceWindow"

  field :uid, 16, type: :string, deprecated: false

  field :metadata_management_activity, 17,
    type: Google.Cloud.Metastore.V1alpha.MetadataManagementActivity,
    json_name: "metadataManagementActivity",
    deprecated: false

  field :release_channel, 19,
    type: Google.Cloud.Metastore.V1alpha.Service.ReleaseChannel,
    json_name: "releaseChannel",
    enum: true,
    deprecated: false

  field :encryption_config, 20,
    type: Google.Cloud.Metastore.V1alpha.EncryptionConfig,
    json_name: "encryptionConfig",
    deprecated: false

  field :network_config, 21,
    type: Google.Cloud.Metastore.V1alpha.NetworkConfig,
    json_name: "networkConfig",
    deprecated: false

  field :database_type, 22,
    type: Google.Cloud.Metastore.V1alpha.Service.DatabaseType,
    json_name: "databaseType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.MetadataIntegration do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :data_catalog_config, 1,
    type: Google.Cloud.Metastore.V1alpha.DataCatalogConfig,
    json_name: "dataCatalogConfig"

  field :dataplex_config, 2,
    type: Google.Cloud.Metastore.V1alpha.DataplexConfig,
    json_name: "dataplexConfig"
end

defmodule Google.Cloud.Metastore.V1alpha.DataCatalogConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enabled, 2, type: :bool
end

defmodule Google.Cloud.Metastore.V1alpha.DataplexConfig.LakeResourcesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Metastore.V1alpha.Lake
end

defmodule Google.Cloud.Metastore.V1alpha.DataplexConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :lake_resources, 1,
    repeated: true,
    type: Google.Cloud.Metastore.V1alpha.DataplexConfig.LakeResourcesEntry,
    json_name: "lakeResources",
    map: true
end

defmodule Google.Cloud.Metastore.V1alpha.Lake do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.MaintenanceWindow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :hour_of_day, 1, type: Google.Protobuf.Int32Value, json_name: "hourOfDay"
  field :day_of_week, 2, type: Google.Type.DayOfWeek, json_name: "dayOfWeek", enum: true
end

defmodule Google.Cloud.Metastore.V1alpha.HiveMetastoreConfig.ConfigOverridesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Metastore.V1alpha.HiveMetastoreConfig.AuxiliaryVersionsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Metastore.V1alpha.AuxiliaryVersionConfig
end

defmodule Google.Cloud.Metastore.V1alpha.HiveMetastoreConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string, deprecated: false

  field :config_overrides, 2,
    repeated: true,
    type: Google.Cloud.Metastore.V1alpha.HiveMetastoreConfig.ConfigOverridesEntry,
    json_name: "configOverrides",
    map: true

  field :kerberos_config, 3,
    type: Google.Cloud.Metastore.V1alpha.KerberosConfig,
    json_name: "kerberosConfig"

  field :endpoint_protocol, 4,
    type: Google.Cloud.Metastore.V1alpha.HiveMetastoreConfig.EndpointProtocol,
    json_name: "endpointProtocol",
    enum: true

  field :auxiliary_versions, 5,
    repeated: true,
    type: Google.Cloud.Metastore.V1alpha.HiveMetastoreConfig.AuxiliaryVersionsEntry,
    json_name: "auxiliaryVersions",
    map: true
end

defmodule Google.Cloud.Metastore.V1alpha.KerberosConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keytab, 1, type: Google.Cloud.Metastore.V1alpha.Secret
  field :principal, 2, type: :string
  field :krb5_config_gcs_uri, 3, type: :string, json_name: "krb5ConfigGcsUri"
end

defmodule Google.Cloud.Metastore.V1alpha.Secret do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :value, 0

  field :cloud_secret, 2, type: :string, json_name: "cloudSecret", oneof: 0
end

defmodule Google.Cloud.Metastore.V1alpha.EncryptionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :kms_key, 1, type: :string, json_name: "kmsKey"
end

defmodule Google.Cloud.Metastore.V1alpha.AuxiliaryVersionConfig.ConfigOverridesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Metastore.V1alpha.AuxiliaryVersionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string

  field :config_overrides, 2,
    repeated: true,
    type: Google.Cloud.Metastore.V1alpha.AuxiliaryVersionConfig.ConfigOverridesEntry,
    json_name: "configOverrides",
    map: true

  field :network_config, 3,
    type: Google.Cloud.Metastore.V1alpha.NetworkConfig,
    json_name: "networkConfig",
    deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.NetworkConfig.Consumer do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :vpc_resource, 0

  field :subnetwork, 1, type: :string, oneof: 0, deprecated: false
  field :endpoint_uri, 3, type: :string, json_name: "endpointUri", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.NetworkConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :consumers, 1,
    repeated: true,
    type: Google.Cloud.Metastore.V1alpha.NetworkConfig.Consumer,
    deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.MetadataManagementActivity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metadata_exports, 1,
    repeated: true,
    type: Google.Cloud.Metastore.V1alpha.MetadataExport,
    json_name: "metadataExports",
    deprecated: false

  field :restores, 2,
    repeated: true,
    type: Google.Cloud.Metastore.V1alpha.Restore,
    deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.MetadataImport.DatabaseDump do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :database_type, 1,
    type: Google.Cloud.Metastore.V1alpha.MetadataImport.DatabaseDump.DatabaseType,
    json_name: "databaseType",
    enum: true,
    deprecated: true

  field :gcs_uri, 2, type: :string, json_name: "gcsUri"
  field :source_database, 3, type: :string, json_name: "sourceDatabase", deprecated: true

  field :type, 4,
    type: Google.Cloud.Metastore.V1alpha.DatabaseDumpSpec.Type,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.MetadataImport do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :metadata, 0

  field :database_dump, 6,
    type: Google.Cloud.Metastore.V1alpha.MetadataImport.DatabaseDump,
    json_name: "databaseDump",
    oneof: 0,
    deprecated: false

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 5,
    type: Google.Cloud.Metastore.V1alpha.MetadataImport.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.MetadataExport do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :destination_gcs_uri, 4,
    type: :string,
    json_name: "destinationGcsUri",
    oneof: 0,
    deprecated: false

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 3,
    type: Google.Cloud.Metastore.V1alpha.MetadataExport.State,
    enum: true,
    deprecated: false

  field :database_dump_type, 5,
    type: Google.Cloud.Metastore.V1alpha.DatabaseDumpSpec.Type,
    json_name: "databaseDumpType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.Backup do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 4,
    type: Google.Cloud.Metastore.V1alpha.Backup.State,
    enum: true,
    deprecated: false

  field :service_revision, 5,
    type: Google.Cloud.Metastore.V1alpha.Service,
    json_name: "serviceRevision",
    deprecated: false

  field :description, 6, type: :string

  field :restoring_services, 7,
    repeated: true,
    type: :string,
    json_name: "restoringServices",
    deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.Restore do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :state, 3,
    type: Google.Cloud.Metastore.V1alpha.Restore.State,
    enum: true,
    deprecated: false

  field :backup, 4, type: :string, deprecated: false

  field :type, 5,
    type: Google.Cloud.Metastore.V1alpha.Restore.RestoreType,
    enum: true,
    deprecated: false

  field :details, 6, type: :string, deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.ListServicesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.ListServicesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :services, 1, repeated: true, type: Google.Cloud.Metastore.V1alpha.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Metastore.V1alpha.GetServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.CreateServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :service_id, 2, type: :string, json_name: "serviceId", deprecated: false
  field :service, 3, type: Google.Cloud.Metastore.V1alpha.Service, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.UpdateServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :service, 2, type: Google.Cloud.Metastore.V1alpha.Service, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.DeleteServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.ListMetadataImportsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.ListMetadataImportsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :metadata_imports, 1,
    repeated: true,
    type: Google.Cloud.Metastore.V1alpha.MetadataImport,
    json_name: "metadataImports"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Metastore.V1alpha.GetMetadataImportRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.CreateMetadataImportRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :metadata_import_id, 2, type: :string, json_name: "metadataImportId", deprecated: false

  field :metadata_import, 3,
    type: Google.Cloud.Metastore.V1alpha.MetadataImport,
    json_name: "metadataImport",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.UpdateMetadataImportRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :metadata_import, 2,
    type: Google.Cloud.Metastore.V1alpha.MetadataImport,
    json_name: "metadataImport",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.ListBackupsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.ListBackupsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Metastore.V1alpha.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Metastore.V1alpha.GetBackupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.CreateBackupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_id, 2, type: :string, json_name: "backupId", deprecated: false
  field :backup, 3, type: Google.Cloud.Metastore.V1alpha.Backup, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.DeleteBackupRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.ExportMetadataRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :destination_gcs_folder, 2, type: :string, json_name: "destinationGcsFolder", oneof: 0
  field :service, 1, type: :string, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false

  field :database_dump_type, 4,
    type: Google.Cloud.Metastore.V1alpha.DatabaseDumpSpec.Type,
    json_name: "databaseDumpType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.RestoreServiceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
  field :backup, 2, type: :string, deprecated: false

  field :restore_type, 3,
    type: Google.Cloud.Metastore.V1alpha.Restore.RestoreType,
    json_name: "restoreType",
    enum: true,
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Metastore.V1alpha.LocationMetadata.HiveMetastoreVersion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :version, 1, type: :string
  field :is_default, 2, type: :bool, json_name: "isDefault"
end

defmodule Google.Cloud.Metastore.V1alpha.LocationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :supported_hive_metastore_versions, 1,
    repeated: true,
    type: Google.Cloud.Metastore.V1alpha.LocationMetadata.HiveMetastoreVersion,
    json_name: "supportedHiveMetastoreVersions"
end

defmodule Google.Cloud.Metastore.V1alpha.DatabaseDumpSpec do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Cloud.Metastore.V1alpha.DataprocMetastore.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.metastore.v1alpha.DataprocMetastore",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListServices,
      Google.Cloud.Metastore.V1alpha.ListServicesRequest,
      Google.Cloud.Metastore.V1alpha.ListServicesResponse

  rpc :GetService,
      Google.Cloud.Metastore.V1alpha.GetServiceRequest,
      Google.Cloud.Metastore.V1alpha.Service

  rpc :CreateService,
      Google.Cloud.Metastore.V1alpha.CreateServiceRequest,
      Google.Longrunning.Operation

  rpc :UpdateService,
      Google.Cloud.Metastore.V1alpha.UpdateServiceRequest,
      Google.Longrunning.Operation

  rpc :DeleteService,
      Google.Cloud.Metastore.V1alpha.DeleteServiceRequest,
      Google.Longrunning.Operation

  rpc :ListMetadataImports,
      Google.Cloud.Metastore.V1alpha.ListMetadataImportsRequest,
      Google.Cloud.Metastore.V1alpha.ListMetadataImportsResponse

  rpc :GetMetadataImport,
      Google.Cloud.Metastore.V1alpha.GetMetadataImportRequest,
      Google.Cloud.Metastore.V1alpha.MetadataImport

  rpc :CreateMetadataImport,
      Google.Cloud.Metastore.V1alpha.CreateMetadataImportRequest,
      Google.Longrunning.Operation

  rpc :UpdateMetadataImport,
      Google.Cloud.Metastore.V1alpha.UpdateMetadataImportRequest,
      Google.Longrunning.Operation

  rpc :ExportMetadata,
      Google.Cloud.Metastore.V1alpha.ExportMetadataRequest,
      Google.Longrunning.Operation

  rpc :RestoreService,
      Google.Cloud.Metastore.V1alpha.RestoreServiceRequest,
      Google.Longrunning.Operation

  rpc :ListBackups,
      Google.Cloud.Metastore.V1alpha.ListBackupsRequest,
      Google.Cloud.Metastore.V1alpha.ListBackupsResponse

  rpc :GetBackup,
      Google.Cloud.Metastore.V1alpha.GetBackupRequest,
      Google.Cloud.Metastore.V1alpha.Backup

  rpc :CreateBackup,
      Google.Cloud.Metastore.V1alpha.CreateBackupRequest,
      Google.Longrunning.Operation

  rpc :DeleteBackup,
      Google.Cloud.Metastore.V1alpha.DeleteBackupRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Metastore.V1alpha.DataprocMetastore.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Metastore.V1alpha.DataprocMetastore.Service
end