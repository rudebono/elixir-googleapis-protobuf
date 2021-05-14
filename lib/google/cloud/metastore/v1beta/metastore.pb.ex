defmodule Google.Cloud.Metastore.V1beta.Service.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CREATING
          | :ACTIVE
          | :SUSPENDING
          | :SUSPENDED
          | :UPDATING
          | :DELETING
          | :ERROR

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :ACTIVE, 2

  field :SUSPENDING, 3

  field :SUSPENDED, 4

  field :UPDATING, 5

  field :DELETING, 6

  field :ERROR, 7
end

defmodule Google.Cloud.Metastore.V1beta.Service.Tier do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TIER_UNSPECIFIED | :DEVELOPER | :ENTERPRISE

  field :TIER_UNSPECIFIED, 0

  field :DEVELOPER, 1

  field :ENTERPRISE, 3
end

defmodule Google.Cloud.Metastore.V1beta.Service.ReleaseChannel do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RELEASE_CHANNEL_UNSPECIFIED | :CANARY | :STABLE

  field :RELEASE_CHANNEL_UNSPECIFIED, 0

  field :CANARY, 1

  field :STABLE, 2
end

defmodule Google.Cloud.Metastore.V1beta.MetadataImport.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :UPDATING | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :SUCCEEDED, 2

  field :UPDATING, 3

  field :FAILED, 4
end

defmodule Google.Cloud.Metastore.V1beta.MetadataImport.DatabaseDump.DatabaseType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATABASE_TYPE_UNSPECIFIED | :MYSQL

  field :DATABASE_TYPE_UNSPECIFIED, 0

  field :MYSQL, 1
end

defmodule Google.Cloud.Metastore.V1beta.MetadataExport.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :SUCCEEDED, 2

  field :FAILED, 3

  field :CANCELLED, 4
end

defmodule Google.Cloud.Metastore.V1beta.Backup.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :DELETING | :ACTIVE | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :CREATING, 1

  field :DELETING, 2

  field :ACTIVE, 3

  field :FAILED, 4
end

defmodule Google.Cloud.Metastore.V1beta.Restore.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :RUNNING | :SUCCEEDED | :FAILED | :CANCELLED

  field :STATE_UNSPECIFIED, 0

  field :RUNNING, 1

  field :SUCCEEDED, 2

  field :FAILED, 3

  field :CANCELLED, 4
end

defmodule Google.Cloud.Metastore.V1beta.Restore.RestoreType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESTORE_TYPE_UNSPECIFIED | :FULL | :METADATA_ONLY

  field :RESTORE_TYPE_UNSPECIFIED, 0

  field :FULL, 1

  field :METADATA_ONLY, 2
end

defmodule Google.Cloud.Metastore.V1beta.DatabaseDumpSpec.Type do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TYPE_UNSPECIFIED | :MYSQL

  field :TYPE_UNSPECIFIED, 0

  field :MYSQL, 1
end

defmodule Google.Cloud.Metastore.V1beta.Service.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metastore_config: {atom, any},
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()},
          network: String.t(),
          endpoint_uri: String.t(),
          port: integer,
          state: Google.Cloud.Metastore.V1beta.Service.State.t(),
          state_message: String.t(),
          artifact_gcs_uri: String.t(),
          tier: Google.Cloud.Metastore.V1beta.Service.Tier.t(),
          metadata_integration: Google.Cloud.Metastore.V1beta.MetadataIntegration.t() | nil,
          maintenance_window: Google.Cloud.Metastore.V1beta.MaintenanceWindow.t() | nil,
          uid: String.t(),
          metadata_management_activity:
            Google.Cloud.Metastore.V1beta.MetadataManagementActivity.t() | nil,
          release_channel: Google.Cloud.Metastore.V1beta.Service.ReleaseChannel.t()
        }

  defstruct [
    :metastore_config,
    :name,
    :create_time,
    :update_time,
    :labels,
    :network,
    :endpoint_uri,
    :port,
    :state,
    :state_message,
    :artifact_gcs_uri,
    :tier,
    :metadata_integration,
    :maintenance_window,
    :uid,
    :metadata_management_activity,
    :release_channel
  ]

  oneof :metastore_config, 0

  field :hive_metastore_config, 5,
    type: Google.Cloud.Metastore.V1beta.HiveMetastoreConfig,
    oneof: 0

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :update_time, 3, type: Google.Protobuf.Timestamp

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Metastore.V1beta.Service.LabelsEntry,
    map: true

  field :network, 7, type: :string
  field :endpoint_uri, 8, type: :string
  field :port, 9, type: :int32
  field :state, 10, type: Google.Cloud.Metastore.V1beta.Service.State, enum: true
  field :state_message, 11, type: :string
  field :artifact_gcs_uri, 12, type: :string
  field :tier, 13, type: Google.Cloud.Metastore.V1beta.Service.Tier, enum: true
  field :metadata_integration, 14, type: Google.Cloud.Metastore.V1beta.MetadataIntegration
  field :maintenance_window, 15, type: Google.Cloud.Metastore.V1beta.MaintenanceWindow
  field :uid, 16, type: :string

  field :metadata_management_activity, 17,
    type: Google.Cloud.Metastore.V1beta.MetadataManagementActivity

  field :release_channel, 19,
    type: Google.Cloud.Metastore.V1beta.Service.ReleaseChannel,
    enum: true
