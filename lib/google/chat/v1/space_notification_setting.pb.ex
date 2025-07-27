defmodule Google.Chat.V1.SpaceNotificationSetting.NotificationSetting do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NOTIFICATION_SETTING_UNSPECIFIED, 0
  field :ALL, 1
  field :MAIN_CONVERSATIONS, 2
  field :FOR_YOU, 3
  field :OFF, 4
end

defmodule Google.Chat.V1.SpaceNotificationSetting.MuteSetting do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MUTE_SETTING_UNSPECIFIED, 0
  field :UNMUTED, 1
  field :MUTED, 2
end

defmodule Google.Chat.V1.SpaceNotificationSetting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :notification_setting, 2,
    proto3_optional: true,
    type: Google.Chat.V1.SpaceNotificationSetting.NotificationSetting,
    json_name: "notificationSetting",
    enum: true

  field :mute_setting, 3,
    proto3_optional: true,
    type: Google.Chat.V1.SpaceNotificationSetting.MuteSetting,
    json_name: "muteSetting",
    enum: true
end

defmodule Google.Chat.V1.GetSpaceNotificationSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Chat.V1.UpdateSpaceNotificationSettingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :space_notification_setting, 1,
    type: Google.Chat.V1.SpaceNotificationSetting,
    json_name: "spaceNotificationSetting",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
