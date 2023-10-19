defmodule Google.Ads.Googleads.V15.Resources.TopicConstant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 5, proto3_optional: true, type: :int64, deprecated: false

  field :topic_constant_parent, 6,
    proto3_optional: true,
    type: :string,
    json_name: "topicConstantParent",
    deprecated: false

  field :path, 7, repeated: true, type: :string, deprecated: false
end