end

defmodule Google.Cloud.Metastore.V1beta.MetadataIntegration do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_catalog_config: Google.Cloud.Metastore.V1beta.DataCatalogConfig.t() | nil
        }

  defstruct [:data_catalog_config]

  field :data_catalog_config, 1, type: Google.Cloud.Metastore.V1beta.DataCatalogConfig
end

defmodule Google.Cloud.Metastore.V1beta.DataCatalogConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean
        }

  defstruct [:enabled]

  field :enabled, 2, type: :bool
end

defmodule Google.Cloud.Metastore.V1beta.MaintenanceWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hour_of_day: Google.Protobuf.Int32Value.t() | nil,
          day_of_week: Google.Type.DayOfWeek.t()
        }

  defstruct [:hour_of_day, :day_of_week]

  field :hour_of_day, 1, type: Google.Protobuf.Int32Value
  field :day_of_week, 2, type: Google.Type.DayOfWeek, enum: true
end

defmodule Google.Cloud.Metastore.V1beta.HiveMetastoreConfig.ConfigOverridesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.HiveMetastoreConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          config_overrides: %{String.t() => String.t()},
          kerberos_config: Google.Cloud.Metastore.V1beta.KerberosConfig.t() | nil
        }

  defstruct [:version, :config_overrides, :kerberos_config]

  field :version, 1, type: :string

  field :config_overrides, 2,
    repeated: true,
    type: Google.Cloud.Metastore.V1beta.HiveMetastoreConfig.ConfigOverridesEntry,
    map: true

  field :kerberos_config, 3, type: Google.Cloud.Metastore.V1beta.KerberosConfig
end

defmodule Google.Cloud.Metastore.V1beta.KerberosConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keytab: Google.Cloud.Metastore.V1beta.Secret.t() | nil,
          principal: String.t(),
          krb5_config_gcs_uri: String.t()
        }

  defstruct [:keytab, :principal, :krb5_config_gcs_uri]

  field :keytab, 1, type: Google.Cloud.Metastore.V1beta.Secret
  field :principal, 2, type: :string
  field :krb5_config_gcs_uri, 3, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.Secret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: {atom, any}
        }

  defstruct [:value]

  oneof :value, 0
  field :cloud_secret, 2, type: :string, oneof: 0
end

defmodule Google.Cloud.Metastore.V1beta.MetadataManagementActivity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_exports: [Google.Cloud.Metastore.V1beta.MetadataExport.t()],
          restores: [Google.Cloud.Metastore.V1beta.Restore.t()]
        }

  defstruct [:metadata_exports, :restores]

  field :metadata_exports, 1, repeated: true, type: Google.Cloud.Metastore.V1beta.MetadataExport
  field :restores, 2, repeated: true, type: Google.Cloud.Metastore.V1beta.Restore
end

defmodule Google.Cloud.Metastore.V1beta.MetadataImport.DatabaseDump do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database_type:
            Google.Cloud.Metastore.V1beta.MetadataImport.DatabaseDump.DatabaseType.t(),
          gcs_uri: String.t(),
          source_database: String.t(),
          type: Google.Cloud.Metastore.V1beta.DatabaseDumpSpec.Type.t()
        }

  defstruct [:database_type, :gcs_uri, :source_database, :type]

  field :database_type, 1,
    type: Google.Cloud.Metastore.V1beta.MetadataImport.DatabaseDump.DatabaseType,
    deprecated: true,
    enum: true

  field :gcs_uri, 2, type: :string
  field :source_database, 3, type: :string, deprecated: true
  field :type, 4, type: Google.Cloud.Metastore.V1beta.DatabaseDumpSpec.Type, enum: true
end

defmodule Google.Cloud.Metastore.V1beta.MetadataImport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata: {atom, any},
          name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Metastore.V1beta.MetadataImport.State.t()
        }

  defstruct [:metadata, :name, :description, :create_time, :update_time, :state]

  oneof :metadata, 0

  field :database_dump, 6,
    type: Google.Cloud.Metastore.V1beta.MetadataImport.DatabaseDump,
    oneof: 0

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
  field :state, 5, type: Google.Cloud.Metastore.V1beta.MetadataImport.State, enum: true
