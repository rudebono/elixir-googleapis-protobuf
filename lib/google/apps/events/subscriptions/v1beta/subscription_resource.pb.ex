defmodule Google.Apps.Events.Subscriptions.V1beta.Subscription.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUSPENDED, 2
  field :DELETED, 3
end

defmodule Google.Apps.Events.Subscriptions.V1beta.Subscription.ErrorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ERROR_TYPE_UNSPECIFIED, 0
  field :USER_SCOPE_REVOKED, 1
  field :RESOURCE_DELETED, 2
  field :USER_AUTHORIZATION_FAILURE, 3
  field :ENDPOINT_PERMISSION_DENIED, 4
  field :ENDPOINT_NOT_FOUND, 6
  field :ENDPOINT_RESOURCE_EXHAUSTED, 7
  field :OTHER, 5
end

defmodule Google.Apps.Events.Subscriptions.V1beta.Subscription do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :expiration, 0

  field :expire_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "expireTime",
    oneof: 0,
    deprecated: false

  field :ttl, 14, type: Google.Protobuf.Duration, oneof: 0, deprecated: false
  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false
  field :target_resource, 4, type: :string, json_name: "targetResource", deprecated: false
  field :event_types, 5, repeated: true, type: :string, json_name: "eventTypes", deprecated: false

  field :payload_options, 6,
    type: Google.Apps.Events.Subscriptions.V1beta.PayloadOptions,
    json_name: "payloadOptions",
    deprecated: false

  field :notification_endpoint, 7,
    type: Google.Apps.Events.Subscriptions.V1beta.NotificationEndpoint,
    json_name: "notificationEndpoint",
    deprecated: false

  field :state, 8,
    type: Google.Apps.Events.Subscriptions.V1beta.Subscription.State,
    enum: true,
    deprecated: false

  field :suspension_reason, 18,
    type: Google.Apps.Events.Subscriptions.V1beta.Subscription.ErrorType,
    json_name: "suspensionReason",
    enum: true,
    deprecated: false

  field :authority, 10, type: :string, deprecated: false

  field :create_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 12,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :reconciling, 15, type: :bool, deprecated: false
  field :etag, 17, type: :string, deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1beta.PayloadOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :include_resource, 1, type: :bool, json_name: "includeResource", deprecated: false
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask", deprecated: false
end

defmodule Google.Apps.Events.Subscriptions.V1beta.NotificationEndpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :endpoint, 0

  field :pubsub_topic, 1, type: :string, json_name: "pubsubTopic", oneof: 0, deprecated: false
end
