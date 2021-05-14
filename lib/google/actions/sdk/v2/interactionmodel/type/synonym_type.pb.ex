defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.MatchType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :EXACT_MATCH | :FUZZY_MATCH

  field :UNSPECIFIED, 0

  field :EXACT_MATCH, 1

  field :FUZZY_MATCH, 2
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display: Google.Actions.Sdk.V2.Interactionmodel.Type.EntityDisplay.t() | nil,
          synonyms: [String.t()]
        }

  defstruct [:display, :synonyms]

  field :display, 1, type: Google.Actions.Sdk.V2.Interactionmodel.Type.EntityDisplay
  field :synonyms, 2, repeated: true, type: :string
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.EntitiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.Entity.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.Entity
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          match_type: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.MatchType.t(),
          accept_unknown_values: boolean,
          entities: %{
            String.t() => Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.Entity.t() | nil
          }
        }

  defstruct [:match_type, :accept_unknown_values, :entities]

  field :match_type, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.MatchType,
    enum: true

  field :accept_unknown_values, 3, type: :bool

  field :entities, 2,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.EntitiesEntry,
    map: true
end
