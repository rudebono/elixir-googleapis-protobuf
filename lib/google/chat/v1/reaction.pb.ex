defmodule Google.Chat.V1.Reaction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :user, 2, type: Google.Chat.V1.User, deprecated: false
  field :emoji, 3, type: Google.Chat.V1.Emoji, deprecated: false
end

defmodule Google.Chat.V1.Emoji do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :content, 0

  field :unicode, 1, type: :string, oneof: 0, deprecated: false
  field :custom_emoji, 2, type: Google.Chat.V1.CustomEmoji, json_name: "customEmoji", oneof: 0
end

defmodule Google.Chat.V1.CustomEmoji.CustomEmojiPayload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_content, 1, type: :bytes, json_name: "fileContent", deprecated: false
  field :filename, 2, type: :string, deprecated: false
end

defmodule Google.Chat.V1.CustomEmoji do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 2, type: :string, deprecated: false
  field :uid, 1, type: :string, deprecated: false
  field :emoji_name, 3, type: :string, json_name: "emojiName", deprecated: false
  field :temporary_image_uri, 4, type: :string, json_name: "temporaryImageUri", deprecated: false
  field :payload, 5, type: Google.Chat.V1.CustomEmoji.CustomEmojiPayload, deprecated: false
end

defmodule Google.Chat.V1.EmojiReactionSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :emoji, 1, type: Google.Chat.V1.Emoji, deprecated: false

  field :reaction_count, 2,
    proto3_optional: true,
    type: :int32,
    json_name: "reactionCount",
    deprecated: false
end

defmodule Google.Chat.V1.CreateReactionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :reaction, 2, type: Google.Chat.V1.Reaction, deprecated: false
end

defmodule Google.Chat.V1.ListReactionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Chat.V1.ListReactionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :reactions, 1, repeated: true, type: Google.Chat.V1.Reaction
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Chat.V1.DeleteReactionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.CreateCustomEmojiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :custom_emoji, 1,
    type: Google.Chat.V1.CustomEmoji,
    json_name: "customEmoji",
    deprecated: false
end

defmodule Google.Chat.V1.GetCustomEmojiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.ListCustomEmojisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Chat.V1.ListCustomEmojisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :custom_emojis, 1,
    repeated: true,
    type: Google.Chat.V1.CustomEmoji,
    json_name: "customEmojis",
    deprecated: false

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Chat.V1.DeleteCustomEmojiRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
