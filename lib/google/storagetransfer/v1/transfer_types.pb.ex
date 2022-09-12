defmodule Google.Storagetransfer.V1.S3CompatibleMetadata.AuthMethod do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :AUTH_METHOD_UNSPECIFIED, 0
  field :AUTH_METHOD_AWS_SIGNATURE_V4, 1
  field :AUTH_METHOD_AWS_SIGNATURE_V2, 2
end

defmodule Google.Storagetransfer.V1.S3CompatibleMetadata.RequestModel do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REQUEST_MODEL_UNSPECIFIED, 0
  field :REQUEST_MODEL_VIRTUAL_HOSTED_STYLE, 1
  field :REQUEST_MODEL_PATH_STYLE, 2
end

defmodule Google.Storagetransfer.V1.S3CompatibleMetadata.NetworkProtocol do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :NETWORK_PROTOCOL_UNSPECIFIED, 0
  field :NETWORK_PROTOCOL_HTTPS, 1
  field :NETWORK_PROTOCOL_HTTP, 2
end

defmodule Google.Storagetransfer.V1.S3CompatibleMetadata.ListApi do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LIST_API_UNSPECIFIED, 0
  field :LIST_OBJECTS_V2, 1
  field :LIST_OBJECTS, 2
end

defmodule Google.Storagetransfer.V1.AgentPool.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :DELETING, 3
end

defmodule Google.Storagetransfer.V1.TransferOptions.OverwriteWhen do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :OVERWRITE_WHEN_UNSPECIFIED, 0
  field :DIFFERENT, 1
  field :NEVER, 2
  field :ALWAYS, 3
end

defmodule Google.Storagetransfer.V1.MetadataOptions.Symlink do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SYMLINK_UNSPECIFIED, 0
  field :SYMLINK_SKIP, 1
  field :SYMLINK_PRESERVE, 2
end

defmodule Google.Storagetransfer.V1.MetadataOptions.Mode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :MODE_SKIP, 1
  field :MODE_PRESERVE, 2
end

defmodule Google.Storagetransfer.V1.MetadataOptions.GID do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :GID_UNSPECIFIED, 0
  field :GID_SKIP, 1
  field :GID_NUMBER, 2
end

defmodule Google.Storagetransfer.V1.MetadataOptions.UID do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UID_UNSPECIFIED, 0
  field :UID_SKIP, 1
  field :UID_NUMBER, 2
end

defmodule Google.Storagetransfer.V1.MetadataOptions.Acl do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ACL_UNSPECIFIED, 0
  field :ACL_DESTINATION_BUCKET_DEFAULT, 1
  field :ACL_PRESERVE, 2
end

defmodule Google.Storagetransfer.V1.MetadataOptions.StorageClass do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TEMPORARY_HOLD_UNSPECIFIED, 0
  field :TEMPORARY_HOLD_SKIP, 1
  field :TEMPORARY_HOLD_PRESERVE, 2
end

defmodule Google.Storagetransfer.V1.MetadataOptions.KmsKey do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :KMS_KEY_UNSPECIFIED, 0
  field :KMS_KEY_DESTINATION_BUCKET_DEFAULT, 1
  field :KMS_KEY_PRESERVE, 2
end

defmodule Google.Storagetransfer.V1.MetadataOptions.TimeCreated do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TIME_CREATED_UNSPECIFIED, 0
  field :TIME_CREATED_SKIP, 1
  field :TIME_CREATED_PRESERVE_AS_CUSTOM_TIME, 2
end

defmodule Google.Storagetransfer.V1.TransferJob.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
  field :DELETED, 3
end

defmodule Google.Storagetransfer.V1.NotificationConfig.EventType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :TRANSFER_OPERATION_SUCCESS, 1
  field :TRANSFER_OPERATION_FAILED, 2
  field :TRANSFER_OPERATION_ABORTED, 3
end

