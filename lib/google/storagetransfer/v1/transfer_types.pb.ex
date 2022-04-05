defmodule Google.Storagetransfer.V1.AgentPool.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :CREATED | :DELETING

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :DELETING, 3
end
defmodule Google.Storagetransfer.V1.TransferOptions.OverwriteWhen do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :OVERWRITE_WHEN_UNSPECIFIED | :DIFFERENT | :NEVER | :ALWAYS

  field :OVERWRITE_WHEN_UNSPECIFIED, 0
  field :DIFFERENT, 1
  field :NEVER, 2
  field :ALWAYS, 3
end
defmodule Google.Storagetransfer.V1.MetadataOptions.Symlink do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SYMLINK_UNSPECIFIED | :SYMLINK_SKIP | :SYMLINK_PRESERVE

  field :SYMLINK_UNSPECIFIED, 0
  field :SYMLINK_SKIP, 1
  field :SYMLINK_PRESERVE, 2
end
defmodule Google.Storagetransfer.V1.MetadataOptions.Mode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :MODE_UNSPECIFIED | :MODE_SKIP | :MODE_PRESERVE

  field :MODE_UNSPECIFIED, 0
  field :MODE_SKIP, 1
  field :MODE_PRESERVE, 2
end
defmodule Google.Storagetransfer.V1.MetadataOptions.GID do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :GID_UNSPECIFIED | :GID_SKIP | :GID_NUMBER

  field :GID_UNSPECIFIED, 0
  field :GID_SKIP, 1
  field :GID_NUMBER, 2
end
defmodule Google.Storagetransfer.V1.MetadataOptions.UID do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UID_UNSPECIFIED | :UID_SKIP | :UID_NUMBER

  field :UID_UNSPECIFIED, 0
  field :UID_SKIP, 1
  field :UID_NUMBER, 2
end
defmodule Google.Storagetransfer.V1.MetadataOptions.Acl do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :ACL_UNSPECIFIED | :ACL_DESTINATION_BUCKET_DEFAULT | :ACL_PRESERVE

  field :ACL_UNSPECIFIED, 0
  field :ACL_DESTINATION_BUCKET_DEFAULT, 1
  field :ACL_PRESERVE, 2
end
defmodule Google.Storagetransfer.V1.MetadataOptions.StorageClass do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STORAGE_CLASS_UNSPECIFIED
          | :STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT
          | :STORAGE_CLASS_PRESERVE
          | :STORAGE_CLASS_STANDARD
          | :STORAGE_CLASS_NEARLINE
          | :STORAGE_CLASS_COLDLINE
          | :STORAGE_CLASS_ARCHIVE

  field :STORAGE_CLASS_UNSPECIFIED, 0
  field :STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT, 1
  field :STORAGE_CLASS_PRESERVE, 2
  field :STORAGE_CLASS_STANDARD, 3
  field :STORAGE_CLASS_NEARLINE, 4
  field :STORAGE_CLASS_COLDLINE, 5
  field :STORAGE_CLASS_ARCHIVE, 6
end
defmodule Google.Storagetransfer.V1.MetadataOptions.TemporaryHold do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :TEMPORARY_HOLD_UNSPECIFIED | :TEMPORARY_HOLD_SKIP | :TEMPORARY_HOLD_PRESERVE

  field :TEMPORARY_HOLD_UNSPECIFIED, 0
  field :TEMPORARY_HOLD_SKIP, 1
  field :TEMPORARY_HOLD_PRESERVE, 2
end
defmodule Google.Storagetransfer.V1.MetadataOptions.KmsKey do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :KMS_KEY_UNSPECIFIED | :KMS_KEY_DESTINATION_BUCKET_DEFAULT | :KMS_KEY_PRESERVE

  field :KMS_KEY_UNSPECIFIED, 0
  field :KMS_KEY_DESTINATION_BUCKET_DEFAULT, 1
  field :KMS_KEY_PRESERVE, 2
