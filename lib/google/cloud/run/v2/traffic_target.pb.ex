defmodule Google.Cloud.Run.V2.TrafficTargetAllocationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED
          | :TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST
          | :TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION

  field :TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED, 0
  field :TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST, 1
  field :TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION, 2
end
defmodule Google.Cloud.Run.V2.TrafficTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Run.V2.TrafficTargetAllocationType.t(),
          revision: String.t(),
          percent: integer,
          tag: String.t()
        }

  defstruct type: :TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED,
            revision: "",
            percent: 0,
            tag: ""

  field :type, 1, type: Google.Cloud.Run.V2.TrafficTargetAllocationType, enum: true
  field :revision, 2, type: :string, deprecated: false
  field :percent, 3, type: :int32
  field :tag, 4, type: :string
end
defmodule Google.Cloud.Run.V2.TrafficTargetStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Cloud.Run.V2.TrafficTargetAllocationType.t(),
          revision: String.t(),
          percent: integer,
          tag: String.t(),
          uri: String.t()
        }

  defstruct type: :TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED,
            revision: "",
            percent: 0,
            tag: "",
            uri: ""

  field :type, 1, type: Google.Cloud.Run.V2.TrafficTargetAllocationType, enum: true
  field :revision, 2, type: :string, deprecated: false
  field :percent, 3, type: :int32
  field :tag, 4, type: :string
  field :uri, 5, type: :string
end