defmodule Google.Storagetransfer.V1.NotificationConfig.PayloadFormat do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PAYLOAD_FORMAT_UNSPECIFIED, 0
  field :NONE, 1
  field :JSON, 2
end

defmodule Google.Storagetransfer.V1.LoggingConfig.LoggableAction do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LOGGABLE_ACTION_UNSPECIFIED, 0
  field :FIND, 1
  field :DELETE, 2
  field :COPY, 3
end

defmodule Google.Storagetransfer.V1.LoggingConfig.LoggableActionState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LOGGABLE_ACTION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Storagetransfer.V1.TransferOperation.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :account_email, 1, type: :string, json_name: "accountEmail"
  field :subject_id, 2, type: :string, json_name: "subjectId"
end

defmodule Google.Storagetransfer.V1.AwsAccessKey do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :access_key_id, 1, type: :string, json_name: "accessKeyId", deprecated: false
  field :secret_access_key, 2, type: :string, json_name: "secretAccessKey", deprecated: false
end

defmodule Google.Storagetransfer.V1.AzureCredentials do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :sas_token, 2, type: :string, json_name: "sasToken", deprecated: false
end

defmodule Google.Storagetransfer.V1.ObjectConditions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :bucket_name, 1, type: :string, json_name: "bucketName", deprecated: false
  field :path, 3, type: :string
end

defmodule Google.Storagetransfer.V1.AwsS3Data do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :list_url, 1, type: :string, json_name: "listUrl", deprecated: false
end

defmodule Google.Storagetransfer.V1.PosixFilesystem do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :root_directory, 1, type: :string, json_name: "rootDirectory"
end

defmodule Google.Storagetransfer.V1.AwsS3CompatibleData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :data_provider, 0

  field :bucket_name, 1, type: :string, json_name: "bucketName", deprecated: false
  field :path, 2, type: :string
  field :endpoint, 3, type: :string, deprecated: false
  field :region, 5, type: :string

  field :s3_metadata, 4,
    type: Google.Storagetransfer.V1.S3CompatibleMetadata,
    json_name: "s3Metadata",
    oneof: 0
end

defmodule Google.Storagetransfer.V1.S3CompatibleMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :auth_method, 1,
    type: Google.Storagetransfer.V1.S3CompatibleMetadata.AuthMethod,
    json_name: "authMethod",
    enum: true

  field :request_model, 2,
    type: Google.Storagetransfer.V1.S3CompatibleMetadata.RequestModel,
    json_name: "requestModel",
    enum: true

  field :protocol, 3,
    type: Google.Storagetransfer.V1.S3CompatibleMetadata.NetworkProtocol,
    enum: true

  field :list_api, 4,
    type: Google.Storagetransfer.V1.S3CompatibleMetadata.ListApi,
    json_name: "listApi",
    enum: true
end

defmodule Google.Storagetransfer.V1.AgentPool.BandwidthLimit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :limit_mbps, 1, type: :int64, json_name: "limitMbps"
end

defmodule Google.Storagetransfer.V1.AgentPool do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 2, type: :string, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
  field :state, 4, type: Google.Storagetransfer.V1.AgentPool.State, enum: true, deprecated: false

  field :bandwidth_limit, 5,
    type: Google.Storagetransfer.V1.AgentPool.BandwidthLimit,
    json_name: "bandwidthLimit"
end

defmodule Google.Storagetransfer.V1.TransferOptions do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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

  field :aws_s3_compatible_data_source, 19,
    type: Google.Storagetransfer.V1.AwsS3CompatibleData,
    json_name: "awsS3CompatibleDataSource",
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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :location, 1, type: :string
end

defmodule Google.Storagetransfer.V1.Schedule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :url, 1, type: :string, deprecated: false
  field :error_details, 3, repeated: true, type: :string, json_name: "errorDetails"
end

defmodule Google.Storagetransfer.V1.ErrorSummary do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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