end
defmodule Google.Storagetransfer.V1.MetadataOptions.TimeCreated do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TIME_CREATED_UNSPECIFIED
          | :TIME_CREATED_SKIP
          | :TIME_CREATED_PRESERVE_AS_CUSTOM_TIME

  field :TIME_CREATED_UNSPECIFIED, 0
  field :TIME_CREATED_SKIP, 1
  field :TIME_CREATED_PRESERVE_AS_CUSTOM_TIME, 2
end
defmodule Google.Storagetransfer.V1.TransferJob.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATUS_UNSPECIFIED | :ENABLED | :DISABLED | :DELETED

  field :STATUS_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :DELETED, 3
end
defmodule Google.Storagetransfer.V1.NotificationConfig.EventType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EVENT_TYPE_UNSPECIFIED
          | :TRANSFER_OPERATION_SUCCESS
          | :TRANSFER_OPERATION_FAILED
          | :TRANSFER_OPERATION_ABORTED

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :TRANSFER_OPERATION_SUCCESS, 1
  field :TRANSFER_OPERATION_FAILED, 2
  field :TRANSFER_OPERATION_ABORTED, 3
end
defmodule Google.Storagetransfer.V1.NotificationConfig.PayloadFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PAYLOAD_FORMAT_UNSPECIFIED | :NONE | :JSON

  field :PAYLOAD_FORMAT_UNSPECIFIED, 0
  field :NONE, 1
  field :JSON, 2
end
defmodule Google.Storagetransfer.V1.LoggingConfig.LoggableAction do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOGGABLE_ACTION_UNSPECIFIED | :FIND | :DELETE | :COPY

  field :LOGGABLE_ACTION_UNSPECIFIED, 0
  field :FIND, 1
  field :DELETE, 2
  field :COPY, 3
end
defmodule Google.Storagetransfer.V1.LoggingConfig.LoggableActionState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :LOGGABLE_ACTION_STATE_UNSPECIFIED | :SUCCEEDED | :FAILED

  field :LOGGABLE_ACTION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end
defmodule Google.Storagetransfer.V1.TransferOperation.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATUS_UNSPECIFIED
          | :IN_PROGRESS
          | :PAUSED
          | :SUCCESS
          | :FAILED
          | :ABORTED
          | :QUEUED

  field :STATUS_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :PAUSED, 2
  field :SUCCESS, 3
  field :FAILED, 4
  field :ABORTED, 5
  field :QUEUED, 6
end
defmodule Google.Storagetransfer.V1.GoogleServiceAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_email: String.t(),
          subject_id: String.t()
        }

  defstruct account_email: "",
            subject_id: ""

  field :account_email, 1, type: :string, json_name: "accountEmail"
  field :subject_id, 2, type: :string, json_name: "subjectId"
end
defmodule Google.Storagetransfer.V1.AwsAccessKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_key_id: String.t(),
          secret_access_key: String.t()
        }

  defstruct access_key_id: "",
            secret_access_key: ""

  field :access_key_id, 1, type: :string, json_name: "accessKeyId", deprecated: false
  field :secret_access_key, 2, type: :string, json_name: "secretAccessKey", deprecated: false
end
defmodule Google.Storagetransfer.V1.AzureCredentials do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sas_token: String.t()
        }

  defstruct sas_token: ""

  field :sas_token, 2, type: :string, json_name: "sasToken", deprecated: false
