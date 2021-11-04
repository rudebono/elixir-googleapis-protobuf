defmodule Google.Cloud.Retail.V2.PurgeMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2.PurgeUserEventsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          force: boolean
        }

  defstruct [:parent, :filter, :force]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :force, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2.PurgeUserEventsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          purged_events_count: integer
        }

  defstruct [:purged_events_count]

  field :purged_events_count, 1, type: :int64, json_name: "purgedEventsCount"

  def transform_module(), do: nil
end