end

defmodule Google.Cloud.Metastore.V1beta.MetadataExport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Metastore.V1beta.MetadataExport.State.t(),
          database_dump_type: Google.Cloud.Metastore.V1beta.DatabaseDumpSpec.Type.t()
        }

  defstruct [:destination, :start_time, :end_time, :state, :database_dump_type]

  oneof :destination, 0
  field :destination_gcs_uri, 4, type: :string, oneof: 0
  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :state, 3, type: Google.Cloud.Metastore.V1beta.MetadataExport.State, enum: true

  field :database_dump_type, 5,
    type: Google.Cloud.Metastore.V1beta.DatabaseDumpSpec.Type,
    enum: true
end

defmodule Google.Cloud.Metastore.V1beta.Backup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Metastore.V1beta.Backup.State.t(),
          service_revision: Google.Cloud.Metastore.V1beta.Service.t() | nil,
          description: String.t()
        }

  defstruct [:name, :create_time, :end_time, :state, :service_revision, :description]

  field :name, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :end_time, 3, type: Google.Protobuf.Timestamp
  field :state, 4, type: Google.Cloud.Metastore.V1beta.Backup.State, enum: true
  field :service_revision, 5, type: Google.Cloud.Metastore.V1beta.Service
  field :description, 6, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.Restore do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Metastore.V1beta.Restore.State.t(),
          backup: String.t(),
          type: Google.Cloud.Metastore.V1beta.Restore.RestoreType.t(),
          details: String.t()
        }

  defstruct [:start_time, :end_time, :state, :backup, :type, :details]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :state, 3, type: Google.Cloud.Metastore.V1beta.Restore.State, enum: true
  field :backup, 4, type: :string
  field :type, 5, type: Google.Cloud.Metastore.V1beta.Restore.RestoreType, enum: true
  field :details, 6, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.ListServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Cloud.Metastore.V1beta.Service.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:services, :next_page_token, :unreachable]

  field :services, 1, repeated: true, type: Google.Cloud.Metastore.V1beta.Service
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.CreateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_id: String.t(),
          service: Google.Cloud.Metastore.V1beta.Service.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :service_id, :service, :request_id]

  field :parent, 1, type: :string
  field :service_id, 2, type: :string
  field :service, 3, type: Google.Cloud.Metastore.V1beta.Service
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.UpdateServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          service: Google.Cloud.Metastore.V1beta.Service.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :service, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :service, 2, type: Google.Cloud.Metastore.V1beta.Service
  field :request_id, 3, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.DeleteServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.ListMetadataImportsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.ListMetadataImportsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metadata_imports: [Google.Cloud.Metastore.V1beta.MetadataImport.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:metadata_imports, :next_page_token, :unreachable]

  field :metadata_imports, 1, repeated: true, type: Google.Cloud.Metastore.V1beta.MetadataImport
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.GetMetadataImportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.CreateMetadataImportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          metadata_import_id: String.t(),
          metadata_import: Google.Cloud.Metastore.V1beta.MetadataImport.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :metadata_import_id, :metadata_import, :request_id]

  field :parent, 1, type: :string
  field :metadata_import_id, 2, type: :string
  field :metadata_import, 3, type: Google.Cloud.Metastore.V1beta.MetadataImport
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.UpdateMetadataImportRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          metadata_import: Google.Cloud.Metastore.V1beta.MetadataImport.t() | nil,
          request_id: String.t()
        }

  defstruct [:update_mask, :metadata_import, :request_id]

  field :update_mask, 1, type: Google.Protobuf.FieldMask
  field :metadata_import, 2, type: Google.Cloud.Metastore.V1beta.MetadataImport
  field :request_id, 3, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.ListBackupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter, :order_by]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :order_by, 5, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.ListBackupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          backups: [Google.Cloud.Metastore.V1beta.Backup.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:backups, :next_page_token, :unreachable]

  field :backups, 1, repeated: true, type: Google.Cloud.Metastore.V1beta.Backup
  field :next_page_token, 2, type: :string
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.GetBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.CreateBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          backup_id: String.t(),
          backup: Google.Cloud.Metastore.V1beta.Backup.t() | nil,
          request_id: String.t()
        }

  defstruct [:parent, :backup_id, :backup, :request_id]

  field :parent, 1, type: :string
  field :backup_id, 2, type: :string
  field :backup, 3, type: Google.Cloud.Metastore.V1beta.Backup
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.DeleteBackupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          request_id: String.t()
        }

  defstruct [:name, :request_id]

  field :name, 1, type: :string
  field :request_id, 2, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.ExportMetadataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          service: String.t(),
          request_id: String.t(),
          database_dump_type: Google.Cloud.Metastore.V1beta.DatabaseDumpSpec.Type.t()
        }

  defstruct [:destination, :service, :request_id, :database_dump_type]

  oneof :destination, 0
  field :destination_gcs_folder, 2, type: :string, oneof: 0
  field :service, 1, type: :string
  field :request_id, 3, type: :string

  field :database_dump_type, 4,
    type: Google.Cloud.Metastore.V1beta.DatabaseDumpSpec.Type,
    enum: true