end
defmodule Google.Storagetransfer.V1.ObjectConditions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_time_elapsed_since_last_modification: Google.Protobuf.Duration.t() | nil,
          max_time_elapsed_since_last_modification: Google.Protobuf.Duration.t() | nil,
          include_prefixes: [String.t()],
          exclude_prefixes: [String.t()],
          last_modified_since: Google.Protobuf.Timestamp.t() | nil,
          last_modified_before: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct min_time_elapsed_since_last_modification: nil,
            max_time_elapsed_since_last_modification: nil,
            include_prefixes: [],
            exclude_prefixes: [],
            last_modified_since: nil,
            last_modified_before: nil

  field :min_time_elapsed_since_last_modification, 1,
    type: Google.Protobuf.Duration,
    json_name: "minTimeElapsedSinceLastModification"

  field :max_time_elapsed_since_last_modification, 2,
    type: Google.Protobuf.Duration,
    json_name: "maxTimeElapsedSinceLastModification"

  field :include_prefixes, 3, repeated: true, type: :string, json_name: "includePrefixes"
  field :exclude_prefixes, 4, repeated: true, type: :string, json_name: "excludePrefixes"
  field :last_modified_since, 5, type: Google.Protobuf.Timestamp, json_name: "lastModifiedSince"
  field :last_modified_before, 6, type: Google.Protobuf.Timestamp, json_name: "lastModifiedBefore"
end
defmodule Google.Storagetransfer.V1.GcsData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket_name: String.t(),
          path: String.t()
        }

  defstruct bucket_name: "",
            path: ""

  field :bucket_name, 1, type: :string, json_name: "bucketName", deprecated: false
  field :path, 3, type: :string
end
defmodule Google.Storagetransfer.V1.AwsS3Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket_name: String.t(),
          aws_access_key: Google.Storagetransfer.V1.AwsAccessKey.t() | nil,
          path: String.t(),
          role_arn: String.t()
        }

  defstruct bucket_name: "",
            aws_access_key: nil,
            path: "",
            role_arn: ""

  field :bucket_name, 1, type: :string, json_name: "bucketName", deprecated: false

  field :aws_access_key, 2,
    type: Google.Storagetransfer.V1.AwsAccessKey,
    json_name: "awsAccessKey",
    deprecated: false

  field :path, 3, type: :string
  field :role_arn, 4, type: :string, json_name: "roleArn"
end
defmodule Google.Storagetransfer.V1.AzureBlobStorageData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          storage_account: String.t(),
          azure_credentials: Google.Storagetransfer.V1.AzureCredentials.t() | nil,
          container: String.t(),
          path: String.t()
        }

  defstruct storage_account: "",
            azure_credentials: nil,
            container: "",
            path: ""

  field :storage_account, 1, type: :string, json_name: "storageAccount", deprecated: false

  field :azure_credentials, 2,
    type: Google.Storagetransfer.V1.AzureCredentials,
    json_name: "azureCredentials",
    deprecated: false

  field :container, 4, type: :string, deprecated: false
  field :path, 5, type: :string
end
defmodule Google.Storagetransfer.V1.HttpData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_url: String.t()
        }

  defstruct list_url: ""

  field :list_url, 1, type: :string, json_name: "listUrl", deprecated: false
end
defmodule Google.Storagetransfer.V1.PosixFilesystem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          root_directory: String.t()
        }

  defstruct root_directory: ""

  field :root_directory, 1, type: :string, json_name: "rootDirectory"
end
defmodule Google.Storagetransfer.V1.AgentPool.BandwidthLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          limit_mbps: integer
        }

  defstruct limit_mbps: 0

  field :limit_mbps, 1, type: :int64, json_name: "limitMbps"
end
defmodule Google.Storagetransfer.V1.AgentPool do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          state: Google.Storagetransfer.V1.AgentPool.State.t(),
          bandwidth_limit: Google.Storagetransfer.V1.AgentPool.BandwidthLimit.t() | nil
        }

  defstruct name: "",
            display_name: "",
            state: :STATE_UNSPECIFIED,
            bandwidth_limit: nil

  field :name, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
  field :state, 4, type: Google.Storagetransfer.V1.AgentPool.State, enum: true, deprecated: false

  field :bandwidth_limit, 5,
    type: Google.Storagetransfer.V1.AgentPool.BandwidthLimit,
    json_name: "bandwidthLimit"
