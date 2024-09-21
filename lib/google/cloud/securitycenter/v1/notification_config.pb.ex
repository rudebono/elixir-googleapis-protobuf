defmodule Google.Cloud.Securitycenter.V1.NotificationConfig.StreamingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :filter, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.NotificationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :notify_config, 0

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :pubsub_topic, 3, type: :string, json_name: "pubsubTopic", deprecated: false
  field :service_account, 4, type: :string, json_name: "serviceAccount", deprecated: false

  field :streaming_config, 5,
    type: Google.Cloud.Securitycenter.V1.NotificationConfig.StreamingConfig,
    json_name: "streamingConfig",
    oneof: 0
end