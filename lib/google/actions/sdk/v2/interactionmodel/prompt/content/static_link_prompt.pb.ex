defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.UrlHint do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :HINT_UNSPECIFIED, 0
  field :AMP, 1
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.StaticLinkPrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :open, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.OpenUrl
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Prompt.OpenUrl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :url, 1, type: :string
  field :hint, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Prompt.UrlHint, enum: true
end