end
defmodule Google.Storagetransfer.V1.TransferOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overwrite_objects_already_existing_in_sink: boolean,
          delete_objects_unique_in_sink: boolean,
          delete_objects_from_source_after_transfer: boolean,
          overwrite_when: Google.Storagetransfer.V1.TransferOptions.OverwriteWhen.t(),
          metadata_options: Google.Storagetransfer.V1.MetadataOptions.t() | nil
        }

  defstruct overwrite_objects_already_existing_in_sink: false,
            delete_objects_unique_in_sink: false,
            delete_objects_from_source_after_transfer: false,
            overwrite_when: :OVERWRITE_WHEN_UNSPECIFIED,
            metadata_options: nil

  field :overwrite_objects_already_existing_in_sink, 1,
    type: :bool,
    json_name: "overwriteObjectsAlreadyExistingInSink"

  field :delete_objects_unique_in_sink, 2, type: :bool, json_name: "deleteObjectsUniqueInSink"

  field :delete_objects_from_source_after_transfer, 3,
    type: :bool,
    json_name: "deleteObjectsFromSourceAfterTransfer"

  field :overwrite_when, 4,
    type: Google.Storagetransfer.V1.TransferOptions.OverwriteWhen,
    json_name: "overwriteWhen",
    enum: true

  field :metadata_options, 5,
    type: Google.Storagetransfer.V1.MetadataOptions,
    json_name: "metadataOptions"
end
defmodule Google.Storagetransfer.V1.TransferSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_sink:
            {:gcs_data_sink, Google.Storagetransfer.V1.GcsData.t() | nil}
            | {:posix_data_sink, Google.Storagetransfer.V1.PosixFilesystem.t() | nil},
          data_source:
            {:gcs_data_source, Google.Storagetransfer.V1.GcsData.t() | nil}
            | {:aws_s3_data_source, Google.Storagetransfer.V1.AwsS3Data.t() | nil}
            | {:http_data_source, Google.Storagetransfer.V1.HttpData.t() | nil}
            | {:posix_data_source, Google.Storagetransfer.V1.PosixFilesystem.t() | nil}
            | {:azure_blob_storage_data_source,
               Google.Storagetransfer.V1.AzureBlobStorageData.t() | nil},
          intermediate_data_location:
            {:gcs_intermediate_data_location, Google.Storagetransfer.V1.GcsData.t() | nil},
          object_conditions: Google.Storagetransfer.V1.ObjectConditions.t() | nil,
          transfer_options: Google.Storagetransfer.V1.TransferOptions.t() | nil,
          transfer_manifest: Google.Storagetransfer.V1.TransferManifest.t() | nil,
          source_agent_pool_name: String.t(),
          sink_agent_pool_name: String.t()
        }

  defstruct data_sink: nil,
            data_source: nil,
            intermediate_data_location: nil,
            object_conditions: nil,
            transfer_options: nil,
            transfer_manifest: nil,
            source_agent_pool_name: "",
            sink_agent_pool_name: ""

  oneof :data_sink, 0
  oneof :data_source, 1
  oneof :intermediate_data_location, 2

  field :gcs_data_sink, 4,
    type: Google.Storagetransfer.V1.GcsData,
    json_name: "gcsDataSink",
    oneof: 0

  field :posix_data_sink, 13,
    type: Google.Storagetransfer.V1.PosixFilesystem,
    json_name: "posixDataSink",
    oneof: 0

  field :gcs_data_source, 1,
    type: Google.Storagetransfer.V1.GcsData,
    json_name: "gcsDataSource",
    oneof: 1

  field :aws_s3_data_source, 2,
    type: Google.Storagetransfer.V1.AwsS3Data,
    json_name: "awsS3DataSource",
    oneof: 1

  field :http_data_source, 3,
    type: Google.Storagetransfer.V1.HttpData,
    json_name: "httpDataSource",
    oneof: 1

  field :posix_data_source, 14,
    type: Google.Storagetransfer.V1.PosixFilesystem,
    json_name: "posixDataSource",
    oneof: 1

  field :azure_blob_storage_data_source, 8,
    type: Google.Storagetransfer.V1.AzureBlobStorageData,
    json_name: "azureBlobStorageDataSource",
    oneof: 1

  field :gcs_intermediate_data_location, 16,
    type: Google.Storagetransfer.V1.GcsData,
    json_name: "gcsIntermediateDataLocation",
    oneof: 2

  field :object_conditions, 5,
    type: Google.Storagetransfer.V1.ObjectConditions,
    json_name: "objectConditions"

  field :transfer_options, 6,
    type: Google.Storagetransfer.V1.TransferOptions,
    json_name: "transferOptions"

  field :transfer_manifest, 15,
    type: Google.Storagetransfer.V1.TransferManifest,
    json_name: "transferManifest"

  field :source_agent_pool_name, 17, type: :string, json_name: "sourceAgentPoolName"
  field :sink_agent_pool_name, 18, type: :string, json_name: "sinkAgentPoolName"
