defmodule Google.Shopping.Merchant.Notifications.V1.NotificationSubscription.NotificationEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NOTIFICATION_EVENT_TYPE_UNSPECIFIED, 0
  field :PRODUCT_STATUS_CHANGE, 1
end

defmodule Google.Shopping.Merchant.Notifications.V1.GetNotificationSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Notifications.V1.CreateNotificationSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :notification_subscription, 2,
    type: Google.Shopping.Merchant.Notifications.V1.NotificationSubscription,
    json_name: "notificationSubscription",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Notifications.V1.UpdateNotificationSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :notification_subscription, 1,
    type: Google.Shopping.Merchant.Notifications.V1.NotificationSubscription,
    json_name: "notificationSubscription",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Shopping.Merchant.Notifications.V1.DeleteNotificationSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Notifications.V1.ListNotificationSubscriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Merchant.Notifications.V1.ListNotificationSubscriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :notification_subscriptions, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Notifications.V1.NotificationSubscription,
    json_name: "notificationSubscriptions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Notifications.V1.NotificationSubscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :interested_in, 0

  field :all_managed_accounts, 3, type: :bool, json_name: "allManagedAccounts", oneof: 0
  field :target_account, 4, type: :string, json_name: "targetAccount", oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :registered_event, 2,
    type:
      Google.Shopping.Merchant.Notifications.V1.NotificationSubscription.NotificationEventType,
    json_name: "registeredEvent",
    enum: true

  field :call_back_uri, 5, type: :string, json_name: "callBackUri"
end

defmodule Google.Shopping.Merchant.Notifications.V1.GetNotificationSubscriptionHealthMetricsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Notifications.V1.NotificationSubscriptionHealthMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :acknowledged_messages_count, 2, type: :int64, json_name: "acknowledgedMessagesCount"
  field :undelivered_messages_count, 3, type: :int64, json_name: "undeliveredMessagesCount"

  field :oldest_unacknowledged_message_waiting_time, 4,
    type: :int64,
    json_name: "oldestUnacknowledgedMessageWaitingTime"
end

defmodule Google.Shopping.Merchant.Notifications.V1.NotificationsApiService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.notifications.v1.NotificationsApiService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetNotificationSubscription,
      Google.Shopping.Merchant.Notifications.V1.GetNotificationSubscriptionRequest,
      Google.Shopping.Merchant.Notifications.V1.NotificationSubscription

  rpc :CreateNotificationSubscription,
      Google.Shopping.Merchant.Notifications.V1.CreateNotificationSubscriptionRequest,
      Google.Shopping.Merchant.Notifications.V1.NotificationSubscription

  rpc :UpdateNotificationSubscription,
      Google.Shopping.Merchant.Notifications.V1.UpdateNotificationSubscriptionRequest,
      Google.Shopping.Merchant.Notifications.V1.NotificationSubscription

  rpc :DeleteNotificationSubscription,
      Google.Shopping.Merchant.Notifications.V1.DeleteNotificationSubscriptionRequest,
      Google.Protobuf.Empty

  rpc :ListNotificationSubscriptions,
      Google.Shopping.Merchant.Notifications.V1.ListNotificationSubscriptionsRequest,
      Google.Shopping.Merchant.Notifications.V1.ListNotificationSubscriptionsResponse

  rpc :GetNotificationSubscriptionHealthMetrics,
      Google.Shopping.Merchant.Notifications.V1.GetNotificationSubscriptionHealthMetricsRequest,
      Google.Shopping.Merchant.Notifications.V1.NotificationSubscriptionHealthMetrics
end

defmodule Google.Shopping.Merchant.Notifications.V1.NotificationsApiService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Notifications.V1.NotificationsApiService.Service
end
