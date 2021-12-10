defmodule Google.Apps.Alertcenter.V1beta1.AlertFeedbackType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ALERT_FEEDBACK_TYPE_UNSPECIFIED
          | :NOT_USEFUL
          | :SOMEWHAT_USEFUL
          | :VERY_USEFUL

  field :ALERT_FEEDBACK_TYPE_UNSPECIFIED, 0
  field :NOT_USEFUL, 1
  field :SOMEWHAT_USEFUL, 2
  field :VERY_USEFUL, 3
end
defmodule Google.Apps.Alertcenter.V1beta1.Settings.Notification.PayloadFormat do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PAYLOAD_FORMAT_UNSPECIFIED | :JSON

  field :PAYLOAD_FORMAT_UNSPECIFIED, 0
  field :JSON, 1
end
defmodule Google.Apps.Alertcenter.V1beta1.Alert do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          type: String.t(),
          source: String.t(),
          data: Google.Protobuf.Any.t() | nil,
          security_investigation_tool_link: String.t(),
          deleted: boolean,
          metadata: Google.Apps.Alertcenter.V1beta1.AlertMetadata.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t()
        }

  defstruct customer_id: "",
            alert_id: "",
            create_time: nil,
            start_time: nil,
            end_time: nil,
            type: "",
            source: "",
            data: nil,
            security_investigation_tool_link: "",
            deleted: false,
            metadata: nil,
            update_time: nil,
            etag: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: String.t(),
          feedback_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          type: Google.Apps.Alertcenter.V1beta1.AlertFeedbackType.t(),
          email: String.t()
        }

  defstruct customer_id: "",
            alert_id: "",
            feedback_id: "",
            create_time: nil,
            type: :ALERT_FEEDBACK_TYPE_UNSPECIFIED,
            email: ""

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
  field :feedback_id, 3, type: :string, json_name: "feedbackId"
  field :create_time, 4, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :type, 5, type: Google.Apps.Alertcenter.V1beta1.AlertFeedbackType, enum: true
  field :email, 6, type: :string
end
defmodule Google.Apps.Alertcenter.V1beta1.AlertMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: String.t(),
          status: String.t(),
          assignee: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          severity: String.t(),
          etag: String.t()
        }

  defstruct customer_id: "",
            alert_id: "",
            status: "",
            assignee: "",
            update_time: nil,
            severity: "",
            etag: ""

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic_name: String.t(),
          payload_format: Google.Apps.Alertcenter.V1beta1.Settings.Notification.PayloadFormat.t()
        }

  defstruct topic_name: "",
            payload_format: :PAYLOAD_FORMAT_UNSPECIFIED

  field :topic_name, 1, type: :string, json_name: "topicName"

  field :payload_format, 2,
    type: Google.Apps.Alertcenter.V1beta1.Settings.Notification.PayloadFormat,
    json_name: "payloadFormat",
    enum: true
end
defmodule Google.Apps.Alertcenter.V1beta1.Settings.Notification do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:cloud_pubsub_topic,
             Google.Apps.Alertcenter.V1beta1.Settings.Notification.CloudPubsubTopic.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :cloud_pubsub_topic, 1,
    type: Google.Apps.Alertcenter.V1beta1.Settings.Notification.CloudPubsubTopic,
    json_name: "cloudPubsubTopic",
    oneof: 0
end
defmodule Google.Apps.Alertcenter.V1beta1.Settings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notifications: [Google.Apps.Alertcenter.V1beta1.Settings.Notification.t()]
        }

  defstruct notifications: []

  field :notifications, 1,
    repeated: true,
    type: Google.Apps.Alertcenter.V1beta1.Settings.Notification
end
defmodule Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: [String.t()]
        }

  defstruct customer_id: "",
            alert_id: []

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, repeated: true, type: :string, json_name: "alertId"
end
defmodule Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsResponse.FailedAlertStatusEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Rpc.Status.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Rpc.Status
end
defmodule Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          success_alert_ids: [String.t()],
          failed_alert_status: %{String.t() => Google.Rpc.Status.t() | nil}
        }

  defstruct success_alert_ids: [],
            failed_alert_status: %{}

  field :success_alert_ids, 1, repeated: true, type: :string, json_name: "successAlertIds"

  field :failed_alert_status, 2,
    repeated: true,
    type: Google.Apps.Alertcenter.V1beta1.BatchDeleteAlertsResponse.FailedAlertStatusEntry,
    json_name: "failedAlertStatus",
    map: true