end
defmodule Google.Storagetransfer.V1.MetadataOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          symlink: Google.Storagetransfer.V1.MetadataOptions.Symlink.t(),
          mode: Google.Storagetransfer.V1.MetadataOptions.Mode.t(),
          gid: Google.Storagetransfer.V1.MetadataOptions.GID.t(),
          uid: Google.Storagetransfer.V1.MetadataOptions.UID.t(),
          acl: Google.Storagetransfer.V1.MetadataOptions.Acl.t(),
          storage_class: Google.Storagetransfer.V1.MetadataOptions.StorageClass.t(),
          temporary_hold: Google.Storagetransfer.V1.MetadataOptions.TemporaryHold.t(),
          kms_key: Google.Storagetransfer.V1.MetadataOptions.KmsKey.t(),
          time_created: Google.Storagetransfer.V1.MetadataOptions.TimeCreated.t()
        }

  defstruct symlink: :SYMLINK_UNSPECIFIED,
            mode: :MODE_UNSPECIFIED,
            gid: :GID_UNSPECIFIED,
            uid: :UID_UNSPECIFIED,
            acl: :ACL_UNSPECIFIED,
            storage_class: :STORAGE_CLASS_UNSPECIFIED,
            temporary_hold: :TEMPORARY_HOLD_UNSPECIFIED,
            kms_key: :KMS_KEY_UNSPECIFIED,
            time_created: :TIME_CREATED_UNSPECIFIED

  field :symlink, 1, type: Google.Storagetransfer.V1.MetadataOptions.Symlink, enum: true
  field :mode, 2, type: Google.Storagetransfer.V1.MetadataOptions.Mode, enum: true
  field :gid, 3, type: Google.Storagetransfer.V1.MetadataOptions.GID, enum: true
  field :uid, 4, type: Google.Storagetransfer.V1.MetadataOptions.UID, enum: true
  field :acl, 5, type: Google.Storagetransfer.V1.MetadataOptions.Acl, enum: true

  field :storage_class, 6,
    type: Google.Storagetransfer.V1.MetadataOptions.StorageClass,
    json_name: "storageClass",
    enum: true

  field :temporary_hold, 7,
    type: Google.Storagetransfer.V1.MetadataOptions.TemporaryHold,
    json_name: "temporaryHold",
    enum: true

  field :kms_key, 8,
    type: Google.Storagetransfer.V1.MetadataOptions.KmsKey,
    json_name: "kmsKey",
    enum: true

  field :time_created, 9,
    type: Google.Storagetransfer.V1.MetadataOptions.TimeCreated,
    json_name: "timeCreated",
    enum: true
end
defmodule Google.Storagetransfer.V1.TransferManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t()
        }

  defstruct location: ""

  field :location, 1, type: :string
