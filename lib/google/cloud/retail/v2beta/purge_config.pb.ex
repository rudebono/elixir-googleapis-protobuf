defmodule Google.Cloud.Retail.V2beta.PurgeMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Retail.V2beta.PurgeUserEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          force: boolean
        }

  defstruct parent: "",
            filter: "",
            force: false

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :force, 3, type: :bool
end
defmodule Google.Cloud.Retail.V2beta.PurgeUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purged_events_count: integer
        }

  defstruct purged_events_count: 0

  field :purged_events_count, 1, type: :int64, json_name: "purgedEventsCount"
end
