defmodule Google.Appengine.V1beta.TrafficSplit.ShardBy do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :COOKIE | :IP | :RANDOM

  field :UNSPECIFIED, 0
  field :COOKIE, 1
  field :IP, 2
  field :RANDOM, 3
end
defmodule Google.Appengine.V1beta.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t(),
          split: Google.Appengine.V1beta.TrafficSplit.t() | nil,
          network_settings: Google.Appengine.V1beta.NetworkSettings.t() | nil
        }

  defstruct name: "",
            id: "",
            split: nil,
            network_settings: nil

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :split, 3, type: Google.Appengine.V1beta.TrafficSplit

  field :network_settings, 6,
    type: Google.Appengine.V1beta.NetworkSettings,
    json_name: "networkSettings"
end
defmodule Google.Appengine.V1beta.TrafficSplit.AllocationsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct key: "",
            value: 0.0

  field :key, 1, type: :string
  field :value, 2, type: :double
end
defmodule Google.Appengine.V1beta.TrafficSplit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          shard_by: Google.Appengine.V1beta.TrafficSplit.ShardBy.t(),
          allocations: %{String.t() => float | :infinity | :negative_infinity | :nan}
        }

  defstruct shard_by: :UNSPECIFIED,
            allocations: %{}

  field :shard_by, 1,
    type: Google.Appengine.V1beta.TrafficSplit.ShardBy,
    json_name: "shardBy",
    enum: true

  field :allocations, 2,
    repeated: true,
    type: Google.Appengine.V1beta.TrafficSplit.AllocationsEntry,
    map: true
end