end
defmodule Google.Storagetransfer.V1.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule_start_date: Google.Type.Date.t() | nil,
          schedule_end_date: Google.Type.Date.t() | nil,
          start_time_of_day: Google.Type.TimeOfDay.t() | nil,
          end_time_of_day: Google.Type.TimeOfDay.t() | nil,
          repeat_interval: Google.Protobuf.Duration.t() | nil
        }

  defstruct schedule_start_date: nil,
            schedule_end_date: nil,
            start_time_of_day: nil,
            end_time_of_day: nil,
            repeat_interval: nil

  field :schedule_start_date, 1,
    type: Google.Type.Date,
    json_name: "scheduleStartDate",
    deprecated: false

  field :schedule_end_date, 2, type: Google.Type.Date, json_name: "scheduleEndDate"
  field :start_time_of_day, 3, type: Google.Type.TimeOfDay, json_name: "startTimeOfDay"
  field :end_time_of_day, 4, type: Google.Type.TimeOfDay, json_name: "endTimeOfDay"
  field :repeat_interval, 5, type: Google.Protobuf.Duration, json_name: "repeatInterval"
end
defmodule Google.Storagetransfer.V1.TransferJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          project_id: String.t(),
          transfer_spec: Google.Storagetransfer.V1.TransferSpec.t() | nil,
          notification_config: Google.Storagetransfer.V1.NotificationConfig.t() | nil,
          logging_config: Google.Storagetransfer.V1.LoggingConfig.t() | nil,
          schedule: Google.Storagetransfer.V1.Schedule.t() | nil,
          status: Google.Storagetransfer.V1.TransferJob.Status.t(),
          creation_time: Google.Protobuf.Timestamp.t() | nil,
          last_modification_time: Google.Protobuf.Timestamp.t() | nil,
          deletion_time: Google.Protobuf.Timestamp.t() | nil,
          latest_operation_name: String.t()
        }

  defstruct name: "",
            description: "",
            project_id: "",
            transfer_spec: nil,
            notification_config: nil,
            logging_config: nil,
            schedule: nil,
            status: :STATUS_UNSPECIFIED,
            creation_time: nil,
            last_modification_time: nil,
            deletion_time: nil,
            latest_operation_name: ""

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :project_id, 3, type: :string, json_name: "projectId"
  field :transfer_spec, 4, type: Google.Storagetransfer.V1.TransferSpec, json_name: "transferSpec"

  field :notification_config, 11,
    type: Google.Storagetransfer.V1.NotificationConfig,
    json_name: "notificationConfig"

  field :logging_config, 14,
    type: Google.Storagetransfer.V1.LoggingConfig,
    json_name: "loggingConfig"

  field :schedule, 5, type: Google.Storagetransfer.V1.Schedule
  field :status, 6, type: Google.Storagetransfer.V1.TransferJob.Status, enum: true

  field :creation_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "creationTime",
    deprecated: false

  field :last_modification_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "lastModificationTime",
    deprecated: false

  field :deletion_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "deletionTime",
    deprecated: false

  field :latest_operation_name, 12, type: :string, json_name: "latestOperationName"
end
defmodule Google.Storagetransfer.V1.ErrorLogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          error_details: [String.t()]
        }

  defstruct url: "",
            error_details: []

  field :url, 1, type: :string, deprecated: false
  field :error_details, 3, repeated: true, type: :string, json_name: "errorDetails"
end
defmodule Google.Storagetransfer.V1.ErrorSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_code: Google.Rpc.Code.t(),
          error_count: integer,
          error_log_entries: [Google.Storagetransfer.V1.ErrorLogEntry.t()]
        }

  defstruct error_code: :OK,
            error_count: 0,
            error_log_entries: []

  field :error_code, 1,
    type: Google.Rpc.Code,
    json_name: "errorCode",
    enum: true,
    deprecated: false

  field :error_count, 2, type: :int64, json_name: "errorCount", deprecated: false

  field :error_log_entries, 3,
    repeated: true,
    type: Google.Storagetransfer.V1.ErrorLogEntry,
    json_name: "errorLogEntries"
