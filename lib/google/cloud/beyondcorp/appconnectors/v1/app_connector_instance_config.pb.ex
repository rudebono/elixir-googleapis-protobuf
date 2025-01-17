defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnectorInstanceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :sequence_number, 1, type: :int64, json_name: "sequenceNumber", deprecated: false
  field :instance_config, 2, type: Google.Protobuf.Any, json_name: "instanceConfig"

  field :notification_config, 3,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.NotificationConfig,
    json_name: "notificationConfig"

  field :image_config, 4,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.ImageConfig,
    json_name: "imageConfig"
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.NotificationConfig.CloudPubSubNotificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :pubsub_subscription, 1, type: :string, json_name: "pubsubSubscription"
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.NotificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :config, 0

  field :pubsub_notification, 1,
    type:
      Google.Cloud.Beyondcorp.Appconnectors.V1.NotificationConfig.CloudPubSubNotificationConfig,
    json_name: "pubsubNotification",
    oneof: 0
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.ImageConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :target_image, 1, type: :string, json_name: "targetImage"
  field :stable_image, 2, type: :string, json_name: "stableImage"
end
