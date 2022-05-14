defmodule Google.Appengine.V1.TrafficSplit.ShardBy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :COOKIE, 1
  field :IP, 2
  field :RANDOM, 3
end
defmodule Google.Appengine.V1.Service.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Appengine.V1.Service do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :split, 3, type: Google.Appengine.V1.TrafficSplit
  field :labels, 4, repeated: true, type: Google.Appengine.V1.Service.LabelsEntry, map: true

  field :network_settings, 6,
    type: Google.Appengine.V1.NetworkSettings,
    json_name: "networkSettings"
end
defmodule Google.Appengine.V1.TrafficSplit.AllocationsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :double
end
defmodule Google.Appengine.V1.TrafficSplit do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :shard_by, 1,
    type: Google.Appengine.V1.TrafficSplit.ShardBy,
    json_name: "shardBy",
    enum: true

  field :allocations, 2,
    repeated: true,
    type: Google.Appengine.V1.TrafficSplit.AllocationsEntry,
    map: true
end
