defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.EntitySetReferences.EntitySetReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entity_set, 1, type: :string, json_name: "entitySet", deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.EntitySetReferences do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entity_set_references, 1,
    repeated: true,
    type:
      Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.EntitySetReferences.EntitySetReference,
    json_name: "entitySetReferences",
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :parameter_type, 0

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.ClassReference,
    oneof: 0,
    deprecated: false

  field :entity_set_references, 3,
    type: Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.EntitySetReferences,
    json_name: "entitySetReferences",
    oneof: 0,
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parameters, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter

  field :training_phrases, 2, repeated: true, type: :string, json_name: "trainingPhrases"
end
