defmodule Google.Cloud.Backupdr.V1.BackupConfigState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :BACKUP_CONFIG_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :PASSIVE, 2
end

defmodule Google.Cloud.Backupdr.V1.BackupView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :BACKUP_VIEW_UNSPECIFIED, 0
  field :BACKUP_VIEW_BASIC, 1
  field :BACKUP_VIEW_FULL, 2
end

defmodule Google.Cloud.Backupdr.V1.BackupVaultView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :BACKUP_VAULT_VIEW_UNSPECIFIED, 0
  field :BACKUP_VAULT_VIEW_BASIC, 1
  field :BACKUP_VAULT_VIEW_FULL, 2
end

defmodule Google.Cloud.Backupdr.V1.BackupVault.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :ERROR, 4
end

defmodule Google.Cloud.Backupdr.V1.BackupVault.AccessRestriction do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACCESS_RESTRICTION_UNSPECIFIED, 0
  field :WITHIN_PROJECT, 1
  field :WITHIN_ORGANIZATION, 2
  field :UNRESTRICTED, 3
end

defmodule Google.Cloud.Backupdr.V1.DataSource.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :ERROR, 4
end

defmodule Google.Cloud.Backupdr.V1.BackupConfigInfo.LastBackupState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LAST_BACKUP_STATE_UNSPECIFIED, 0
  field :FIRST_BACKUP_PENDING, 1
  field :SUCCEEDED, 2
  field :FAILED, 3
  field :PERMISSION_DENIED, 4
end

defmodule Google.Cloud.Backupdr.V1.Backup.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :ERROR, 4
end

defmodule Google.Cloud.Backupdr.V1.Backup.BackupType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :BACKUP_TYPE_UNSPECIFIED, 0
  field :SCHEDULED, 1
  field :ON_DEMAND, 2
end

defmodule Google.Cloud.Backupdr.V1.BackupVault.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.BackupVault.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.BackupVault do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, proto3_optional: true, type: :string, deprecated: false

  field :labels, 3,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupVault.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :backup_minimum_enforced_retention_duration, 20,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "backupMinimumEnforcedRetentionDuration",
    deprecated: false

  field :deletable, 8, proto3_optional: true, type: :bool, deprecated: false
  field :etag, 9, proto3_optional: true, type: :string, deprecated: false

  field :state, 10,
    type: Google.Cloud.Backupdr.V1.BackupVault.State,
    enum: true,
    deprecated: false

  field :effective_time, 12,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "effectiveTime",
    deprecated: false

  field :backup_count, 17, type: :int64, json_name: "backupCount", deprecated: false
  field :service_account, 18, type: :string, json_name: "serviceAccount", deprecated: false
  field :total_stored_bytes, 19, type: :int64, json_name: "totalStoredBytes", deprecated: false
  field :uid, 21, type: :string, deprecated: false

  field :annotations, 22,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupVault.AnnotationsEntry,
    map: true,
    deprecated: false

  field :access_restriction, 24,
    type: Google.Cloud.Backupdr.V1.BackupVault.AccessRestriction,
    json_name: "accessRestriction",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DataSource.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.DataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :source_resource, 0

  field :name, 1, type: :string, deprecated: false
  field :state, 21, type: Google.Cloud.Backupdr.V1.DataSource.State, enum: true, deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.DataSource.LabelsEntry,
    map: true,
    deprecated: false

  field :create_time, 5,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :backup_count, 7, proto3_optional: true, type: :int64, json_name: "backupCount"
  field :etag, 14, proto3_optional: true, type: :string

  field :total_stored_bytes, 23,
    proto3_optional: true,
    type: :int64,
    json_name: "totalStoredBytes"

  field :config_state, 24,
    type: Google.Cloud.Backupdr.V1.BackupConfigState,
    json_name: "configState",
    enum: true,
    deprecated: false

  field :backup_config_info, 25,
    type: Google.Cloud.Backupdr.V1.BackupConfigInfo,
    json_name: "backupConfigInfo",
    deprecated: false

  field :data_source_gcp_resource, 26,
    type: Google.Cloud.Backupdr.V1.DataSourceGcpResource,
    json_name: "dataSourceGcpResource",
    oneof: 0

  field :data_source_backup_appliance_application, 27,
    type: Google.Cloud.Backupdr.V1.DataSourceBackupApplianceApplication,
    json_name: "dataSourceBackupApplianceApplication",
    oneof: 0
