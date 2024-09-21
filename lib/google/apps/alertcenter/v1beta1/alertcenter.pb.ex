defmodule Google.Apps.Alertcenter.V1beta1.AlertFeedbackType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ALERT_FEEDBACK_TYPE_UNSPECIFIED, 0
  field :NOT_USEFUL, 1
  field :SOMEWHAT_USEFUL, 2
  field :VERY_USEFUL, 3
end

defmodule Google.Apps.Alertcenter.V1beta1.Settings.Notification.PayloadFormat do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PAYLOAD_FORMAT_UNSPECIFIED, 0
  field :JSON, 1
end

defmodule Google.Apps.Alertcenter.V1beta1.Alert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 5, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :type, 6, type: :string
  field :source, 7, type: :string
  field :data, 8, type: Google.Protobuf.Any

  field :security_investigation_tool_link, 9,
    type: :string,
    json_name: "securityInvestigationToolLink"

  field :deleted, 11, type: :bool
  field :metadata, 12, type: Google.Apps.Alertcenter.V1beta1.AlertMetadata
  field :update_time, 13, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :etag, 14, type: :string
end

defmodule Google.Apps.Alertcenter.V1beta1.AlertFeedback do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
  field :feedback_id, 3, type: :string, json_name: "feedbackId"
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :type, 5, type: Google.Apps.Alertcenter.V1beta1.AlertFeedbackType, enum: true
  field :email, 6, type: :string
end

defmodule Google.Apps.Alertcenter.V1beta1.AlertMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
  field :status, 4, type: :string
  field :assignee, 5, type: :string
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :severity, 7, type: :string
  field :etag, 8, type: :string
end

defmodule Google.Apps.Alertcenter.V1beta1.Settings.Notification.CloudPubsubTopic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :topic_name, 1, type: :string, json_name: "topicName"

  field :payload_format, 2,
    type: Google.Apps.Alertcenter.V1beta1.Settings.Notification.PayloadFormat,
    json_name: "payloadFormat",
    enum: true
end

defmodule Google.Apps.Alertcenter.V1beta1.Settings.Notification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :destination, 0

  field :cloud_pubsub_topic, 1,
    type: Google.Apps.Alertcenter.V1beta1.Settings.Notification.CloudPubsubTopic,
    json_name: "cloudPubsubTopic",
    oneof: 0
end

defmodule Google.Apps.Alertcenter.V1beta1.Settings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notifications, 1,
    repeated: true,
    type: Google.Apps.Alertcenter.V1beta1.Settings.Notification
end

defmodule Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, repeated: true, type: :string, json_name: "alertId"
end

defmodule Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsResponse.FailedAlertStatusEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Rpc.Status
end

defmodule Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :success_alert_ids, 1, repeated: true, type: :string, json_name: "successAlertIds"

  field :failed_alert_status, 2,
    repeated: true,
    type: Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsResponse.FailedAlertStatusEntry,
    json_name: "failedAlertStatus",
    map: true
end

defmodule Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, repeated: true, type: :string, json_name: "alertId"
end

defmodule Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsResponse.FailedAlertStatusEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Rpc.Status
end

defmodule Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :success_alert_ids, 1, repeated: true, type: :string, json_name: "successAlertIds"

  field :failed_alert_status, 2,
    repeated: true,
    type: Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsResponse.FailedAlertStatusEntry,
    json_name: "failedAlertStatus",
    map: true
end

defmodule Google.Apps.Alertcenter.V1beta1.ListAlertsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Apps.Alertcenter.V1beta1.ListAlertsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :alerts, 1, repeated: true, type: Google.Apps.Alertcenter.V1beta1.Alert
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Alertcenter.V1beta1.GetAlertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
end

defmodule Google.Apps.Alertcenter.V1beta1.DeleteAlertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
end

defmodule Google.Apps.Alertcenter.V1beta1.UndeleteAlertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
end

defmodule Google.Apps.Alertcenter.V1beta1.CreateAlertFeedbackRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
  field :feedback, 3, type: Google.Apps.Alertcenter.V1beta1.AlertFeedback
end

defmodule Google.Apps.Alertcenter.V1beta1.ListAlertFeedbackRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
  field :filter, 3, type: :string
end

defmodule Google.Apps.Alertcenter.V1beta1.ListAlertFeedbackResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feedback, 1, repeated: true, type: Google.Apps.Alertcenter.V1beta1.AlertFeedback
end

defmodule Google.Apps.Alertcenter.V1beta1.GetAlertMetadataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
end

defmodule Google.Apps.Alertcenter.V1beta1.GetSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
end

defmodule Google.Apps.Alertcenter.V1beta1.UpdateSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :settings, 2, type: Google.Apps.Alertcenter.V1beta1.Settings
end

defmodule Google.Apps.Alertcenter.V1beta1.AlertCenterService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.apps.alertcenter.v1beta1.AlertCenterService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListAlerts,
      Google.Apps.Alertcenter.V1beta1.ListAlertsRequest,
      Google.Apps.Alertcenter.V1beta1.ListAlertsResponse

  rpc :GetAlert,
      Google.Apps.Alertcenter.V1beta1.GetAlertRequest,
      Google.Apps.Alertcenter.V1beta1.Alert

  rpc :DeleteAlert, Google.Apps.Alertcenter.V1beta1.DeleteAlertRequest, Google.Protobuf.Empty

  rpc :UndeleteAlert,
      Google.Apps.Alertcenter.V1beta1.UndeleteAlertRequest,
      Google.Apps.Alertcenter.V1beta1.Alert

  rpc :CreateAlertFeedback,
      Google.Apps.Alertcenter.V1beta1.CreateAlertFeedbackRequest,
      Google.Apps.Alertcenter.V1beta1.AlertFeedback

  rpc :ListAlertFeedback,
      Google.Apps.Alertcenter.V1beta1.ListAlertFeedbackRequest,
      Google.Apps.Alertcenter.V1beta1.ListAlertFeedbackResponse

  rpc :GetAlertMetadata,
      Google.Apps.Alertcenter.V1beta1.GetAlertMetadataRequest,
      Google.Apps.Alertcenter.V1beta1.AlertMetadata

  rpc :GetSettings,
      Google.Apps.Alertcenter.V1beta1.GetSettingsRequest,
      Google.Apps.Alertcenter.V1beta1.Settings

  rpc :UpdateSettings,
      Google.Apps.Alertcenter.V1beta1.UpdateSettingsRequest,
      Google.Apps.Alertcenter.V1beta1.Settings

  rpc :BatchDeleteAlerts,
      Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsRequest,
      Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsResponse

  rpc :BatchUndeleteAlerts,
      Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsRequest,
      Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsResponse
end

defmodule Google.Apps.Alertcenter.V1beta1.AlertCenterService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Apps.Alertcenter.V1beta1.AlertCenterService.Service
end