defmodule Google.Actions.Sdk.V2.Conversation.List.ListItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
end

defmodule Google.Actions.Sdk.V2.Conversation.List do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :title, 1, type: :string
  field :subtitle, 2, type: :string
  field :items, 3, repeated: true, type: Google.Actions.Sdk.V2.Conversation.List.ListItem
end
