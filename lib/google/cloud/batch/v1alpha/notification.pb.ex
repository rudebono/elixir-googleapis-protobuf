defmodule Google.Cloud.Batch.V1alpha.Notification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :pubsub_topic, 1, type: :string, json_name: "pubsubTopic", deprecated: false
end
