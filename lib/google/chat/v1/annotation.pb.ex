defmodule Google.Chat.V1.AnnotationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :ANNOTATION_TYPE_UNSPECIFIED, 0
  field :USER_MENTION, 1
  field :SLASH_COMMAND, 2
  field :RICH_LINK, 3
end

defmodule Google.Chat.V1.UserMentionMetadata.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ADD, 1
  field :MENTION, 2
end

defmodule Google.Chat.V1.SlashCommandMetadata.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ADD, 1
  field :INVOKE, 2
end

defmodule Google.Chat.V1.RichLinkMetadata.RichLinkType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :RICH_LINK_TYPE_UNSPECIFIED, 0
  field :DRIVE_FILE, 1
  field :CHAT_SPACE, 2
end

defmodule Google.Chat.V1.Annotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :metadata, 0

  field :type, 1, type: Google.Chat.V1.AnnotationType, enum: true
  field :start_index, 2, proto3_optional: true, type: :int32, json_name: "startIndex"
  field :length, 3, type: :int32

  field :user_mention, 4,
    type: Google.Chat.V1.UserMentionMetadata,
    json_name: "userMention",
    oneof: 0

  field :slash_command, 5,
    type: Google.Chat.V1.SlashCommandMetadata,
    json_name: "slashCommand",
    oneof: 0

  field :rich_link_metadata, 6,
    type: Google.Chat.V1.RichLinkMetadata,
    json_name: "richLinkMetadata",
    oneof: 0
end

defmodule Google.Chat.V1.UserMentionMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :user, 1, type: Google.Chat.V1.User
  field :type, 2, type: Google.Chat.V1.UserMentionMetadata.Type, enum: true
end

defmodule Google.Chat.V1.SlashCommandMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :bot, 1, type: Google.Chat.V1.User
  field :type, 2, type: Google.Chat.V1.SlashCommandMetadata.Type, enum: true
  field :command_name, 3, type: :string, json_name: "commandName"
  field :command_id, 4, type: :int64, json_name: "commandId"
  field :triggers_dialog, 5, type: :bool, json_name: "triggersDialog"
end

defmodule Google.Chat.V1.RichLinkMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :data, 0

  field :uri, 1, type: :string

  field :rich_link_type, 2,
    type: Google.Chat.V1.RichLinkMetadata.RichLinkType,
    json_name: "richLinkType",
    enum: true

  field :drive_link_data, 3,
    type: Google.Chat.V1.DriveLinkData,
    json_name: "driveLinkData",
    oneof: 0

  field :chat_space_link_data, 4,
    type: Google.Chat.V1.ChatSpaceLinkData,
    json_name: "chatSpaceLinkData",
    oneof: 0
end

defmodule Google.Chat.V1.DriveLinkData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :drive_data_ref, 1, type: Google.Chat.V1.DriveDataRef, json_name: "driveDataRef"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end

defmodule Google.Chat.V1.ChatSpaceLinkData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :space, 1, type: :string, deprecated: false
  field :thread, 2, type: :string, deprecated: false
  field :message, 3, type: :string, deprecated: false
end