end

defmodule Google.Cloud.Backupdr.V1.BackupConfigInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :backup_config, 0

  field :last_backup_state, 1,
    type: Google.Cloud.Backupdr.V1.BackupConfigInfo.LastBackupState,
    json_name: "lastBackupState",
    enum: true,
    deprecated: false

  field :last_successful_backup_consistency_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "lastSuccessfulBackupConsistencyTime",
    deprecated: false

  field :last_backup_error, 3,
    type: Google.Rpc.Status,
    json_name: "lastBackupError",
    deprecated: false

  field :gcp_backup_config, 4,
    type: Google.Cloud.Backupdr.V1.GcpBackupConfig,
    json_name: "gcpBackupConfig",
    oneof: 0

  field :backup_appliance_backup_config, 5,
    type: Google.Cloud.Backupdr.V1.BackupApplianceBackupConfig,
    json_name: "backupApplianceBackupConfig",
    oneof: 0
end

defmodule Google.Cloud.Backupdr.V1.GcpBackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backup_plan, 1, type: :string, json_name: "backupPlan", deprecated: false
  field :backup_plan_description, 2, type: :string, json_name: "backupPlanDescription"

  field :backup_plan_association, 3,
    type: :string,
    json_name: "backupPlanAssociation",
    deprecated: false

  field :backup_plan_rules, 4, repeated: true, type: :string, json_name: "backupPlanRules"
end

defmodule Google.Cloud.Backupdr.V1.BackupApplianceBackupConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backup_appliance_name, 1, type: :string, json_name: "backupApplianceName"
  field :backup_appliance_id, 2, type: :int64, json_name: "backupApplianceId"
  field :sla_id, 3, type: :int64, json_name: "slaId"
  field :application_name, 4, type: :string, json_name: "applicationName"
  field :host_name, 5, type: :string, json_name: "hostName"
  field :slt_name, 6, type: :string, json_name: "sltName"
  field :slp_name, 7, type: :string, json_name: "slpName"
end

defmodule Google.Cloud.Backupdr.V1.DataSourceGcpResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :gcp_resource_properties, 0

  field :gcp_resourcename, 1, type: :string, json_name: "gcpResourcename", deprecated: false
  field :location, 2, type: :string
  field :type, 3, type: :string

  field :compute_instance_datasource_properties, 4,
    type: Google.Cloud.Backupdr.V1.ComputeInstanceDataSourceProperties,
    json_name: "computeInstanceDatasourceProperties",
    oneof: 0
end

defmodule Google.Cloud.Backupdr.V1.DataSourceBackupApplianceApplication do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :application_name, 1, type: :string, json_name: "applicationName"
  field :backup_appliance, 2, type: :string, json_name: "backupAppliance"
  field :appliance_id, 3, type: :int64, json_name: "applianceId"
  field :type, 4, type: :string
  field :application_id, 8, type: :int64, json_name: "applicationId"
  field :hostname, 6, type: :string
  field :host_id, 7, type: :int64, json_name: "hostId"
end

defmodule Google.Cloud.Backupdr.V1.ServiceLockInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :operation, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.BackupApplianceLockInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :lock_source, 0

  field :backup_appliance_id, 1, type: :int64, json_name: "backupApplianceId", deprecated: false

  field :backup_appliance_name, 2,
    type: :string,
    json_name: "backupApplianceName",
    deprecated: false

  field :lock_reason, 5, type: :string, json_name: "lockReason", deprecated: false
  field :job_name, 6, type: :string, json_name: "jobName", oneof: 0
  field :backup_image, 7, type: :string, json_name: "backupImage", oneof: 0
  field :sla_id, 8, type: :int64, json_name: "slaId", oneof: 0
