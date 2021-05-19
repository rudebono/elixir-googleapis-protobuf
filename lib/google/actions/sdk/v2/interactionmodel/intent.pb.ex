defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.EntitySetReferences.EntitySetReference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_set: String.t()
        }

  defstruct [:entity_set]

  field :entity_set, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.EntitySetReferences do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entity_set_references: [
            Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.EntitySetReferences.EntitySetReference.t()
          ]
        }

  defstruct [:entity_set_references]

  field :entity_set_references, 1,
    repeated: true,
    type:
      Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.EntitySetReferences.EntitySetReference
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameter_type: {atom, any},
          name: String.t()
        }

  defstruct [:parameter_type, :name]

  oneof :parameter_type, 0
  field :name, 1, type: :string
  field :type, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Type.ClassReference, oneof: 0

  field :entity_set_references, 3,
    type: Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.EntitySetReferences,
    oneof: 0
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Intent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parameters: [Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter.t()],
          training_phrases: [String.t()]
        }

  defstruct [:parameters, :training_phrases]

  field :parameters, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Intent.IntentParameter

  field :training_phrases, 2, repeated: true, type: :string
end
