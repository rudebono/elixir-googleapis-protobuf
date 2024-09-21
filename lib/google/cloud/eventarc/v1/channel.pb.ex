defmodule Google.Cloud.Eventarc.V1.Channel.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
  field :INACTIVE, 3
end

defmodule Google.Cloud.Eventarc.V1.Channel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  field :provider, 7, type: :string
  field :pubsub_topic, 8, type: :string, json_name: "pubsubTopic", oneof: 0, deprecated: false
  field :state, 9, type: Google.Cloud.Eventarc.V1.Channel.State, enum: true, deprecated: false
  field :activation_token, 10, type: :string, json_name: "activationToken", deprecated: false
  field :crypto_key_name, 11, type: :string, json_name: "cryptoKeyName", deprecated: false
end