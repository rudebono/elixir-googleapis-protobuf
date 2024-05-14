defmodule Google.Chat.V1.Reaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :user, 2, type: Google.Chat.V1.User, deprecated: false
  field :emoji, 3, type: Google.Chat.V1.Emoji
end

defmodule Google.Chat.V1.Emoji do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :content, 0

  field :unicode, 1, type: :string, oneof: 0

  field :custom_emoji, 2,
    type: Google.Chat.V1.CustomEmoji,
    json_name: "customEmoji",
    oneof: 0,
    deprecated: false
end

defmodule Google.Chat.V1.CustomEmoji do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uid, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.EmojiReactionSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :emoji, 1, type: Google.Chat.V1.Emoji
  field :reaction_count, 2, proto3_optional: true, type: :int32, json_name: "reactionCount"
end

defmodule Google.Chat.V1.CreateReactionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :reaction, 2, type: Google.Chat.V1.Reaction, deprecated: false
end

defmodule Google.Chat.V1.ListReactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Chat.V1.ListReactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :reactions, 1, repeated: true, type: Google.Chat.V1.Reaction
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Chat.V1.DeleteReactionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end