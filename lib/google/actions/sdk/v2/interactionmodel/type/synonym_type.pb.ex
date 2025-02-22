defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.MatchType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :EXACT_MATCH, 1
  field :FUZZY_MATCH, 2
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.EntityDisplay,
    deprecated: false

  field :synonyms, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.EntitiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.Entity
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :match_type, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.MatchType,
    json_name: "matchType",
    enum: true,
    deprecated: false

  field :accept_unknown_values, 3,
    type: :bool,
    json_name: "acceptUnknownValues",
    deprecated: false

  field :entities, 2,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.SynonymType.EntitiesEntry,
    map: true,
    deprecated: false
end
