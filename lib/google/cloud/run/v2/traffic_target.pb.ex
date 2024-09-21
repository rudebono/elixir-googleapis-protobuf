defmodule Google.Cloud.Run.V2.TrafficTargetAllocationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED, 0
  field :TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST, 1
  field :TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION, 2
end

defmodule Google.Cloud.Run.V2.TrafficTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Run.V2.TrafficTargetAllocationType, enum: true
  field :revision, 2, type: :string, deprecated: false
  field :percent, 3, type: :int32
  field :tag, 4, type: :string
end

defmodule Google.Cloud.Run.V2.TrafficTargetStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Run.V2.TrafficTargetAllocationType, enum: true
  field :revision, 2, type: :string, deprecated: false
  field :percent, 3, type: :int32
  field :tag, 4, type: :string
  field :uri, 5, type: :string
end