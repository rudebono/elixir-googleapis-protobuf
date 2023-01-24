defmodule Google.Cloud.Advisorynotifications.V1.NotificationView do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :NOTIFICATION_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Cloud.Advisorynotifications.V1.LocalizationState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :LOCALIZATION_STATE_UNSPECIFIED, 0
  field :LOCALIZATION_STATE_NOT_APPLICABLE, 1
  field :LOCALIZATION_STATE_PENDING, 2
  field :LOCALIZATION_STATE_COMPLETED, 3
end

defmodule Google.Cloud.Advisorynotifications.V1.Notification do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :subject, 2, type: Google.Cloud.Advisorynotifications.V1.Subject
  field :messages, 3, repeated: true, type: Google.Cloud.Advisorynotifications.V1.Message

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Advisorynotifications.V1.Text do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :en_text, 1, type: :string, json_name: "enText"
  field :localized_text, 2, type: :string, json_name: "localizedText"

  field :localization_state, 3,
    type: Google.Cloud.Advisorynotifications.V1.LocalizationState,
    json_name: "localizationState",
    enum: true
end

defmodule Google.Cloud.Advisorynotifications.V1.Subject do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 1, type: Google.Cloud.Advisorynotifications.V1.Text
end

defmodule Google.Cloud.Advisorynotifications.V1.Message.Body do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 1, type: Google.Cloud.Advisorynotifications.V1.Text
end

defmodule Google.Cloud.Advisorynotifications.V1.Message do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :body, 1, type: Google.Cloud.Advisorynotifications.V1.Message.Body
  field :attachments, 2, repeated: true, type: Google.Cloud.Advisorynotifications.V1.Attachment
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :localization_time, 4, type: Google.Protobuf.Timestamp, json_name: "localizationTime"
end

defmodule Google.Cloud.Advisorynotifications.V1.Attachment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :data, 0

  field :csv, 2, type: Google.Cloud.Advisorynotifications.V1.Csv, oneof: 0
  field :display_name, 1, type: :string, json_name: "displayName"
end

defmodule Google.Cloud.Advisorynotifications.V1.Csv.CsvRow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :entries, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Advisorynotifications.V1.Csv do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :headers, 1, repeated: true, type: :string

  field :data_rows, 2,
    repeated: true,
    type: Google.Cloud.Advisorynotifications.V1.Csv.CsvRow,
    json_name: "dataRows"
end

defmodule Google.Cloud.Advisorynotifications.V1.ListNotificationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Cloud.Advisorynotifications.V1.NotificationView, enum: true
  field :language_code, 5, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Advisorynotifications.V1.ListNotificationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :notifications, 1,
    repeated: true,
    type: Google.Cloud.Advisorynotifications.V1.Notification

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Advisorynotifications.V1.GetNotificationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :language_code, 5, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Advisorynotifications.V1.AdvisoryNotificationsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.advisorynotifications.v1.AdvisoryNotificationsService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListNotifications,
      Google.Cloud.Advisorynotifications.V1.ListNotificationsRequest,
      Google.Cloud.Advisorynotifications.V1.ListNotificationsResponse

  rpc :GetNotification,
      Google.Cloud.Advisorynotifications.V1.GetNotificationRequest,
      Google.Cloud.Advisorynotifications.V1.Notification
end

defmodule Google.Cloud.Advisorynotifications.V1.AdvisoryNotificationsService.Stub do
  @moduledoc false
  use GRPC.Stub,
    service: Google.Cloud.Advisorynotifications.V1.AdvisoryNotificationsService.Service
end