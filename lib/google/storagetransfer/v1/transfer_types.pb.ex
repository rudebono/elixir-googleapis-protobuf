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

  defstruct [:account_email, :subject_id]

  field :account_email, 1, type: :string
  field :subject_id, 2, type: :string
end

defmodule Google.Storagetransfer.V1.AwsAccessKey do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_key_id: String.t(),
          secret_access_key: String.t()
        }

  defstruct [:access_key_id, :secret_access_key]

  field :access_key_id, 1, type: :string
  field :secret_access_key, 2, type: :string
end

defmodule Google.Storagetransfer.V1.AzureCredentials do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sas_token: String.t()
        }

  defstruct [:sas_token]

  field :sas_token, 2, type: :string
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

  defstruct [
    :min_time_elapsed_since_last_modification,
    :max_time_elapsed_since_last_modification,
    :include_prefixes,
    :exclude_prefixes,
    :last_modified_since,
    :last_modified_before
  ]

  field :min_time_elapsed_since_last_modification, 1, type: Google.Protobuf.Duration
  field :max_time_elapsed_since_last_modification, 2, type: Google.Protobuf.Duration
  field :include_prefixes, 3, repeated: true, type: :string
  field :exclude_prefixes, 4, repeated: true, type: :string
  field :last_modified_since, 5, type: Google.Protobuf.Timestamp
  field :last_modified_before, 6, type: Google.Protobuf.Timestamp
end

defmodule Google.Storagetransfer.V1.GcsData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket_name: String.t(),
          path: String.t()
        }

  defstruct [:bucket_name, :path]

  field :bucket_name, 1, type: :string
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

  defstruct [:bucket_name, :aws_access_key, :path, :role_arn]

  field :bucket_name, 1, type: :string
  field :aws_access_key, 2, type: Google.Storagetransfer.V1.AwsAccessKey
  field :path, 3, type: :string
  field :role_arn, 4, type: :string
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

  defstruct [:storage_account, :azure_credentials, :container, :path]

  field :storage_account, 1, type: :string
  field :azure_credentials, 2, type: Google.Storagetransfer.V1.AzureCredentials
  field :container, 4, type: :string
  field :path, 5, type: :string
end

defmodule Google.Storagetransfer.V1.HttpData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_url: String.t()
        }

  defstruct [:list_url]

  field :list_url, 1, type: :string
end

defmodule Google.Storagetransfer.V1.TransferOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overwrite_objects_already_existing_in_sink: boolean,
          delete_objects_unique_in_sink: boolean,
          delete_objects_from_source_after_transfer: boolean
        }

  defstruct [
    :overwrite_objects_already_existing_in_sink,
    :delete_objects_unique_in_sink,
    :delete_objects_from_source_after_transfer
  ]

  field :overwrite_objects_already_existing_in_sink, 1, type: :bool
  field :delete_objects_unique_in_sink, 2, type: :bool
  field :delete_objects_from_source_after_transfer, 3, type: :bool
end

defmodule Google.Storagetransfer.V1.TransferSpec do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_sink: {atom, any},
          data_source: {atom, any},
          object_conditions: Google.Storagetransfer.V1.ObjectConditions.t() | nil,
          transfer_options: Google.Storagetransfer.V1.TransferOptions.t() | nil
        }

  defstruct [:data_sink, :data_source, :object_conditions, :transfer_options]

  oneof :data_sink, 0
  oneof :data_source, 1
  field :gcs_data_sink, 4, type: Google.Storagetransfer.V1.GcsData, oneof: 0
  field :gcs_data_source, 1, type: Google.Storagetransfer.V1.GcsData, oneof: 1
  field :aws_s3_data_source, 2, type: Google.Storagetransfer.V1.AwsS3Data, oneof: 1
  field :http_data_source, 3, type: Google.Storagetransfer.V1.HttpData, oneof: 1

  field :azure_blob_storage_data_source, 8,
    type: Google.Storagetransfer.V1.AzureBlobStorageData,
    oneof: 1

  field :object_conditions, 5, type: Google.Storagetransfer.V1.ObjectConditions
  field :transfer_options, 6, type: Google.Storagetransfer.V1.TransferOptions
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

  defstruct [
    :schedule_start_date,
    :schedule_end_date,
    :start_time_of_day,
    :end_time_of_day,
    :repeat_interval
  ]

  field :schedule_start_date, 1, type: Google.Type.Date
  field :schedule_end_date, 2, type: Google.Type.Date
  field :start_time_of_day, 3, type: Google.Type.TimeOfDay
  field :end_time_of_day, 4, type: Google.Type.TimeOfDay
  field :repeat_interval, 5, type: Google.Protobuf.Duration
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

  defstruct [
    :name,
    :description,
    :project_id,
    :transfer_spec,
    :notification_config,
    :schedule,
    :status,
    :creation_time,
    :last_modification_time,
    :deletion_time,
    :latest_operation_name
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :project_id, 3, type: :string
  field :transfer_spec, 4, type: Google.Storagetransfer.V1.TransferSpec
  field :notification_config, 11, type: Google.Storagetransfer.V1.NotificationConfig
  field :schedule, 5, type: Google.Storagetransfer.V1.Schedule
  field :status, 6, type: Google.Storagetransfer.V1.TransferJob.Status, enum: true
  field :creation_time, 7, type: Google.Protobuf.Timestamp
  field :last_modification_time, 8, type: Google.Protobuf.Timestamp
  field :deletion_time, 9, type: Google.Protobuf.Timestamp
  field :latest_operation_name, 12, type: :string
end

defmodule Google.Storagetransfer.V1.ErrorLogEntry do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          error_details: [String.t()]
        }

  defstruct [:url, :error_details]

  field :url, 1, type: :string
  field :error_details, 3, repeated: true, type: :string
