defmodule Google.Cloud.Eventarc.V1.ChannelConnection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          uid: String.t(),
          channel: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          activation_token: String.t()
        }

  defstruct name: "",
            uid: "",
            channel: "",
            create_time: nil,
            update_time: nil,
            activation_token: ""

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :channel, 5, type: :string, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :activation_token, 8, type: :string, json_name: "activationToken", deprecated: false
end