end

defmodule Google.Cloud.Backupdr.V1.BackupLock do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :ClientLockInfo, 0

  field :lock_until_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "lockUntilTime",
    deprecated: false

  field :backup_appliance_lock_info, 3,
    type: Google.Cloud.Backupdr.V1.BackupApplianceLockInfo,
    json_name: "backupApplianceLockInfo",
    oneof: 0

  field :service_lock_info, 4,
    type: Google.Cloud.Backupdr.V1.ServiceLockInfo,
    json_name: "serviceLockInfo",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.Backup.GCPBackupPlanInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backup_plan, 1, type: :string, json_name: "backupPlan", deprecated: false
  field :backup_plan_rule_id, 2, type: :string, json_name: "backupPlanRuleId"
end

defmodule Google.Cloud.Backupdr.V1.Backup.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Backupdr.V1.Backup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :backup_properties, 0

  oneof :plan_info, 1

  field :name, 1, type: :string, deprecated: false
  field :description, 2, proto3_optional: true, type: :string, deprecated: false

  field :create_time, 3,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 5,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.Backup.LabelsEntry,
    map: true,
    deprecated: false

  field :enforced_retention_end_time, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "enforcedRetentionEndTime",
    deprecated: false

  field :expire_time, 7,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    deprecated: false

  field :consistency_time, 9,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "consistencyTime",
    deprecated: false

  field :etag, 11, proto3_optional: true, type: :string, deprecated: false
  field :state, 15, type: Google.Cloud.Backupdr.V1.Backup.State, enum: true, deprecated: false

  field :service_locks, 17,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupLock,
    json_name: "serviceLocks",
    deprecated: false

  field :backup_appliance_locks, 18,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupLock,
    json_name: "backupApplianceLocks",
    deprecated: false

  field :compute_instance_backup_properties, 19,
    type: Google.Cloud.Backupdr.V1.ComputeInstanceBackupProperties,
    json_name: "computeInstanceBackupProperties",
    oneof: 0,
    deprecated: false

  field :backup_appliance_backup_properties, 21,
    type: Google.Cloud.Backupdr.V1.BackupApplianceBackupProperties,
    json_name: "backupApplianceBackupProperties",
    oneof: 0,
    deprecated: false

  field :backup_type, 20,
    type: Google.Cloud.Backupdr.V1.Backup.BackupType,
    json_name: "backupType",
    enum: true,
    deprecated: false

  field :gcp_backup_plan_info, 22,
    type: Google.Cloud.Backupdr.V1.Backup.GCPBackupPlanInfo,
    json_name: "gcpBackupPlanInfo",
    oneof: 1,
    deprecated: false

  field :resource_size_bytes, 23, type: :int64, json_name: "resourceSizeBytes", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.CreateBackupVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backup_vault_id, 2, type: :string, json_name: "backupVaultId", deprecated: false

  field :backup_vault, 3,
    type: Google.Cloud.Backupdr.V1.BackupVault,
    json_name: "backupVault",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListBackupVaultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :view, 6, type: Google.Cloud.Backupdr.V1.BackupVaultView, enum: true, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListBackupVaultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backup_vaults, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupVault,
    json_name: "backupVaults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Backupdr.V1.FetchUsableBackupVaultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.FetchUsableBackupVaultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backup_vaults, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.BackupVault,
    json_name: "backupVaults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Backupdr.V1.GetBackupVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Backupdr.V1.BackupVaultView, enum: true, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.UpdateBackupVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :backup_vault, 2,
    type: Google.Cloud.Backupdr.V1.BackupVault,
    json_name: "backupVault",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :force, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DeleteBackupVaultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :force, 3, type: :bool, deprecated: false
  field :etag, 4, type: :string
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 6, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListDataSourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListDataSourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_sources, 1,
    repeated: true,
    type: Google.Cloud.Backupdr.V1.DataSource,
    json_name: "dataSources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Backupdr.V1.GetDataSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.UpdateDataSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :data_source, 2,
    type: Google.Cloud.Backupdr.V1.DataSource,
    json_name: "dataSource",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.RemoveDataSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.SetInternalStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_source, 1, type: :string, json_name: "dataSource", deprecated: false
  field :value, 2, type: :bytes, deprecated: false

  field :backup_config_state, 3,
    type: Google.Cloud.Backupdr.V1.BackupConfigState,
    json_name: "backupConfigState",
    enum: true,
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.SetInternalStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Backupdr.V1.InitiateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_source, 1, type: :string, json_name: "dataSource", deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :backup_id, 5, type: :string, json_name: "backupId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.InitiateBackupResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backup, 1, type: :string
  field :new_backup_generation_id, 2, type: :int32, json_name: "newBackupGenerationId"
  field :base_backup_generation_id, 3, type: :int32, json_name: "baseBackupGenerationId"
