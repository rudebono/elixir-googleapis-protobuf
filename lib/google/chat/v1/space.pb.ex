defmodule Google.Chat.V1.Space.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :ROOM, 1
  field :DM, 2
end

defmodule Google.Chat.V1.Space.SpaceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SPACE_TYPE_UNSPECIFIED, 0
  field :SPACE, 1
  field :GROUP_CHAT, 2
  field :DIRECT_MESSAGE, 3
end

defmodule Google.Chat.V1.Space.SpaceThreadingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :SPACE_THREADING_STATE_UNSPECIFIED, 0
  field :THREADED_MESSAGES, 2
  field :GROUPED_MESSAGES, 3
  field :UNTHREADED_MESSAGES, 4
end

defmodule Google.Chat.V1.Space.PredefinedPermissionSettings do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PREDEFINED_PERMISSION_SETTINGS_UNSPECIFIED, 0
  field :COLLABORATION_SPACE, 1
  field :ANNOUNCEMENT_SPACE, 2
end

defmodule Google.Chat.V1.Space.AccessSettings.AccessState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACCESS_STATE_UNSPECIFIED, 0
  field :PRIVATE, 1
  field :DISCOVERABLE, 2
end

defmodule Google.Chat.V1.Space.SpaceDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :description, 1, type: :string, deprecated: false
  field :guidelines, 2, type: :string, deprecated: false
end

defmodule Google.Chat.V1.Space.MembershipCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :joined_direct_human_user_count, 4,
    type: :int32,
    json_name: "joinedDirectHumanUserCount",
    deprecated: false

  field :joined_group_count, 5, type: :int32, json_name: "joinedGroupCount", deprecated: false
end

defmodule Google.Chat.V1.Space.AccessSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :access_state, 1,
    type: Google.Chat.V1.Space.AccessSettings.AccessState,
    json_name: "accessState",
    enum: true,
    deprecated: false

  field :audience, 3, type: :string, deprecated: false
end

defmodule Google.Chat.V1.Space.PermissionSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :manage_members_and_groups, 1,
    proto3_optional: true,
    type: Google.Chat.V1.Space.PermissionSetting,
    json_name: "manageMembersAndGroups",
    deprecated: false

  field :modify_space_details, 2,
    proto3_optional: true,
    type: Google.Chat.V1.Space.PermissionSetting,
    json_name: "modifySpaceDetails",
    deprecated: false

  field :toggle_history, 3,
    proto3_optional: true,
    type: Google.Chat.V1.Space.PermissionSetting,
    json_name: "toggleHistory",
    deprecated: false

  field :use_at_mention_all, 4,
    proto3_optional: true,
    type: Google.Chat.V1.Space.PermissionSetting,
    json_name: "useAtMentionAll",
    deprecated: false

  field :manage_apps, 5,
    proto3_optional: true,
    type: Google.Chat.V1.Space.PermissionSetting,
    json_name: "manageApps",
    deprecated: false

  field :manage_webhooks, 6,
    proto3_optional: true,
    type: Google.Chat.V1.Space.PermissionSetting,
    json_name: "manageWebhooks",
    deprecated: false

  field :post_messages, 7,
    proto3_optional: true,
    type: Google.Chat.V1.Space.PermissionSetting,
    json_name: "postMessages",
    deprecated: false

  field :reply_messages, 8,
    proto3_optional: true,
    type: Google.Chat.V1.Space.PermissionSetting,
    json_name: "replyMessages",
    deprecated: false
end

defmodule Google.Chat.V1.Space.PermissionSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :managers_allowed, 1, type: :bool, json_name: "managersAllowed", deprecated: false

  field :assistant_managers_allowed, 3,
    proto3_optional: true,
    type: :bool,
    json_name: "assistantManagersAllowed",
    deprecated: false

  field :members_allowed, 2, type: :bool, json_name: "membersAllowed", deprecated: false
end

defmodule Google.Chat.V1.Space do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :space_permission_settings, 0

  field :name, 1, type: :string, deprecated: false
  field :type, 2, type: Google.Chat.V1.Space.Type, enum: true, deprecated: true

  field :space_type, 10,
    type: Google.Chat.V1.Space.SpaceType,
    json_name: "spaceType",
    enum: true,
    deprecated: false

  field :single_user_bot_dm, 4, type: :bool, json_name: "singleUserBotDm", deprecated: false
  field :threaded, 5, type: :bool, deprecated: true
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :external_user_allowed, 8,
    type: :bool,
    json_name: "externalUserAllowed",
    deprecated: false

  field :space_threading_state, 9,
    type: Google.Chat.V1.Space.SpaceThreadingState,
    json_name: "spaceThreadingState",
    enum: true,
    deprecated: false

  field :space_details, 11,
    type: Google.Chat.V1.Space.SpaceDetails,
    json_name: "spaceDetails",
    deprecated: false

  field :space_history_state, 13,
    type: Google.Chat.V1.HistoryState,
    json_name: "spaceHistoryState",
    enum: true,
    deprecated: false

  field :import_mode, 16, type: :bool, json_name: "importMode", deprecated: false

  field :create_time, 17,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :last_active_time, 18,
    type: Google.Protobuf.Timestamp,
    json_name: "lastActiveTime",
    deprecated: false

  field :admin_installed, 19, type: :bool, json_name: "adminInstalled", deprecated: false

  field :membership_count, 20,
    type: Google.Chat.V1.Space.MembershipCount,
    json_name: "membershipCount",
    deprecated: false

  field :access_settings, 23,
    type: Google.Chat.V1.Space.AccessSettings,
    json_name: "accessSettings",
    deprecated: false

  field :customer, 24, proto3_optional: true, type: :string, deprecated: false
  field :space_uri, 25, type: :string, json_name: "spaceUri", deprecated: false

  field :predefined_permission_settings, 26,
    type: Google.Chat.V1.Space.PredefinedPermissionSettings,
    json_name: "predefinedPermissionSettings",
    enum: true,
    oneof: 0,
    deprecated: false

  field :permission_settings, 27,
    type: Google.Chat.V1.Space.PermissionSettings,
    json_name: "permissionSettings",
    oneof: 0,
    deprecated: false

  field :import_mode_expire_time, 28,
    type: Google.Protobuf.Timestamp,
    json_name: "importModeExpireTime",
    deprecated: false
end

defmodule Google.Chat.V1.CreateSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :space, 1, type: Google.Chat.V1.Space, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Chat.V1.ListSpacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Chat.V1.ListSpacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :spaces, 1, repeated: true, type: Google.Chat.V1.Space
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Chat.V1.GetSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess", deprecated: false
end

defmodule Google.Chat.V1.FindDirectMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.UpdateSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :space, 1, type: Google.Chat.V1.Space, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :use_admin_access, 3, type: :bool, json_name: "useAdminAccess", deprecated: false
end

defmodule Google.Chat.V1.SearchSpacesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :use_admin_access, 1, type: :bool, json_name: "useAdminAccess"
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :query, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Chat.V1.SearchSpacesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :spaces, 1, repeated: true, type: Google.Chat.V1.Space
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Chat.V1.DeleteSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :use_admin_access, 2, type: :bool, json_name: "useAdminAccess", deprecated: false
end

defmodule Google.Chat.V1.CompleteImportSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.CompleteImportSpaceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :space, 1, type: Google.Chat.V1.Space
end
