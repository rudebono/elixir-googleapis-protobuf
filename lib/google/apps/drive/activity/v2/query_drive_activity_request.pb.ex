defmodule Google.Apps.Drive.Activity.V2.QueryDriveActivityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: {:item_name, String.t()} | {:ancestor_name, String.t()},
          consolidation_strategy: Google.Apps.Drive.Activity.V2.ConsolidationStrategy.t() | nil,
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct key: nil,
            consolidation_strategy: nil,
            page_size: 0,
            page_token: "",
            filter: ""

  oneof :key, 0

  field :item_name, 1, type: :string, json_name: "itemName", oneof: 0
  field :ancestor_name, 2, type: :string, json_name: "ancestorName", oneof: 0

  field :consolidation_strategy, 5,
    type: Google.Apps.Drive.Activity.V2.ConsolidationStrategy,
    json_name: "consolidationStrategy"

  field :page_size, 6, type: :int32, json_name: "pageSize"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :filter, 8, type: :string
end
defmodule Google.Apps.Drive.Activity.V2.ConsolidationStrategy.NoConsolidation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Apps.Drive.Activity.V2.ConsolidationStrategy.Legacy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Apps.Drive.Activity.V2.ConsolidationStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          strategy:
            {:none, Google.Apps.Drive.Activity.V2.ConsolidationStrategy.NoConsolidation.t() | nil}
            | {:legacy, Google.Apps.Drive.Activity.V2.ConsolidationStrategy.Legacy.t() | nil}
        }

  defstruct strategy: nil

  oneof :strategy, 0

  field :none, 1,
    type: Google.Apps.Drive.Activity.V2.ConsolidationStrategy.NoConsolidation,
    oneof: 0

  field :legacy, 2, type: Google.Apps.Drive.Activity.V2.ConsolidationStrategy.Legacy, oneof: 0
end
