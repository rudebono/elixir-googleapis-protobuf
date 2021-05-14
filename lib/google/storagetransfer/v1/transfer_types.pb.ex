defmodule Google.Storagetransfer.V1.TransferJob.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATUS_UNSPECIFIED | :ENABLED | :DISABLED | :DELETED

  field :STATUS_UNSPECIFIED, 0

  field :ENABLED, 1

  field :DISABLED, 2

  field :DELETED, 3
end

defmodule Google.Storagetransfer.V1.TransferOperation.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :STATUS_UNSPECIFIED | :IN_PROGRESS | :PAUSED | :SUCCESS | :FAILED | :ABORTED

  field :STATUS_UNSPECIFIED, 0

  field :IN_PROGRESS, 1

  field :PAUSED, 2

  field :SUCCESS, 3

  field :FAILED, 4

  field :ABORTED, 5
end

defmodule Google.Storagetransfer.V1.GoogleServiceAccount do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          account_email: String.t()
        }

  defstruct [:account_email]

  field :account_email, 1, type: :string
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

defmodule Google.Storagetransfer.V1.ObjectConditions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          min_time_elapsed_since_last_modification: Google.Protobuf.Duration.t() | nil,
          max_time_elapsed_since_last_modification: Google.Protobuf.Duration.t() | nil,
          include_prefixes: [String.t()],
          exclude_prefixes: [String.t()]
        }

  defstruct [
    :min_time_elapsed_since_last_modification,
    :max_time_elapsed_since_last_modification,
    :include_prefixes,
    :exclude_prefixes
  ]

  field :min_time_elapsed_since_last_modification, 1, type: Google.Protobuf.Duration
  field :max_time_elapsed_since_last_modification, 2, type: Google.Protobuf.Duration
  field :include_prefixes, 3, repeated: true, type: :string
  field :exclude_prefixes, 4, repeated: true, type: :string
end

defmodule Google.Storagetransfer.V1.GcsData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket_name: String.t()
        }

  defstruct [:bucket_name]

  field :bucket_name, 1, type: :string
end

defmodule Google.Storagetransfer.V1.AwsS3Data do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket_name: String.t(),
          aws_access_key: Google.Storagetransfer.V1.AwsAccessKey.t() | nil
        }

  defstruct [:bucket_name, :aws_access_key]

  field :bucket_name, 1, type: :string
  field :aws_access_key, 2, type: Google.Storagetransfer.V1.AwsAccessKey
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
          data_source: {atom, any},
          data_sink: {atom, any},
          object_conditions: Google.Storagetransfer.V1.ObjectConditions.t() | nil,
          transfer_options: Google.Storagetransfer.V1.TransferOptions.t() | nil
        }

  defstruct [:data_source, :data_sink, :object_conditions, :transfer_options]

  oneof :data_source, 0
  oneof :data_sink, 1
  field :gcs_data_source, 1, type: Google.Storagetransfer.V1.GcsData, oneof: 0
  field :aws_s3_data_source, 2, type: Google.Storagetransfer.V1.AwsS3Data, oneof: 0
  field :http_data_source, 3, type: Google.Storagetransfer.V1.HttpData, oneof: 0
  field :gcs_data_sink, 4, type: Google.Storagetransfer.V1.GcsData, oneof: 1
  field :object_conditions, 5, type: Google.Storagetransfer.V1.ObjectConditions
  field :transfer_options, 6, type: Google.Storagetransfer.V1.TransferOptions
end

defmodule Google.Storagetransfer.V1.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schedule_start_date: Google.Type.Date.t() | nil,
          schedule_end_date: Google.Type.Date.t() | nil,
          start_time_of_day: Google.Type.TimeOfDay.t() | nil
        }

  defstruct [:schedule_start_date, :schedule_end_date, :start_time_of_day]

  field :schedule_start_date, 1, type: Google.Type.Date
  field :schedule_end_date, 2, type: Google.Type.Date
  field :start_time_of_day, 3, type: Google.Type.TimeOfDay
end

defmodule Google.Storagetransfer.V1.TransferJob do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          project_id: String.t(),
          transfer_spec: Google.Storagetransfer.V1.TransferSpec.t() | nil,
          schedule: Google.Storagetransfer.V1.Schedule.t() | nil,
          status: Google.Storagetransfer.V1.TransferJob.Status.t(),
          creation_time: Google.Protobuf.Timestamp.t() | nil,
          last_modification_time: Google.Protobuf.Timestamp.t() | nil,
          deletion_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [
    :name,
    :description,
    :project_id,
    :transfer_spec,
    :schedule,
    :status,
    :creation_time,
    :last_modification_time,
    :deletion_time
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :project_id, 3, type: :string
  field :transfer_spec, 4, type: Google.Storagetransfer.V1.TransferSpec
  field :schedule, 5, type: Google.Storagetransfer.V1.Schedule
  field :status, 6, type: Google.Storagetransfer.V1.TransferJob.Status, enum: true
  field :creation_time, 7, type: Google.Protobuf.Timestamp
  field :last_modification_time, 8, type: Google.Protobuf.Timestamp
  field :deletion_time, 9, type: Google.Protobuf.Timestamp
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

defmodule Google.Storagetransfer.V1.TransferOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          transfer_spec: Google.Storagetransfer.V1.TransferSpec.t() | nil,
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
  field :start_time, 4, type: Google.Protobuf.Timestamp
  field :end_time, 5, type: Google.Protobuf.Timestamp
  field :status, 6, type: Google.Storagetransfer.V1.TransferOperation.Status, enum: true
  field :counters, 7, type: Google.Storagetransfer.V1.TransferCounters
  field :error_breakdowns, 8, repeated: true, type: Google.Storagetransfer.V1.ErrorSummary
  field :transfer_job_name, 9, type: :string
end
