defmodule Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Stage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STAGE_UNSPECIFIED, 0
  field :SENT, 1
  field :SEND_FAILURE, 2
  field :DROPPED, 3
end

defmodule Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Event do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EVENT_UNSPECIFIED, 0
  field :HEALTH_STATUS_CHANGE, 1
end

defmodule Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :stage, 1,
    type: Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Stage,
    enum: true

  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime"
  field :notification_id, 3, type: :string, json_name: "notificationId"

  field :event, 4,
    type: Google.Cloud.Saasaccelerator.Management.Logs.V1.NotificationStage.Event,
    enum: true

  field :message, 5, type: :string
end
