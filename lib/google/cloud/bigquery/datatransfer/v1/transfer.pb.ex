defmodule Google.Cloud.Bigquery.Datatransfer.V1.TransferType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :TRANSFER_TYPE_UNSPECIFIED | :BATCH | :STREAMING

  field :TRANSFER_TYPE_UNSPECIFIED, 0
  field :BATCH, 1
  field :STREAMING, 2
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.TransferState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TRANSFER_STATE_UNSPECIFIED
          | :PENDING
          | :RUNNING
          | :SUCCEEDED
          | :FAILED
          | :CANCELLED

  field :TRANSFER_STATE_UNSPECIFIED, 0
  field :PENDING, 2
  field :RUNNING, 3
  field :SUCCEEDED, 4
  field :FAILED, 5
  field :CANCELLED, 6
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage.MessageSeverity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MESSAGE_SEVERITY_UNSPECIFIED | :INFO | :WARNING | :ERROR

  field :MESSAGE_SEVERITY_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ERROR, 3
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.EmailPreferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_failure_email: boolean
        }

  defstruct [:enable_failure_email]

  field :enable_failure_email, 1, type: :bool, json_name: "enableFailureEmail"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.ScheduleOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disable_auto_scheduling: boolean,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:disable_auto_scheduling, :start_time, :end_time]

  field :disable_auto_scheduling, 3, type: :bool, json_name: "disableAutoScheduling"
  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.TransferConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:destination_dataset_id, String.t()},
          name: String.t(),
          display_name: String.t(),
          data_source_id: String.t(),
          params: Google.Protobuf.Struct.t() | nil,
          schedule: String.t(),
          schedule_options: Google.Cloud.Bigquery.Datatransfer.V1.ScheduleOptions.t() | nil,
          data_refresh_window_days: integer,
          disabled: boolean,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          next_run_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Cloud.Bigquery.Datatransfer.V1.TransferState.t(),
          user_id: integer,
          dataset_region: String.t(),
          notification_pubsub_topic: String.t(),
          email_preferences: Google.Cloud.Bigquery.Datatransfer.V1.EmailPreferences.t() | nil
        }

  defstruct [
    :destination,
    :name,
    :display_name,
    :data_source_id,
    :params,
    :schedule,
    :schedule_options,
    :data_refresh_window_days,
    :disabled,
    :update_time,
    :next_run_time,
    :state,
    :user_id,
    :dataset_region,
    :notification_pubsub_topic,
    :email_preferences
  ]

  oneof :destination, 0

  field :name, 1, type: :string
  field :destination_dataset_id, 2, type: :string, json_name: "destinationDatasetId", oneof: 0
  field :display_name, 3, type: :string, json_name: "displayName"
  field :data_source_id, 5, type: :string, json_name: "dataSourceId"
  field :params, 9, type: Google.Protobuf.Struct
  field :schedule, 7, type: :string

  field :schedule_options, 24,
    type: Google.Cloud.Bigquery.Datatransfer.V1.ScheduleOptions,
    json_name: "scheduleOptions"

  field :data_refresh_window_days, 12, type: :int32, json_name: "dataRefreshWindowDays"
  field :disabled, 13, type: :bool
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :next_run_time, 8, type: Google.Protobuf.Timestamp, json_name: "nextRunTime"
  field :state, 10, type: Google.Cloud.Bigquery.Datatransfer.V1.TransferState, enum: true
  field :user_id, 11, type: :int64, json_name: "userId"
  field :dataset_region, 14, type: :string, json_name: "datasetRegion"
  field :notification_pubsub_topic, 15, type: :string, json_name: "notificationPubsubTopic"

  field :email_preferences, 18,
    type: Google.Cloud.Bigquery.Datatransfer.V1.EmailPreferences,
    json_name: "emailPreferences"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.TransferRun do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {:destination_dataset_id, String.t()},
          name: String.t(),
          schedule_time: Google.Protobuf.Timestamp.t() | nil,
          run_time: Google.Protobuf.Timestamp.t() | nil,
          error_status: Google.Rpc.Status.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          params: Google.Protobuf.Struct.t() | nil,
          data_source_id: String.t(),
          state: Google.Cloud.Bigquery.Datatransfer.V1.TransferState.t(),
          user_id: integer,
          schedule: String.t(),
          notification_pubsub_topic: String.t(),
          email_preferences: Google.Cloud.Bigquery.Datatransfer.V1.EmailPreferences.t() | nil
        }

  defstruct [
    :destination,
    :name,
    :schedule_time,
    :run_time,
    :error_status,
    :start_time,
    :end_time,
    :update_time,
    :params,
    :data_source_id,
    :state,
    :user_id,
    :schedule,
    :notification_pubsub_topic,
    :email_preferences
  ]

  oneof :destination, 0

  field :name, 1, type: :string
  field :schedule_time, 3, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :run_time, 10, type: Google.Protobuf.Timestamp, json_name: "runTime"
  field :error_status, 21, type: Google.Rpc.Status, json_name: "errorStatus"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :params, 9, type: Google.Protobuf.Struct
  field :destination_dataset_id, 2, type: :string, json_name: "destinationDatasetId", oneof: 0
  field :data_source_id, 7, type: :string, json_name: "dataSourceId"
  field :state, 8, type: Google.Cloud.Bigquery.Datatransfer.V1.TransferState, enum: true
  field :user_id, 11, type: :int64, json_name: "userId"
  field :schedule, 12, type: :string
  field :notification_pubsub_topic, 23, type: :string, json_name: "notificationPubsubTopic"

  field :email_preferences, 25,
    type: Google.Cloud.Bigquery.Datatransfer.V1.EmailPreferences,
    json_name: "emailPreferences"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_time: Google.Protobuf.Timestamp.t() | nil,
          severity: Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage.MessageSeverity.t(),
          message_text: String.t()
        }

  defstruct [:message_time, :severity, :message_text]

  field :message_time, 1, type: Google.Protobuf.Timestamp, json_name: "messageTime"

  field :severity, 2,
    type: Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage.MessageSeverity,
    enum: true

  field :message_text, 3, type: :string, json_name: "messageText"

  def transform_module(), do: nil
end
