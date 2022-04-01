defmodule Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :DRAFT | :RUNNING | :PAUSED | :COMPLETED

  field :STATE_UNSPECIFIED, 0
  field :DRAFT, 1
  field :RUNNING, 2
  field :PAUSED, 3
  field :COMPLETED, 4
end
defmodule Google.Cloud.Bigquery.Migration.V2.MigrationTask.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :PENDING
          | :ORCHESTRATING
          | :RUNNING
          | :PAUSED
          | :SUCCEEDED
          | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ORCHESTRATING, 2
  field :RUNNING, 3
  field :PAUSED, 4
  field :SUCCEEDED, 5
  field :FAILED, 6
end
defmodule Google.Cloud.Bigquery.Migration.V2.MigrationSubtask.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :ACTIVE | :RUNNING | :SUCCEEDED | :FAILED | :PAUSED

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :RUNNING, 2
  field :SUCCEEDED, 3
  field :FAILED, 4
  field :PAUSED, 5
end
defmodule Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.TasksEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Bigquery.Migration.V2.MigrationTask.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Bigquery.Migration.V2.MigrationTask
end
defmodule Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          tasks: %{String.t() => Google.Cloud.Bigquery.Migration.V2.MigrationTask.t() | nil},
          state: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.State.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          last_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            display_name: "",
            tasks: %{},
            state: :STATE_UNSPECIFIED,
            create_time: nil,
            last_update_time: nil

  field :name, 1, type: :string, deprecated: false
  field :display_name, 6, type: :string, json_name: "displayName"

  field :tasks, 2,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.TasksEntry,
    map: true

  field :state, 3,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationWorkflow.State,
    enum: true,
    deprecated: false

  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :last_update_time, 5, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
end
defmodule Google.Cloud.Bigquery.Migration.V2.MigrationTask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          task_details:
            {:translation_config_details,
             Google.Cloud.Bigquery.Migration.V2.TranslationConfigDetails.t() | nil},
          id: String.t(),
          type: String.t(),
          state: Google.Cloud.Bigquery.Migration.V2.MigrationTask.State.t(),
          processing_error: Google.Rpc.ErrorInfo.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          last_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct task_details: nil,
            id: "",
            type: "",
            state: :STATE_UNSPECIFIED,
            processing_error: nil,
            create_time: nil,
            last_update_time: nil

  oneof :task_details, 0

  field :translation_config_details, 14,
    type: Google.Cloud.Bigquery.Migration.V2.TranslationConfigDetails,
    json_name: "translationConfigDetails",
    oneof: 0

  field :id, 1, type: :string, deprecated: false
  field :type, 2, type: :string

  field :state, 4,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationTask.State,
    enum: true,
    deprecated: false

  field :processing_error, 5,
    type: Google.Rpc.ErrorInfo,
    json_name: "processingError",
    deprecated: false

  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :last_update_time, 7, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
end
defmodule Google.Cloud.Bigquery.Migration.V2.MigrationSubtask do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          task_id: String.t(),
          type: String.t(),
          state: Google.Cloud.Bigquery.Migration.V2.MigrationSubtask.State.t(),
          processing_error: Google.Rpc.ErrorInfo.t() | nil,
          resource_error_details: [Google.Cloud.Bigquery.Migration.V2.ResourceErrorDetail.t()],
          resource_error_count: integer,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          last_update_time: Google.Protobuf.Timestamp.t() | nil,
          metrics: [Google.Cloud.Bigquery.Migration.V2.TimeSeries.t()]
        }

  defstruct name: "",
            task_id: "",
            type: "",
            state: :STATE_UNSPECIFIED,
            processing_error: nil,
            resource_error_details: [],
            resource_error_count: 0,
            create_time: nil,
            last_update_time: nil,
            metrics: []

  field :name, 1, type: :string, deprecated: false
  field :task_id, 2, type: :string, json_name: "taskId"
  field :type, 3, type: :string

  field :state, 5,
    type: Google.Cloud.Bigquery.Migration.V2.MigrationSubtask.State,
    enum: true,
    deprecated: false

  field :processing_error, 6,
    type: Google.Rpc.ErrorInfo,
    json_name: "processingError",
    deprecated: false

  field :resource_error_details, 12,
    repeated: true,
    type: Google.Cloud.Bigquery.Migration.V2.ResourceErrorDetail,
    json_name: "resourceErrorDetails",
    deprecated: false

  field :resource_error_count, 13, type: :int32, json_name: "resourceErrorCount"
  field :create_time, 7, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :last_update_time, 8, type: Google.Protobuf.Timestamp, json_name: "lastUpdateTime"
  field :metrics, 11, repeated: true, type: Google.Cloud.Bigquery.Migration.V2.TimeSeries
end
