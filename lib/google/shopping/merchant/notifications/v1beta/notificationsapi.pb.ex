defmodule Google.Shopping.Merchant.Notifications.V1beta.Resource do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :RESOURCE_UNSPECIFIED, 0
  field :PRODUCT, 1
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.Attribute do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ATTRIBUTE_UNSPECIFIED, 0
  field :STATUS, 1
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.NotificationSubscription.NotificationEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :NOTIFICATION_EVENT_TYPE_UNSPECIFIED, 0
  field :PRODUCT_STATUS_CHANGE, 1
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.GetNotificationSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.CreateNotificationSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :notification_subscription, 2,
    type: Google.Shopping.Merchant.Notifications.V1beta.NotificationSubscription,
    json_name: "notificationSubscription",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.UpdateNotificationSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :notification_subscription, 1,
    type: Google.Shopping.Merchant.Notifications.V1beta.NotificationSubscription,
    json_name: "notificationSubscription",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.DeleteNotificationSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.ListNotificationSubscriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.ListNotificationSubscriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :notification_subscriptions, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Notifications.V1beta.NotificationSubscription,
    json_name: "notificationSubscriptions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.NotificationSubscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :interested_in, 0

  field :all_managed_accounts, 3, type: :bool, json_name: "allManagedAccounts", oneof: 0
  field :target_account, 4, type: :string, json_name: "targetAccount", oneof: 0
  field :name, 1, type: :string, deprecated: false

  field :registered_event, 2,
    type:
      Google.Shopping.Merchant.Notifications.V1beta.NotificationSubscription.NotificationEventType,
    json_name: "registeredEvent",
    enum: true

  field :call_back_uri, 5, type: :string, json_name: "callBackUri"
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.ProductChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :old_value, 1, proto3_optional: true, type: :string, json_name: "oldValue"
  field :new_value, 2, proto3_optional: true, type: :string, json_name: "newValue"
  field :region_code, 3, proto3_optional: true, type: :string, json_name: "regionCode"

  field :reporting_context, 4,
    proto3_optional: true,
    type: Google.Shopping.Type.ReportingContext.ReportingContextEnum,
    json_name: "reportingContext",
    enum: true
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.ProductStatusChangeMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account, 1, proto3_optional: true, type: :string
  field :managing_account, 2, proto3_optional: true, type: :string, json_name: "managingAccount"

  field :resource_type, 3,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Notifications.V1beta.Resource,
    json_name: "resourceType",
    enum: true

  field :attribute, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Notifications.V1beta.Attribute,
    enum: true

  field :changes, 5,
    repeated: true,
    type: Google.Shopping.Merchant.Notifications.V1beta.ProductChange

  field :resource_id, 6, proto3_optional: true, type: :string, json_name: "resourceId"
  field :resource, 7, proto3_optional: true, type: :string
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.NotificationsApiService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.notifications.v1beta.NotificationsApiService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetNotificationSubscription,
      Google.Shopping.Merchant.Notifications.V1beta.GetNotificationSubscriptionRequest,
      Google.Shopping.Merchant.Notifications.V1beta.NotificationSubscription

  rpc :CreateNotificationSubscription,
      Google.Shopping.Merchant.Notifications.V1beta.CreateNotificationSubscriptionRequest,
      Google.Shopping.Merchant.Notifications.V1beta.NotificationSubscription

  rpc :UpdateNotificationSubscription,
      Google.Shopping.Merchant.Notifications.V1beta.UpdateNotificationSubscriptionRequest,
      Google.Shopping.Merchant.Notifications.V1beta.NotificationSubscription

  rpc :DeleteNotificationSubscription,
      Google.Shopping.Merchant.Notifications.V1beta.DeleteNotificationSubscriptionRequest,
      Google.Protobuf.Empty

  rpc :ListNotificationSubscriptions,
      Google.Shopping.Merchant.Notifications.V1beta.ListNotificationSubscriptionsRequest,
      Google.Shopping.Merchant.Notifications.V1beta.ListNotificationSubscriptionsResponse
end

defmodule Google.Shopping.Merchant.Notifications.V1beta.NotificationsApiService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Notifications.V1beta.NotificationsApiService.Service
end