end
defmodule Google.Storagetransfer.V1.TransferCounters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          objects_found_from_source: integer,
          bytes_found_from_source: integer,
          objects_found_only_from_sink: integer,
          bytes_found_only_from_sink: integer,
          objects_from_source_skipped_by_sync: integer,
          bytes_from_source_skipped_by_sync: integer,
          objects_copied_to_sink: integer,
          bytes_copied_to_sink: integer,
          objects_deleted_from_source: integer,
          bytes_deleted_from_source: integer,
          objects_deleted_from_sink: integer,
          bytes_deleted_from_sink: integer,
          objects_from_source_failed: integer,
          bytes_from_source_failed: integer,
          objects_failed_to_delete_from_sink: integer,
          bytes_failed_to_delete_from_sink: integer,
          directories_found_from_source: integer,
          directories_failed_to_list_from_source: integer,
          directories_successfully_listed_from_source: integer,
          intermediate_objects_cleaned_up: integer,
          intermediate_objects_failed_cleaned_up: integer
        }

  defstruct objects_found_from_source: 0,
            bytes_found_from_source: 0,
            objects_found_only_from_sink: 0,
            bytes_found_only_from_sink: 0,
            objects_from_source_skipped_by_sync: 0,
            bytes_from_source_skipped_by_sync: 0,
            objects_copied_to_sink: 0,
            bytes_copied_to_sink: 0,
            objects_deleted_from_source: 0,
            bytes_deleted_from_source: 0,
            objects_deleted_from_sink: 0,
            bytes_deleted_from_sink: 0,
            objects_from_source_failed: 0,
            bytes_from_source_failed: 0,
            objects_failed_to_delete_from_sink: 0,
            bytes_failed_to_delete_from_sink: 0,
            directories_found_from_source: 0,
            directories_failed_to_list_from_source: 0,
            directories_successfully_listed_from_source: 0,
            intermediate_objects_cleaned_up: 0,
            intermediate_objects_failed_cleaned_up: 0

  field :objects_found_from_source, 1, type: :int64, json_name: "objectsFoundFromSource"
  field :bytes_found_from_source, 2, type: :int64, json_name: "bytesFoundFromSource"
  field :objects_found_only_from_sink, 3, type: :int64, json_name: "objectsFoundOnlyFromSink"
  field :bytes_found_only_from_sink, 4, type: :int64, json_name: "bytesFoundOnlyFromSink"

  field :objects_from_source_skipped_by_sync, 5,
    type: :int64,
    json_name: "objectsFromSourceSkippedBySync"

  field :bytes_from_source_skipped_by_sync, 6,
    type: :int64,
    json_name: "bytesFromSourceSkippedBySync"

  field :objects_copied_to_sink, 7, type: :int64, json_name: "objectsCopiedToSink"
  field :bytes_copied_to_sink, 8, type: :int64, json_name: "bytesCopiedToSink"
  field :objects_deleted_from_source, 9, type: :int64, json_name: "objectsDeletedFromSource"
  field :bytes_deleted_from_source, 10, type: :int64, json_name: "bytesDeletedFromSource"
  field :objects_deleted_from_sink, 11, type: :int64, json_name: "objectsDeletedFromSink"
  field :bytes_deleted_from_sink, 12, type: :int64, json_name: "bytesDeletedFromSink"
  field :objects_from_source_failed, 13, type: :int64, json_name: "objectsFromSourceFailed"
  field :bytes_from_source_failed, 14, type: :int64, json_name: "bytesFromSourceFailed"

  field :objects_failed_to_delete_from_sink, 15,
    type: :int64,
    json_name: "objectsFailedToDeleteFromSink"

  field :bytes_failed_to_delete_from_sink, 16,
    type: :int64,
    json_name: "bytesFailedToDeleteFromSink"

  field :directories_found_from_source, 17, type: :int64, json_name: "directoriesFoundFromSource"

  field :directories_failed_to_list_from_source, 18,
    type: :int64,
    json_name: "directoriesFailedToListFromSource"

  field :directories_successfully_listed_from_source, 19,
    type: :int64,
    json_name: "directoriesSuccessfullyListedFromSource"

  field :intermediate_objects_cleaned_up, 22,
    type: :int64,
    json_name: "intermediateObjectsCleanedUp"

  field :intermediate_objects_failed_cleaned_up, 23,
    type: :int64,
    json_name: "intermediateObjectsFailedCleanedUp"
