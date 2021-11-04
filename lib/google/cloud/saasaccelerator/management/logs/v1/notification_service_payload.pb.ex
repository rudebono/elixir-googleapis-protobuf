defmodule Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Stage do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STAGE_UNSPECIFIED | :SENT | :SEND_FAILURE | :DROPPED

  field :STAGE_UNSPECIFIED, 0
  field :SENT, 1
  field :SEND_FAILURE, 2
  field :DROPPED, 3
end

defmodule Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Event do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EVENT_UNSPECIFIED | :HEALTH_STATUS_CHANGE

  field :EVENT_UNSPECIFIED, 0
  field :HEALTH_STATUS_CHANGE, 1
end

defmodule Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          stage: Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Stage.t(),
          event_time: Google.Protobuf.Timestamp.t() | nil,
          notification_id: String.t(),
          event: Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Event.t(),
          message: String.t()
        }

  defstruct [:stage, :event_time, :notification_id, :event, :message]

  field :stage, 1,
    type: Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Stage,
    enum: true

  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :notification_id, 3, type: :string, json_name: "notificationId"

  field :event, 4,
    type: Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Event,
    enum: true

  field :message, 5, type: :string

  def transform_module(), do: nil
end
