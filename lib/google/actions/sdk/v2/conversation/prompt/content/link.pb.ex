defmodule Google.Actions.Sdk.V2.Conversation.UrlHint do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :LINK_UNSPECIFIED, 0
  field :AMP, 1
end

defmodule Google.Actions.Sdk.V2.Conversation.Link do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :open, 2, type: Google.Actions.Sdk.V2.Conversation.OpenUrl
end

defmodule Google.Actions.Sdk.V2.Conversation.OpenUrl do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :url, 1, type: :string
  field :hint, 2, type: Google.Actions.Sdk.V2.Conversation.UrlHint, enum: true
end