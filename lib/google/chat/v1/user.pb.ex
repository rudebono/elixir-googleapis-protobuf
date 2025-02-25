defmodule Google.Chat.V1.User.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :HUMAN, 1
  field :BOT, 2
end

defmodule Google.Chat.V1.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :domain_id, 6, type: :string, json_name: "domainId"
  field :type, 5, type: Google.Chat.V1.User.Type, enum: true
  field :is_anonymous, 7, type: :bool, json_name: "isAnonymous", deprecated: false
end
