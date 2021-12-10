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
  field :role_arn, 4, type: :string, json_name: "roleArn", deprecated: false
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
defmodule Google.Storagetransfer.V1.TransferOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overwrite_objects_already_existing_in_sink: boolean,
          delete_objects_unique_in_sink: boolean,
          delete_objects_from_source_after_transfer: boolean
        }

  defstruct overwrite_objects_already_existing_in_sink: false,
            delete_objects_unique_in_sink: false,
            delete_objects_from_source_after_transfer: false

  field :overwrite_objects_already_existing_in_sink, 1,
    type: :bool,
    json_name: "overwriteObjectsAlreadyExistingInSink"

  field :delete_objects_unique_in_sink, 2, type: :bool, json_name: "deleteObjectsUniqueInSink"

  field :delete_objects_from_source_after_transfer, 3,
    type: :bool,
    json_name: "deleteObjectsFromSourceAfterTransfer"
end
defmodule Google.Storagetransfer.V1.TransferSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_sink: {:gcs_data_sink, Google.Storagetransfer.V1.GcsData.t() | nil},
          data_source:
            {:gcs_data_source, Google.Storagetransfer.V1.GcsData.t() | nil}
            | {:aws_s3_data_source, Google.Storagetransfer.V1.AwsS3Data.t() | nil}
            | {:http_data_source, Google.Storagetransfer.V1.HttpData.t() | nil}
            | {:azure_blob_storage_data_source,
               Google.Storagetransfer.V1.AzureBlobStorageData.t() | nil},
          object_conditions: Google.Storagetransfer.V1.ObjectConditions.t() | nil,
          transfer_options: Google.Storagetransfer.V1.TransferOptions.t() | nil
        }

  defstruct data_sink: nil,
            data_source: nil,
            object_conditions: nil,
            transfer_options: nil

  oneof :data_sink, 0
  oneof :data_source, 1

  field :gcs_data_sink, 4,
    type: Google.Storagetransfer.V1.GcsData,
    json_name: "gcsDataSink",
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

  field :azure_blob_storage_data_source, 8,
    type: Google.Storagetransfer.V1.AzureBlobStorageData,
    json_name: "azureBlobStorageDataSource",
    oneof: 1

  field :object_conditions, 5,
    type: Google.Storagetransfer.V1.ObjectConditions,
    json_name: "objectConditions"

  field :transfer_options, 6,
    type: Google.Storagetransfer.V1.TransferOptions,
    json_name: "transferOptions"
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
          bytes_failed_to_delete_from_sink: integer
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
            bytes_failed_to_delete_from_sink: 0

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
