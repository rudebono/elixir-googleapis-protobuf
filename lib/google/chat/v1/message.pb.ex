defmodule Google.Chat.V1.ActionResponse.ResponseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :NEW_MESSAGE, 1
  field :UPDATE_MESSAGE, 2
  field :UPDATE_USER_MESSAGE_CARDS, 6
  field :REQUEST_CONFIG, 3
  field :DIALOG, 4
  field :UPDATE_WIDGET, 7
end

defmodule Google.Chat.V1.CreateMessageRequest.MessageReplyOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MESSAGE_REPLY_OPTION_UNSPECIFIED, 0
  field :REPLY_MESSAGE_FALLBACK_TO_NEW_THREAD, 1
  field :REPLY_MESSAGE_OR_FAIL, 2
end

defmodule Google.Chat.V1.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :sender, 2, type: Google.Chat.V1.User, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :last_update_time, 23,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false

  field :delete_time, 26,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :text, 4, type: :string, deprecated: false
  field :formatted_text, 43, type: :string, json_name: "formattedText", deprecated: false

  field :cards, 5,
    repeated: true,
    type: Google.Chat.V1.ContextualAddOnMarkup.Card,
    deprecated: true

  field :cards_v2, 22,
    repeated: true,
    type: Google.Chat.V1.CardWithId,
    json_name: "cardsV2",
    deprecated: false

  field :annotations, 10, repeated: true, type: Google.Chat.V1.Annotation, deprecated: false
  field :thread, 11, type: Google.Chat.V1.Thread
  field :space, 12, type: Google.Chat.V1.Space, deprecated: false
  field :fallback_text, 13, type: :string, json_name: "fallbackText", deprecated: false

  field :action_response, 14,
    type: Google.Chat.V1.ActionResponse,
    json_name: "actionResponse",
    deprecated: false

  field :argument_text, 15, type: :string, json_name: "argumentText", deprecated: false

  field :slash_command, 17,
    type: Google.Chat.V1.SlashCommand,
    json_name: "slashCommand",
    deprecated: false

  field :attachment, 18, repeated: true, type: Google.Chat.V1.Attachment, deprecated: false

  field :matched_url, 20,
    type: Google.Chat.V1.MatchedUrl,
    json_name: "matchedUrl",
    deprecated: false

  field :thread_reply, 25, type: :bool, json_name: "threadReply", deprecated: false

  field :client_assigned_message_id, 32,
    type: :string,
    json_name: "clientAssignedMessageId",
    deprecated: false

  field :emoji_reaction_summaries, 33,
    repeated: true,
    type: Google.Chat.V1.EmojiReactionSummary,
    json_name: "emojiReactionSummaries",
    deprecated: false

  field :private_message_viewer, 36,
    type: Google.Chat.V1.User,
    json_name: "privateMessageViewer",
    deprecated: false

  field :deletion_metadata, 38,
    type: Google.Chat.V1.DeletionMetadata,
    json_name: "deletionMetadata",
    deprecated: false

  field :quoted_message_metadata, 39,
    type: Google.Chat.V1.QuotedMessageMetadata,
    json_name: "quotedMessageMetadata",
    deprecated: false

  field :attached_gifs, 42,
    repeated: true,
    type: Google.Chat.V1.AttachedGif,
    json_name: "attachedGifs",
    deprecated: false

  field :accessory_widgets, 44,
    repeated: true,
    type: Google.Chat.V1.AccessoryWidget,
    json_name: "accessoryWidgets",
    deprecated: false
end

defmodule Google.Chat.V1.AttachedGif do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.QuotedMessageMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :last_update_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdateTime",
    deprecated: false
end

defmodule Google.Chat.V1.Thread do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :thread_key, 3, type: :string, json_name: "threadKey", deprecated: false
end

defmodule Google.Chat.V1.ActionResponse.SelectionItems do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :items, 1, repeated: true, type: Google.Apps.Card.V1.SelectionInput.SelectionItem
end

defmodule Google.Chat.V1.ActionResponse.UpdatedWidget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :updated_widget, 0

  field :suggestions, 1, type: Google.Chat.V1.ActionResponse.SelectionItems, oneof: 0
  field :widget, 2, type: :string
end

defmodule Google.Chat.V1.ActionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :type, 1, type: Google.Chat.V1.ActionResponse.ResponseType, enum: true, deprecated: false
  field :url, 2, type: :string, deprecated: false

  field :dialog_action, 3,
    type: Google.Chat.V1.DialogAction,
    json_name: "dialogAction",
    deprecated: false

  field :updated_widget, 4,
    type: Google.Chat.V1.ActionResponse.UpdatedWidget,
    json_name: "updatedWidget",
    deprecated: false
end

defmodule Google.Chat.V1.AccessoryWidget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :action, 0

  field :button_list, 1, type: Google.Apps.Card.V1.ButtonList, json_name: "buttonList", oneof: 0
end

defmodule Google.Chat.V1.GetMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.DeleteMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Chat.V1.UpdateMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :message, 1, type: Google.Chat.V1.Message, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Chat.V1.CreateMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :message, 4, type: Google.Chat.V1.Message, deprecated: false
  field :thread_key, 6, type: :string, json_name: "threadKey", deprecated: true
  field :request_id, 7, type: :string, json_name: "requestId", deprecated: false

  field :message_reply_option, 8,
    type: Google.Chat.V1.CreateMessageRequest.MessageReplyOption,
    json_name: "messageReplyOption",
    enum: true,
    deprecated: false

  field :message_id, 9, type: :string, json_name: "messageId", deprecated: false
end

defmodule Google.Chat.V1.ListMessagesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :show_deleted, 6, type: :bool, json_name: "showDeleted", deprecated: false
end

defmodule Google.Chat.V1.ListMessagesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :messages, 1, repeated: true, type: Google.Chat.V1.Message
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Chat.V1.DialogAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :action, 0

  field :dialog, 1, type: Google.Chat.V1.Dialog, oneof: 0, deprecated: false

  field :action_status, 2,
    type: Google.Chat.V1.ActionStatus,
    json_name: "actionStatus",
    deprecated: false
end

defmodule Google.Chat.V1.Dialog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :body, 1, type: Google.Apps.Card.V1.Card, deprecated: false
end

defmodule Google.Chat.V1.CardWithId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :card_id, 1, type: :string, json_name: "cardId"
  field :card, 2, type: Google.Apps.Card.V1.Card
end