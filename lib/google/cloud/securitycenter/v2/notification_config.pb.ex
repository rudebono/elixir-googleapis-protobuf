defmodule Google.Cloud.Securitycenter.V2.NotificationConfig.StreamingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :filter, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V2.NotificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :notify_config, 0

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string
  field :pubsub_topic, 3, type: :string, json_name: "pubsubTopic", deprecated: false
  field :service_account, 4, type: :string, json_name: "serviceAccount", deprecated: false

  field :streaming_config, 5,
    type: Google.Cloud.Securitycenter.V2.NotificationConfig.StreamingConfig,
    json_name: "streamingConfig",
    oneof: 0

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end
