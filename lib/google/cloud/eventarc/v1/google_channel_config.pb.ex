defmodule Google.Cloud.Eventarc.V1.GoogleChannelConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.V1.GoogleChannelConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :crypto_key_name, 7, type: :string, json_name: "cryptoKeyName", deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Eventarc.V1.GoogleChannelConfig.LabelsEntry,
    map: true,
    deprecated: false
end
