defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.Entity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          display: Google.Actions.Sdk.V2.Interactionmodel.Type.EntityDisplay.t() | nil,
          regular_expressions: [String.t()]
        }

  defstruct display: nil,
            regular_expressions: []

  field :display, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.EntityDisplay,
    deprecated: false

  field :regular_expressions, 2,
    repeated: true,
    type: :string,
    json_name: "regularExpressions",
    deprecated: false
end
defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.EntitiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value:
            Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.Entity.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.Entity
end
defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          entities: %{
            String.t() =>
              Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.Entity.t() | nil
          }
        }

  defstruct entities: %{}

  field :entities, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.EntitiesEntry,
    map: true,
    deprecated: false
end