end

defmodule Google.Storagetransfer.V1.ErrorSummary do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          error_code: Google.Rpc.Code.t(),
          error_count: integer,
          error_log_entries: [Google.Storagetransfer.V1.ErrorLogEntry.t()]
        }

  defstruct [:error_code, :error_count, :error_log_entries]

  field :error_code, 1, type: Google.Rpc.Code, enum: true
  field :error_count, 2, type: :int64
  field :error_log_entries, 3, repeated: true, type: Google.Storagetransfer.V1.ErrorLogEntry
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

  defstruct [
    :objects_found_from_source,
    :bytes_found_from_source,
    :objects_found_only_from_sink,
    :bytes_found_only_from_sink,
    :objects_from_source_skipped_by_sync,
    :bytes_from_source_skipped_by_sync,
    :objects_copied_to_sink,
    :bytes_copied_to_sink,
    :objects_deleted_from_source,
    :bytes_deleted_from_source,
    :objects_deleted_from_sink,
    :bytes_deleted_from_sink,
    :objects_from_source_failed,
    :bytes_from_source_failed,
    :objects_failed_to_delete_from_sink,
    :bytes_failed_to_delete_from_sink
  ]

  field :objects_found_from_source, 1, type: :int64
  field :bytes_found_from_source, 2, type: :int64
  field :objects_found_only_from_sink, 3, type: :int64
  field :bytes_found_only_from_sink, 4, type: :int64
  field :objects_from_source_skipped_by_sync, 5, type: :int64
  field :bytes_from_source_skipped_by_sync, 6, type: :int64
  field :objects_copied_to_sink, 7, type: :int64
  field :bytes_copied_to_sink, 8, type: :int64
  field :objects_deleted_from_source, 9, type: :int64
  field :bytes_deleted_from_source, 10, type: :int64
  field :objects_deleted_from_sink, 11, type: :int64
  field :bytes_deleted_from_sink, 12, type: :int64
  field :objects_from_source_failed, 13, type: :int64
  field :bytes_from_source_failed, 14, type: :int64
  field :objects_failed_to_delete_from_sink, 15, type: :int64
  field :bytes_failed_to_delete_from_sink, 16, type: :int64
end

defmodule Google.Storagetransfer.V1.NotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          pubsub_topic: String.t(),
          event_types: [[Google.Storagetransfer.V1.NotificationConfig.EventType.t()]],
          payload_format: Google.Storagetransfer.V1.NotificationConfig.PayloadFormat.t()
        }

  defstruct [:pubsub_topic, :event_types, :payload_format]

  field :pubsub_topic, 1, type: :string

  field :event_types, 2,
    repeated: true,
    type: Google.Storagetransfer.V1.NotificationConfig.EventType,
    enum: true

  field :payload_format, 3,
    type: Google.Storagetransfer.V1.NotificationConfig.PayloadFormat,
    enum: true
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

  defstruct [
    :name,
    :project_id,
    :transfer_spec,
    :notification_config,
    :start_time,
    :end_time,
    :status,
    :counters,
    :error_breakdowns,
    :transfer_job_name
  ]

  field :name, 1, type: :string
  field :project_id, 2, type: :string
  field :transfer_spec, 3, type: Google.Storagetransfer.V1.TransferSpec
  field :notification_config, 10, type: Google.Storagetransfer.V1.NotificationConfig
  field :start_time, 4, type: Google.Protobuf.Timestamp
  field :end_time, 5, type: Google.Protobuf.Timestamp
  field :status, 6, type: Google.Storagetransfer.V1.TransferOperation.Status, enum: true
  field :counters, 7, type: Google.Storagetransfer.V1.TransferCounters
  field :error_breakdowns, 8, repeated: true, type: Google.Storagetransfer.V1.ErrorSummary
  field :transfer_job_name, 9, type: :string
end