end
defmodule Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: [String.t()]
        }

  defstruct customer_id: "",
            alert_id: []

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, repeated: true, type: :string, json_name: "alertId"
end
defmodule Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsResponse.FailedAlertStatusEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Rpc.Status.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Rpc.Status
end
defmodule Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          success_alert_ids: [String.t()],
          failed_alert_status: %{String.t() => Google.Rpc.Status.t() | nil}
        }

  defstruct success_alert_ids: [],
            failed_alert_status: %{}

  field :success_alert_ids, 1, repeated: true, type: :string, json_name: "successAlertIds"

  field :failed_alert_status, 2,
    repeated: true,
    type: Google.Apps.Alertcenter.V1beta1.BatchUndeleteAlertsResponse.FailedAlertStatusEntry,
    json_name: "failedAlertStatus",
    map: true
end
defmodule Google.Apps.Alertcenter.V1beta1.ListAlertsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          order_by: String.t()
        }

  defstruct customer_id: "",
            page_size: 0,
            page_token: "",
            filter: "",
            order_by: ""

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end
defmodule Google.Apps.Alertcenter.V1beta1.ListAlertsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          alerts: [Google.Apps.Alertcenter.V1beta1.Alert.t()],
          next_page_token: String.t()
        }

  defstruct alerts: [],
            next_page_token: ""

  field :alerts, 1, repeated: true, type: Google.Apps.Alertcenter.V1beta1.Alert
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Apps.Alertcenter.V1beta1.GetAlertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: String.t()
        }

  defstruct customer_id: "",
            alert_id: ""

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
end
defmodule Google.Apps.Alertcenter.V1beta1.DeleteAlertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: String.t()
        }

  defstruct customer_id: "",
            alert_id: ""

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
end
defmodule Google.Apps.Alertcenter.V1beta1.UndeleteAlertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: String.t()
        }

  defstruct customer_id: "",
            alert_id: ""

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
end
defmodule Google.Apps.Alertcenter.V1beta1.CreateAlertFeedbackRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: String.t(),
          feedback: Google.Apps.Alertcenter.V1beta1.AlertFeedback.t() | nil
        }

  defstruct customer_id: "",
            alert_id: "",
            feedback: nil

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
  field :feedback, 3, type: Google.Apps.Alertcenter.V1beta1.AlertFeedback
end
defmodule Google.Apps.Alertcenter.V1beta1.ListAlertFeedbackRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: String.t(),
          filter: String.t()
        }

  defstruct customer_id: "",
            alert_id: "",
            filter: ""

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
  field :filter, 3, type: :string
end
defmodule Google.Apps.Alertcenter.V1beta1.ListAlertFeedbackResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          feedback: [Google.Apps.Alertcenter.V1beta1.AlertFeedback.t()]
        }

  defstruct feedback: []

  field :feedback, 1, repeated: true, type: Google.Apps.Alertcenter.V1beta1.AlertFeedback
end
defmodule Google.Apps.Alertcenter.V1beta1.GetAlertMetadataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          alert_id: String.t()
        }

  defstruct customer_id: "",
            alert_id: ""

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :alert_id, 2, type: :string, json_name: "alertId"
end
defmodule Google.Apps.Alertcenter.V1beta1.GetSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t()
        }

  defstruct customer_id: ""

  field :customer_id, 1, type: :string, json_name: "customerId"
end
defmodule Google.Apps.Alertcenter.V1beta1.UpdateSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          settings: Google.Apps.Alertcenter.V1beta1.Settings.t() | nil
        }

  defstruct customer_id: "",
            settings: nil

  field :customer_id, 1, type: :string, json_name: "customerId"
  field :settings, 2, type: Google.Apps.Alertcenter.V1beta1.Settings
end
defmodule Google.Apps.Alertcenter.V1beta1.AlertCenterService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.apps.alertcenter.v1beta1.AlertCenterService"

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
