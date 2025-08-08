defmodule Google.Cloud.Run.V2.InstanceSplitAllocationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INSTANCE_SPLIT_ALLOCATION_TYPE_UNSPECIFIED, 0
  field :INSTANCE_SPLIT_ALLOCATION_TYPE_LATEST, 1
  field :INSTANCE_SPLIT_ALLOCATION_TYPE_REVISION, 2
end

defmodule Google.Cloud.Run.V2.InstanceSplit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Run.V2.InstanceSplitAllocationType, enum: true
  field :revision, 2, type: :string, deprecated: false
  field :percent, 3, type: :int32
end

defmodule Google.Cloud.Run.V2.InstanceSplitStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1, type: Google.Cloud.Run.V2.InstanceSplitAllocationType, enum: true
  field :revision, 2, type: :string, deprecated: false
  field :percent, 3, type: :int32
end
