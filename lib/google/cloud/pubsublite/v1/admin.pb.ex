defmodule Google.Cloud.Pubsublite.V1.SeekSubscriptionRequest.NamedTarget do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :NAMED_TARGET_UNSPECIFIED, 0
  field :TAIL, 1
  field :HEAD, 2
end

defmodule Google.Cloud.Pubsublite.V1.CreateTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :topic, 2, type: Google.Cloud.Pubsublite.V1.Topic, deprecated: false
  field :topic_id, 3, type: :string, json_name: "topicId", deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.GetTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.GetTopicPartitionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.TopicPartitions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :partition_count, 1, type: :int64, json_name: "partitionCount"
end

defmodule Google.Cloud.Pubsublite.V1.ListTopicsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Pubsublite.V1.ListTopicsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :topics, 1, repeated: true, type: Google.Cloud.Pubsublite.V1.Topic
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Pubsublite.V1.UpdateTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :topic, 1, type: Google.Cloud.Pubsublite.V1.Topic, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.DeleteTopicRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.ListTopicSubscriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Pubsublite.V1.ListTopicSubscriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :subscriptions, 1, repeated: true, type: :string
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Pubsublite.V1.CreateSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :subscription, 2, type: Google.Cloud.Pubsublite.V1.Subscription, deprecated: false
  field :subscription_id, 3, type: :string, json_name: "subscriptionId", deprecated: false
  field :skip_backlog, 4, type: :bool, json_name: "skipBacklog"
end

defmodule Google.Cloud.Pubsublite.V1.GetSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.ListSubscriptionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Pubsublite.V1.ListSubscriptionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :subscriptions, 1, repeated: true, type: Google.Cloud.Pubsublite.V1.Subscription
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Pubsublite.V1.UpdateSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :subscription, 1, type: Google.Cloud.Pubsublite.V1.Subscription, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.DeleteSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.SeekSubscriptionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :target, 0

  field :name, 1, type: :string, deprecated: false

  field :named_target, 2,
    type: Google.Cloud.Pubsublite.V1.SeekSubscriptionRequest.NamedTarget,
    json_name: "namedTarget",
    enum: true,
    oneof: 0

  field :time_target, 3,
    type: Google.Cloud.Pubsublite.V1.TimeTarget,
    json_name: "timeTarget",
    oneof: 0
end

defmodule Google.Cloud.Pubsublite.V1.SeekSubscriptionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Cloud.Pubsublite.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.CreateReservationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :reservation, 2, type: Google.Cloud.Pubsublite.V1.Reservation, deprecated: false
  field :reservation_id, 3, type: :string, json_name: "reservationId", deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.GetReservationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.ListReservationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Pubsublite.V1.ListReservationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :reservations, 1, repeated: true, type: Google.Cloud.Pubsublite.V1.Reservation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Pubsublite.V1.UpdateReservationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :reservation, 1, type: Google.Cloud.Pubsublite.V1.Reservation, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.DeleteReservationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.ListReservationTopicsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Pubsublite.V1.ListReservationTopicsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :topics, 1, repeated: true, type: :string
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Pubsublite.V1.AdminService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.pubsublite.v1.AdminService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateTopic,
      Google.Cloud.Pubsublite.V1.CreateTopicRequest,
      Google.Cloud.Pubsublite.V1.Topic

  rpc :GetTopic, Google.Cloud.Pubsublite.V1.GetTopicRequest, Google.Cloud.Pubsublite.V1.Topic

  rpc :GetTopicPartitions,
      Google.Cloud.Pubsublite.V1.GetTopicPartitionsRequest,
      Google.Cloud.Pubsublite.V1.TopicPartitions

  rpc :ListTopics,
      Google.Cloud.Pubsublite.V1.ListTopicsRequest,
      Google.Cloud.Pubsublite.V1.ListTopicsResponse

  rpc :UpdateTopic,
      Google.Cloud.Pubsublite.V1.UpdateTopicRequest,
      Google.Cloud.Pubsublite.V1.Topic

  rpc :DeleteTopic, Google.Cloud.Pubsublite.V1.DeleteTopicRequest, Google.Protobuf.Empty

  rpc :ListTopicSubscriptions,
      Google.Cloud.Pubsublite.V1.ListTopicSubscriptionsRequest,
      Google.Cloud.Pubsublite.V1.ListTopicSubscriptionsResponse

  rpc :CreateSubscription,
      Google.Cloud.Pubsublite.V1.CreateSubscriptionRequest,
      Google.Cloud.Pubsublite.V1.Subscription

  rpc :GetSubscription,
      Google.Cloud.Pubsublite.V1.GetSubscriptionRequest,
      Google.Cloud.Pubsublite.V1.Subscription

  rpc :ListSubscriptions,
      Google.Cloud.Pubsublite.V1.ListSubscriptionsRequest,
      Google.Cloud.Pubsublite.V1.ListSubscriptionsResponse

  rpc :UpdateSubscription,
      Google.Cloud.Pubsublite.V1.UpdateSubscriptionRequest,
      Google.Cloud.Pubsublite.V1.Subscription

  rpc :DeleteSubscription,
      Google.Cloud.Pubsublite.V1.DeleteSubscriptionRequest,
      Google.Protobuf.Empty

  rpc :SeekSubscription,
      Google.Cloud.Pubsublite.V1.SeekSubscriptionRequest,
      Google.Longrunning.Operation

  rpc :CreateReservation,
      Google.Cloud.Pubsublite.V1.CreateReservationRequest,
      Google.Cloud.Pubsublite.V1.Reservation

  rpc :GetReservation,
      Google.Cloud.Pubsublite.V1.GetReservationRequest,
      Google.Cloud.Pubsublite.V1.Reservation

  rpc :ListReservations,
      Google.Cloud.Pubsublite.V1.ListReservationsRequest,
      Google.Cloud.Pubsublite.V1.ListReservationsResponse

  rpc :UpdateReservation,
      Google.Cloud.Pubsublite.V1.UpdateReservationRequest,
      Google.Cloud.Pubsublite.V1.Reservation

  rpc :DeleteReservation,
      Google.Cloud.Pubsublite.V1.DeleteReservationRequest,
      Google.Protobuf.Empty

  rpc :ListReservationTopics,
      Google.Cloud.Pubsublite.V1.ListReservationTopicsRequest,
      Google.Cloud.Pubsublite.V1.ListReservationTopicsResponse
end

defmodule Google.Cloud.Pubsublite.V1.AdminService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Pubsublite.V1.AdminService.Service
end
