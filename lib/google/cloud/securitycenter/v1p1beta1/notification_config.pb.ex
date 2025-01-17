defmodule Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :FINDING, 1
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.StreamingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :filter, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :notify_config, 0

  field :name, 1, type: :string
  field :description, 2, type: :string

  field :event_type, 3,
    type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.EventType,
    json_name: "eventType",
    enum: true

  field :pubsub_topic, 4, type: :string, json_name: "pubsubTopic", deprecated: false
  field :service_account, 5, type: :string, json_name: "serviceAccount", deprecated: false

  field :streaming_config, 6,
    type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.StreamingConfig,
    json_name: "streamingConfig",
    oneof: 0
end
