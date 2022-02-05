defmodule Google.Cloud.Eventarc.V1.Channel.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :ACTIVE | :INACTIVE

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
  field :INACTIVE, 3
end
defmodule Google.Cloud.Eventarc.V1.Channel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transport: {:pubsub_topic, String.t()},
          name: String.t(),
          uid: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          provider: String.t(),
          state: Google.Cloud.Eventarc.V1.Channel.State.t(),
          activation_token: String.t()
        }

  defstruct transport: nil,
            name: "",
            uid: "",
            create_time: nil,
            update_time: nil,
            provider: "",
            state: :STATE_UNSPECIFIED,
            activation_token: ""

  oneof :transport, 0

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :provider, 7, type: :string, deprecated: false
  field :pubsub_topic, 8, type: :string, json_name: "pubsubTopic", oneof: 0, deprecated: false
  field :state, 9, type: Google.Cloud.Eventarc.V1.Channel.State, enum: true, deprecated: false
  field :activation_token, 10, type: :string, json_name: "activationToken", deprecated: false
end
