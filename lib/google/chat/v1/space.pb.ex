defmodule Google.Chat.V1.Space.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ROOM, 1
  field :DM, 2
end

defmodule Google.Chat.V1.Space.SpaceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SPACE_TYPE_UNSPECIFIED, 0
  field :SPACE, 1
  field :GROUP_CHAT, 2
  field :DIRECT_MESSAGE, 3
end

defmodule Google.Chat.V1.Space.SpaceThreadingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :SPACE_THREADING_STATE_UNSPECIFIED, 0
  field :THREADED_MESSAGES, 2
  field :GROUPED_MESSAGES, 3
  field :UNTHREADED_MESSAGES, 4
end

defmodule Google.Chat.V1.Space.SpaceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :description, 1, type: :string
  field :guidelines, 2, type: :string
end

defmodule Google.Chat.V1.Space do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Chat.V1.Space.Type, enum: true, deprecated: true
  field :space_type, 10, type: Google.Chat.V1.Space.SpaceType, json_name: "spaceType", enum: true
  field :single_user_bot_dm, 4, type: :bool, json_name: "singleUserBotDm", deprecated: false
  field :threaded, 5, type: :bool, deprecated: true
  field :display_name, 3, type: :string, json_name: "displayName"

  field :external_user_allowed, 8,
    type: :bool,
    json_name: "externalUserAllowed",
    deprecated: false

  field :space_threading_state, 9,
    type: Google.Chat.V1.Space.SpaceThreadingState,
    json_name: "spaceThreadingState",
    enum: true,
    deprecated: false

  field :space_details, 11, type: Google.Chat.V1.Space.SpaceDetails, json_name: "spaceDetails"

  field :space_history_state, 13,
    type: Google.Chat.V1.HistoryState,
    json_name: "spaceHistoryState",
    enum: true

  field :import_mode, 16, type: :bool, json_name: "importMode", deprecated: false

  field :create_time, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :admin_installed, 19, type: :bool, json_name: "adminInstalled", deprecated: false
end

defmodule Google.Chat.V1.CreateSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :space, 1, type: Google.Chat.V1.Space, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Chat.V1.ListSpacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Chat.V1.ListSpacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :spaces, 1, repeated: true, type: Google.Chat.V1.Space
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Chat.V1.GetSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.FindDirectMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.UpdateSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :space, 1, type: Google.Chat.V1.Space, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Chat.V1.DeleteSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.CompleteImportSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.CompleteImportSpaceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :space, 1, type: Google.Chat.V1.Space
end