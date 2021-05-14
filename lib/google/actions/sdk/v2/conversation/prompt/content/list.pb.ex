defmodule Google.Actions.Sdk.V2.Conversation.List.ListItem do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t()
        }

  defstruct [:key]

  field :key, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Conversation.List do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          title: String.t(),
          subtitle: String.t(),
          items: [Google.Actions.Sdk.V2.Conversation.List.ListItem.t()]
        }

  defstruct [:title, :subtitle, :items]

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :items, 3, repeated: true, type: Google.Actions.Sdk.V2.Conversation.List.ListItem
end
