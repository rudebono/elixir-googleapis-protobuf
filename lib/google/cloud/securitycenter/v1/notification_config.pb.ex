defmodule Google.Cloud.Securitycenter.V1.NotificationConfig.StreamingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t()
        }

  defstruct filter: ""

  field :filter, 1, type: :string
end
defmodule Google.Cloud.Securitycenter.V1.NotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notify_config:
            {:streaming_config,
             Google.Cloud.Securitycenter.V1.NotificationConfig.StreamingConfig.t() | nil},
          name: String.t(),
          description: String.t(),
          pubsub_topic: String.t(),
          service_account: String.t()
        }

  defstruct notify_config: nil,
            name: "",
            description: "",
            pubsub_topic: "",
            service_account: ""

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
