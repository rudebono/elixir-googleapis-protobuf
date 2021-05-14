defmodule Google.Cloud.Securitycenter.V1.NotificationConfig.StreamingConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          filter: String.t()
        }

  defstruct [:filter]

  field :filter, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1.NotificationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notify_config: {atom, any},
          name: String.t(),
          description: String.t(),
          pubsub_topic: String.t(),
          service_account: String.t()
        }

  defstruct [:notify_config, :name, :description, :pubsub_topic, :service_account]

  oneof :notify_config, 0
  field :name, 1, type: :string
  field :description, 2, type: :string
  field :pubsub_topic, 3, type: :string
  field :service_account, 4, type: :string

  field :streaming_config, 5,
    type: Google.Cloud.Securitycenter.V1.NotificationConfig.StreamingConfig,
    oneof: 0
end
