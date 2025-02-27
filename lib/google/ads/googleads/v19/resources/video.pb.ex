defmodule Google.Ads.Googleads.V19.Resources.Video do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 6, proto3_optional: true, type: :string, deprecated: false

  field :channel_id, 7,
    proto3_optional: true,
    type: :string,
    json_name: "channelId",
    deprecated: false

  field :duration_millis, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "durationMillis",
    deprecated: false

  field :title, 9, proto3_optional: true, type: :string, deprecated: false
end