end

defmodule Google.Cloud.Backupdr.V1.AbandonBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_source, 1, type: :string, json_name: "dataSource", deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.FinalizeBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_source, 1, type: :string, json_name: "dataSource", deprecated: false
  field :description, 2, proto3_optional: true, type: :string

  field :consistency_time, 3,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "consistencyTime"

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :backup_id, 5, type: :string, json_name: "backupId", deprecated: false

  field :recovery_range_start_time, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "recoveryRangeStartTime"

  field :recovery_range_end_time, 7,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "recoveryRangeEndTime"

  field :retention_duration, 9,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "retentionDuration"
end

defmodule Google.Cloud.Backupdr.V1.FetchAccessTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :generation_id, 2, type: :int32, json_name: "generationId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.FetchAccessTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :read_location, 1, type: :string, json_name: "readLocation"
  field :write_location, 2, type: :string, json_name: "writeLocation"
  field :token, 3, type: :string
  field :expire_time, 4, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Cloud.Backupdr.V1.ListBackupsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :view, 6, type: Google.Cloud.Backupdr.V1.BackupView, enum: true, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.ListBackupsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :backups, 1, repeated: true, type: Google.Cloud.Backupdr.V1.Backup
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Backupdr.V1.GetBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Backupdr.V1.BackupView, enum: true, deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.UpdateBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :backup, 2, type: Google.Cloud.Backupdr.V1.Backup, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.DeleteBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Backupdr.V1.RestoreBackupRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :target_environment, 0

  oneof :instance_properties, 1

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false

  field :compute_instance_target_environment, 3,
    type: Google.Cloud.Backupdr.V1.ComputeInstanceTargetEnvironment,
    json_name: "computeInstanceTargetEnvironment",
    oneof: 0

  field :compute_instance_restore_properties, 4,
    type: Google.Cloud.Backupdr.V1.ComputeInstanceRestoreProperties,
    json_name: "computeInstanceRestoreProperties",
    oneof: 1
end

defmodule Google.Cloud.Backupdr.V1.RestoreBackupResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_resource, 1,
    type: Google.Cloud.Backupdr.V1.TargetResource,
    json_name: "targetResource"
end

defmodule Google.Cloud.Backupdr.V1.TargetResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :target_resource_info, 0

  field :gcp_resource, 1,
    type: Google.Cloud.Backupdr.V1.GcpResource,
    json_name: "gcpResource",
    oneof: 0
end

defmodule Google.Cloud.Backupdr.V1.GcpResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :gcp_resourcename, 1, type: :string, json_name: "gcpResourcename"
  field :location, 2, type: :string
  field :type, 3, type: :string
end