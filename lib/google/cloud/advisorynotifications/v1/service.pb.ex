defmodule Google.Cloud.Advisorynotifications.V1.NotificationView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NOTIFICATION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Advisorynotifications.V1.LocalizationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LOCALIZATION_STATE_UNSPECIFIED, 0
  field :LOCALIZATION_STATE_NOT_APPLICABLE, 1
  field :LOCALIZATION_STATE_PENDING, 2
  field :LOCALIZATION_STATE_COMPLETED, 3
end

defmodule Google.Cloud.Advisorynotifications.V1.NotificationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NOTIFICATION_TYPE_UNSPECIFIED, 0
  field :NOTIFICATION_TYPE_SECURITY_PRIVACY_ADVISORY, 1
  field :NOTIFICATION_TYPE_SENSITIVE_ACTIONS, 2
  field :NOTIFICATION_TYPE_SECURITY_MSA, 3
  field :NOTIFICATION_TYPE_THREAT_HORIZONS, 4
end

defmodule Google.Cloud.Advisorynotifications.V1.Notification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :subject, 2, type: Google.Cloud.Advisorynotifications.V1.Subject
  field :messages, 3, repeated: true, type: Google.Cloud.Advisorynotifications.V1.Message

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :notification_type, 12,
    type: Google.Cloud.Advisorynotifications.V1.NotificationType,
    json_name: "notificationType",
    enum: true
end

defmodule Google.Cloud.Advisorynotifications.V1.Text do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :en_text, 1, type: :string, json_name: "enText"
  field :localized_text, 2, type: :string, json_name: "localizedText"

  field :localization_state, 3,
    type: Google.Cloud.Advisorynotifications.V1.LocalizationState,
    json_name: "localizationState",
    enum: true
end

defmodule Google.Cloud.Advisorynotifications.V1.Subject do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: Google.Cloud.Advisorynotifications.V1.Text
end

defmodule Google.Cloud.Advisorynotifications.V1.Message.Body do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :text, 1, type: Google.Cloud.Advisorynotifications.V1.Text
end

defmodule Google.Cloud.Advisorynotifications.V1.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :body, 1, type: Google.Cloud.Advisorynotifications.V1.Message.Body
  field :attachments, 2, repeated: true, type: Google.Cloud.Advisorynotifications.V1.Attachment
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :localization_time, 4, type: Google.Protobuf.Timestamp, json_name: "localizationTime"
end

defmodule Google.Cloud.Advisorynotifications.V1.Attachment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  field :csv, 2, type: Google.Cloud.Advisorynotifications.V1.Csv, oneof: 0
  field :display_name, 1, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Advisorynotifications.V1.Csv.CsvRow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entries, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Advisorynotifications.V1.Csv do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :headers, 1, repeated: true, type: :string

  field :data_rows, 2,
    repeated: true,
    type: Google.Cloud.Advisorynotifications.V1.Csv.CsvRow,
    json_name: "dataRows"
end

defmodule Google.Cloud.Advisorynotifications.V1.ListNotificationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Advisorynotifications.V1.NotificationView, enum: true
  field :language_code, 5, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Advisorynotifications.V1.ListNotificationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :notifications, 1,
    repeated: true,
    type: Google.Cloud.Advisorynotifications.V1.Notification

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Advisorynotifications.V1.GetNotificationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 5, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Advisorynotifications.V1.Settings.NotificationSettingsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Advisorynotifications.V1.NotificationSettings
end

defmodule Google.Cloud.Advisorynotifications.V1.Settings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :notification_settings, 2,
    repeated: true,
    type: Google.Cloud.Advisorynotifications.V1.Settings.NotificationSettingsEntry,
    json_name: "notificationSettings",
    map: true,
    deprecated: false

  field :etag, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Advisorynotifications.V1.NotificationSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool
end

defmodule Google.Cloud.Advisorynotifications.V1.GetSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Advisorynotifications.V1.UpdateSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :settings, 1, type: Google.Cloud.Advisorynotifications.V1.Settings, deprecated: false
end

defmodule Google.Cloud.Advisorynotifications.V1.AdvisoryNotificationsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.advisorynotifications.v1.AdvisoryNotificationsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListNotifications,
      Google.Cloud.Advisorynotifications.V1.ListNotificationsRequest,
      Google.Cloud.Advisorynotifications.V1.ListNotificationsResponse

  rpc :GetNotification,
      Google.Cloud.Advisorynotifications.V1.GetNotificationRequest,
      Google.Cloud.Advisorynotifications.V1.Notification

  rpc :GetSettings,
      Google.Cloud.Advisorynotifications.V1.GetSettingsRequest,
      Google.Cloud.Advisorynotifications.V1.Settings

  rpc :UpdateSettings,
      Google.Cloud.Advisorynotifications.V1.UpdateSettingsRequest,
      Google.Cloud.Advisorynotifications.V1.Settings
end

defmodule Google.Cloud.Advisorynotifications.V1.AdvisoryNotificationsService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Advisorynotifications.V1.AdvisoryNotificationsService.Service
end
