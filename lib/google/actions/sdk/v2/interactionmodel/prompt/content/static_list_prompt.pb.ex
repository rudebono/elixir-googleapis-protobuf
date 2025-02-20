defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticListPrompt.ListItem do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string, deprecated: false
  field :title, 2, type: :string, deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :image, 4,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticImagePrompt,
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticListPrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :subtitle, 2, type: :string, deprecated: false

  field :items, 3,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticListPrompt.ListItem,
    deprecated: false
end