end
defmodule Google.Storagetransfer.V1.NotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pubsub_topic: String.t(),
          event_types: [Google.Storagetransfer.V1.NotificationConfig.EventType.t()],
          payload_format: Google.Storagetransfer.V1.NotificationConfig.PayloadFormat.t()
        }

  defstruct pubsub_topic: "",
            event_types: [],
            payload_format: :PAYLOAD_FORMAT_UNSPECIFIED

  field :pubsub_topic, 1, type: :string, json_name: "pubsubTopic", deprecated: false

  field :event_types, 2,
    repeated: true,
    type: Google.Storagetransfer.V1.NotificationConfig.EventType,
    json_name: "eventTypes",
    enum: true

  field :payload_format, 3,
    type: Google.Storagetransfer.V1.NotificationConfig.PayloadFormat,
    json_name: "payloadFormat",
    enum: true,
    deprecated: false
end
defmodule Google.Storagetransfer.V1.LoggingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          log_actions: [Google.Storagetransfer.V1.LoggingConfig.LoggableAction.t()],
          log_action_states: [Google.Storagetransfer.V1.LoggingConfig.LoggableActionState.t()],
          enable_onprem_gcs_transfer_logs: boolean
        }

  defstruct log_actions: [],
            log_action_states: [],
            enable_onprem_gcs_transfer_logs: false

  field :log_actions, 1,
    repeated: true,
    type: Google.Storagetransfer.V1.LoggingConfig.LoggableAction,
    json_name: "logActions",
    enum: true

  field :log_action_states, 2,
    repeated: true,
    type: Google.Storagetransfer.V1.LoggingConfig.LoggableActionState,
    json_name: "logActionStates",
    enum: true

  field :enable_onprem_gcs_transfer_logs, 3, type: :bool, json_name: "enableOnpremGcsTransferLogs"
end
defmodule Google.Storagetransfer.V1.TransferOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          transfer_spec: Google.Storagetransfer.V1.TransferSpec.t() | nil,
          notification_config: Google.Storagetransfer.V1.NotificationConfig.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          status: Google.Storagetransfer.V1.TransferOperation.Status.t(),
          counters: Google.Storagetransfer.V1.TransferCounters.t() | nil,
          error_breakdowns: [Google.Storagetransfer.V1.ErrorSummary.t()],
          transfer_job_name: String.t()
        }

  defstruct name: "",
            project_id: "",
            transfer_spec: nil,
            notification_config: nil,
            start_time: nil,
            end_time: nil,
            status: :STATUS_UNSPECIFIED,
            counters: nil,
            error_breakdowns: [],
            transfer_job_name: ""

  field :name, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :transfer_spec, 3, type: Google.Storagetransfer.V1.TransferSpec, json_name: "transferSpec"

  field :notification_config, 10,
    type: Google.Storagetransfer.V1.NotificationConfig,
    json_name: "notificationConfig"

  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :status, 6, type: Google.Storagetransfer.V1.TransferOperation.Status, enum: true
  field :counters, 7, type: Google.Storagetransfer.V1.TransferCounters

  field :error_breakdowns, 8,
    repeated: true,
    type: Google.Storagetransfer.V1.ErrorSummary,
    json_name: "errorBreakdowns"

  field :transfer_job_name, 9, type: :string, json_name: "transferJobName"
end