end

defmodule Google.Cloud.Metastore.V1beta.RestoreServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service: String.t(),
          backup: String.t(),
          restore_type: Google.Cloud.Metastore.V1beta.Restore.RestoreType.t(),
          request_id: String.t()
        }

  defstruct [:service, :backup, :restore_type, :request_id]

  field :service, 1, type: :string
  field :backup, 2, type: :string
  field :restore_type, 3, type: Google.Cloud.Metastore.V1beta.Restore.RestoreType, enum: true
  field :request_id, 4, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t()
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string
  field :requested_cancellation, 6, type: :bool
  field :api_version, 7, type: :string
end

defmodule Google.Cloud.Metastore.V1beta.LocationMetadata.HiveMetastoreVersion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          is_default: boolean
        }

  defstruct [:version, :is_default]

  field :version, 1, type: :string
  field :is_default, 2, type: :bool
end

defmodule Google.Cloud.Metastore.V1beta.LocationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          supported_hive_metastore_versions: [
            Google.Cloud.Metastore.V1beta.LocationMetadata.HiveMetastoreVersion.t()
          ]
        }

  defstruct [:supported_hive_metastore_versions]

  field :supported_hive_metastore_versions, 1,
    repeated: true,
    type: Google.Cloud.Metastore.V1beta.LocationMetadata.HiveMetastoreVersion
end

defmodule Google.Cloud.Metastore.V1beta.DatabaseDumpSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Cloud.Metastore.V1beta.DataprocMetastore.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.metastore.v1beta.DataprocMetastore"

  rpc :ListServices,
      Google.Cloud.Metastore.V1beta.ListServicesRequest,
      Google.Cloud.Metastore.V1beta.ListServicesResponse

  rpc :GetService,
      Google.Cloud.Metastore.V1beta.GetServiceRequest,
      Google.Cloud.Metastore.V1beta.Service

  rpc :CreateService,
      Google.Cloud.Metastore.V1beta.CreateServiceRequest,
      Google.Longrunning.Operation

  rpc :UpdateService,
      Google.Cloud.Metastore.V1beta.UpdateServiceRequest,
      Google.Longrunning.Operation

  rpc :DeleteService,
      Google.Cloud.Metastore.V1beta.DeleteServiceRequest,
      Google.Longrunning.Operation

  rpc :ListMetadataImports,
      Google.Cloud.Metastore.V1beta.ListMetadataImportsRequest,
      Google.Cloud.Metastore.V1beta.ListMetadataImportsResponse

  rpc :GetMetadataImport,
      Google.Cloud.Metastore.V1beta.GetMetadataImportRequest,
      Google.Cloud.Metastore.V1beta.MetadataImport

  rpc :CreateMetadataImport,
      Google.Cloud.Metastore.V1beta.CreateMetadataImportRequest,
      Google.Longrunning.Operation

  rpc :UpdateMetadataImport,
      Google.Cloud.Metastore.V1beta.UpdateMetadataImportRequest,
      Google.Longrunning.Operation

  rpc :ExportMetadata,
      Google.Cloud.Metastore.V1beta.ExportMetadataRequest,
      Google.Longrunning.Operation

  rpc :RestoreService,
      Google.Cloud.Metastore.V1beta.RestoreServiceRequest,
      Google.Longrunning.Operation

  rpc :ListBackups,
      Google.Cloud.Metastore.V1beta.ListBackupsRequest,
      Google.Cloud.Metastore.V1beta.ListBackupsResponse

  rpc :GetBackup,
      Google.Cloud.Metastore.V1beta.GetBackupRequest,
      Google.Cloud.Metastore.V1beta.Backup

  rpc :CreateBackup,
      Google.Cloud.Metastore.V1beta.CreateBackupRequest,
      Google.Longrunning.Operation

  rpc :DeleteBackup,
      Google.Cloud.Metastore.V1beta.DeleteBackupRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Metastore.V1beta.DataprocMetastore.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Metastore.V1beta.DataprocMetastore.Service
end
