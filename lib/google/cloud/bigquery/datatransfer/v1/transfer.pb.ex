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

  defstruct enable_failure_email: false

  field :enable_failure_email, 1, type: :bool, json_name: "enableFailureEmail"
end
defmodule Google.Cloud.Bigquery.Datatransfer.V1.ScheduleOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disable_auto_scheduling: boolean,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct disable_auto_scheduling: false,
            start_time: nil,
            end_time: nil

  field :disable_auto_scheduling, 3, type: :bool, json_name: "disableAutoScheduling"
  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
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

  defstruct destination: nil,
            name: "",
            display_name: "",
            data_source_id: "",
            params: nil,
            schedule: "",
            schedule_options: nil,
            data_refresh_window_days: 0,
            disabled: false,
            update_time: nil,
            next_run_time: nil,
            state: :TRANSFER_STATE_UNSPECIFIED,
            user_id: 0,
            dataset_region: "",
            notification_pubsub_topic: "",
            email_preferences: nil

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

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :next_run_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "nextRunTime",
    deprecated: false

  field :state, 10,
    type: Google.Cloud.Bigquery.Datatransfer.V1.TransferState,
    enum: true,
    deprecated: false

  field :user_id, 11, type: :int64, json_name: "userId"
  field :dataset_region, 14, type: :string, json_name: "datasetRegion", deprecated: false
  field :notification_pubsub_topic, 15, type: :string, json_name: "notificationPubsubTopic"

  field :email_preferences, 18,
    type: Google.Cloud.Bigquery.Datatransfer.V1.EmailPreferences,
    json_name: "emailPreferences"
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

  defstruct destination: nil,
            name: "",
            schedule_time: nil,
            run_time: nil,
            error_status: nil,
            start_time: nil,
            end_time: nil,
            update_time: nil,
            params: nil,
            data_source_id: "",
            state: :TRANSFER_STATE_UNSPECIFIED,
            user_id: 0,
            schedule: "",
            notification_pubsub_topic: "",
            email_preferences: nil

  oneof :destination, 0

  field :name, 1, type: :string
  field :schedule_time, 3, type: Google.Protobuf.Timestamp, json_name: "scheduleTime"
  field :run_time, 10, type: Google.Protobuf.Timestamp, json_name: "runTime"
  field :error_status, 21, type: Google.Rpc.Status, json_name: "errorStatus"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :params, 9, type: Google.Protobuf.Struct, deprecated: false

  field :destination_dataset_id, 2,
    type: :string,
    json_name: "destinationDatasetId",
    oneof: 0,
    deprecated: false

  field :data_source_id, 7, type: :string, json_name: "dataSourceId", deprecated: false
  field :state, 8, type: Google.Cloud.Bigquery.Datatransfer.V1.TransferState, enum: true
  field :user_id, 11, type: :int64, json_name: "userId"
  field :schedule, 12, type: :string, deprecated: false

  field :notification_pubsub_topic, 23,
    type: :string,
    json_name: "notificationPubsubTopic",
    deprecated: false

  field :email_preferences, 25,
    type: Google.Cloud.Bigquery.Datatransfer.V1.EmailPreferences,
    json_name: "emailPreferences",
    deprecated: false
end
defmodule Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_time: Google.Protobuf.Timestamp.t() | nil,
          severity: Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage.MessageSeverity.t(),
          message_text: String.t()
        }

  defstruct message_time: nil,
            severity: :MESSAGE_SEVERITY_UNSPECIFIED,
            message_text: ""

  field :message_time, 1, type: Google.Protobuf.Timestamp, json_name: "messageTime"

  field :severity, 2,
    type: Google.Cloud.Bigquery.Datatransfer.V1.TransferMessage.MessageSeverity,
    enum: true

  field :message_text, 3, type: :string, json_name: "messageText"
end
