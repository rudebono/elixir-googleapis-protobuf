defmodule Google.Apps.Drive.Activity.V2.QueryDriveActivityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: {atom, any},
          consolidation_strategy: Google.Apps.Drive.Activity.V2.ConsolidationStrategy.t() | nil,
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:key, :consolidation_strategy, :page_size, :page_token, :filter]

  oneof :key, 0
  field :item_name, 1, type: :string, oneof: 0
  field :ancestor_name, 2, type: :string, oneof: 0
  field :consolidation_strategy, 5, type: Google.Apps.Drive.Activity.V2.ConsolidationStrategy
  field :page_size, 6, type: :int32
  field :page_token, 7, type: :string
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
          strategy: {atom, any}
        }

  defstruct [:strategy]

  oneof :strategy, 0

  field :none, 1,
    type: Google.Apps.Drive.Activity.V2.ConsolidationStrategy.NoConsolidation,
    oneof: 0

  field :legacy, 2, type: Google.Apps.Drive.Activity.V2.ConsolidationStrategy.Legacy, oneof: 0
end
