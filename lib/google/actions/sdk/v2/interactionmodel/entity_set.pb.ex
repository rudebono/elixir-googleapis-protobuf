defmodule Google.Actions.Sdk.V2.Interactionmodel.EntitySet.Entity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string, deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.EntitySet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entities, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.EntitySet.Entity,
    deprecated: false
end