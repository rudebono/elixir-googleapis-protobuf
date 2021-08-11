defmodule Google.Pubsub.V1.MessageStoragePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_persistence_regions: [String.t()]
        }

  defstruct [:allowed_persistence_regions]

  field :allowed_persistence_regions, 1, repeated: true, type: :string
end

defmodule Google.Pubsub.V1.SchemaSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema: String.t(),
          encoding: Google.Pubsub.V1.Encoding.t()
        }

  defstruct [:schema, :encoding]

  field :schema, 1, type: :string
  field :encoding, 2, type: Google.Pubsub.V1.Encoding, enum: true
end

defmodule Google.Pubsub.V1.Topic.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.Topic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          labels: %{String.t() => String.t()},
          message_storage_policy: Google.Pubsub.V1.MessageStoragePolicy.t() | nil,
          kms_key_name: String.t(),
          schema_settings: Google.Pubsub.V1.SchemaSettings.t() | nil,
          satisfies_pzs: boolean,
          message_retention_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :name,
    :labels,
    :message_storage_policy,
    :kms_key_name,
    :schema_settings,
    :satisfies_pzs,
    :message_retention_duration
  ]

  field :name, 1, type: :string
  field :labels, 2, repeated: true, type: Google.Pubsub.V1.Topic.LabelsEntry, map: true
  field :message_storage_policy, 3, type: Google.Pubsub.V1.MessageStoragePolicy
  field :kms_key_name, 5, type: :string
  field :schema_settings, 6, type: Google.Pubsub.V1.SchemaSettings
  field :satisfies_pzs, 7, type: :bool
  field :message_retention_duration, 8, type: Google.Protobuf.Duration
end

defmodule Google.Pubsub.V1.PubsubMessage.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.PubsubMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary,
          attributes: %{String.t() => String.t()},
          message_id: String.t(),
          publish_time: Google.Protobuf.Timestamp.t() | nil,
          ordering_key: String.t()
        }

  defstruct [:data, :attributes, :message_id, :publish_time, :ordering_key]

  field :data, 1, type: :bytes

  field :attributes, 2,
    repeated: true,
    type: Google.Pubsub.V1.PubsubMessage.AttributesEntry,
    map: true

  field :message_id, 3, type: :string
  field :publish_time, 4, type: Google.Protobuf.Timestamp
  field :ordering_key, 5, type: :string
end

defmodule Google.Pubsub.V1.GetTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct [:topic]

  field :topic, 1, type: :string
end

defmodule Google.Pubsub.V1.UpdateTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: Google.Pubsub.V1.Topic.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:topic, :update_mask]

  field :topic, 1, type: Google.Pubsub.V1.Topic
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Pubsub.V1.PublishRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          messages: [Google.Pubsub.V1.PubsubMessage.t()]
        }

  defstruct [:topic, :messages]

  field :topic, 1, type: :string
  field :messages, 2, repeated: true, type: Google.Pubsub.V1.PubsubMessage
end

defmodule Google.Pubsub.V1.PublishResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_ids: [String.t()]
        }

  defstruct [:message_ids]

  field :message_ids, 1, repeated: true, type: :string
end

defmodule Google.Pubsub.V1.ListTopicsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project, :page_size, :page_token]

  field :project, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Pubsub.V1.ListTopicsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topics: [Google.Pubsub.V1.Topic.t()],
          next_page_token: String.t()
        }

  defstruct [:topics, :next_page_token]

  field :topics, 1, repeated: true, type: Google.Pubsub.V1.Topic
  field :next_page_token, 2, type: :string
end

defmodule Google.Pubsub.V1.ListTopicSubscriptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:topic, :page_size, :page_token]

  field :topic, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Pubsub.V1.ListTopicSubscriptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscriptions: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:subscriptions, :next_page_token]

  field :subscriptions, 1, repeated: true, type: :string
  field :next_page_token, 2, type: :string
end

defmodule Google.Pubsub.V1.ListTopicSnapshotsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:topic, :page_size, :page_token]

  field :topic, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Pubsub.V1.ListTopicSnapshotsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshots: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:snapshots, :next_page_token]

  field :snapshots, 1, repeated: true, type: :string
  field :next_page_token, 2, type: :string
end

defmodule Google.Pubsub.V1.DeleteTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct [:topic]

  field :topic, 1, type: :string
end

defmodule Google.Pubsub.V1.DetachSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t()
        }

  defstruct [:subscription]

  field :subscription, 1, type: :string
end

defmodule Google.Pubsub.V1.DetachSubscriptionResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Pubsub.V1.Subscription.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.Subscription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          topic: String.t(),
          push_config: Google.Pubsub.V1.PushConfig.t() | nil,
          ack_deadline_seconds: integer,
          retain_acked_messages: boolean,
          message_retention_duration: Google.Protobuf.Duration.t() | nil,
          labels: %{String.t() => String.t()},
          enable_message_ordering: boolean,
          expiration_policy: Google.Pubsub.V1.ExpirationPolicy.t() | nil,
          filter: String.t(),
          dead_letter_policy: Google.Pubsub.V1.DeadLetterPolicy.t() | nil,
          retry_policy: Google.Pubsub.V1.RetryPolicy.t() | nil,
          detached: boolean,
          topic_message_retention_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [
    :name,
    :topic,
    :push_config,
    :ack_deadline_seconds,
    :retain_acked_messages,
    :message_retention_duration,
    :labels,
    :enable_message_ordering,
    :expiration_policy,
    :filter,
    :dead_letter_policy,
    :retry_policy,
    :detached,
    :topic_message_retention_duration
  ]

  field :name, 1, type: :string
  field :topic, 2, type: :string
  field :push_config, 4, type: Google.Pubsub.V1.PushConfig
  field :ack_deadline_seconds, 5, type: :int32
  field :retain_acked_messages, 7, type: :bool
  field :message_retention_duration, 8, type: Google.Protobuf.Duration
  field :labels, 9, repeated: true, type: Google.Pubsub.V1.Subscription.LabelsEntry, map: true
  field :enable_message_ordering, 10, type: :bool
  field :expiration_policy, 11, type: Google.Pubsub.V1.ExpirationPolicy
  field :filter, 12, type: :string
  field :dead_letter_policy, 13, type: Google.Pubsub.V1.DeadLetterPolicy
  field :retry_policy, 14, type: Google.Pubsub.V1.RetryPolicy
  field :detached, 15, type: :bool
  field :topic_message_retention_duration, 17, type: Google.Protobuf.Duration
end

defmodule Google.Pubsub.V1.RetryPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          minimum_backoff: Google.Protobuf.Duration.t() | nil,
          maximum_backoff: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:minimum_backoff, :maximum_backoff]

  field :minimum_backoff, 1, type: Google.Protobuf.Duration
  field :maximum_backoff, 2, type: Google.Protobuf.Duration
end

defmodule Google.Pubsub.V1.DeadLetterPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dead_letter_topic: String.t(),
          max_delivery_attempts: integer
        }

  defstruct [:dead_letter_topic, :max_delivery_attempts]

  field :dead_letter_topic, 1, type: :string
  field :max_delivery_attempts, 2, type: :int32
end

defmodule Google.Pubsub.V1.ExpirationPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ttl: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:ttl]

  field :ttl, 1, type: Google.Protobuf.Duration
end

defmodule Google.Pubsub.V1.PushConfig.OidcToken do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account_email: String.t(),
          audience: String.t()
        }

  defstruct [:service_account_email, :audience]

  field :service_account_email, 1, type: :string
  field :audience, 2, type: :string
end

defmodule Google.Pubsub.V1.PushConfig.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.PushConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authentication_method: {atom, any},
          push_endpoint: String.t(),
          attributes: %{String.t() => String.t()}
        }

  defstruct [:authentication_method, :push_endpoint, :attributes]

  oneof :authentication_method, 0
  field :push_endpoint, 1, type: :string

  field :attributes, 2,
    repeated: true,
    type: Google.Pubsub.V1.PushConfig.AttributesEntry,
    map: true

  field :oidc_token, 3, type: Google.Pubsub.V1.PushConfig.OidcToken, oneof: 0
end

defmodule Google.Pubsub.V1.ReceivedMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ack_id: String.t(),
          message: Google.Pubsub.V1.PubsubMessage.t() | nil,
          delivery_attempt: integer
        }

  defstruct [:ack_id, :message, :delivery_attempt]

  field :ack_id, 1, type: :string
  field :message, 2, type: Google.Pubsub.V1.PubsubMessage
  field :delivery_attempt, 3, type: :int32
end

defmodule Google.Pubsub.V1.GetSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t()
        }

  defstruct [:subscription]

  field :subscription, 1, type: :string
end

defmodule Google.Pubsub.V1.UpdateSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: Google.Pubsub.V1.Subscription.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:subscription, :update_mask]

  field :subscription, 1, type: Google.Pubsub.V1.Subscription
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Pubsub.V1.ListSubscriptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project, :page_size, :page_token]

  field :project, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Pubsub.V1.ListSubscriptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscriptions: [Google.Pubsub.V1.Subscription.t()],
          next_page_token: String.t()
        }

  defstruct [:subscriptions, :next_page_token]

  field :subscriptions, 1, repeated: true, type: Google.Pubsub.V1.Subscription
  field :next_page_token, 2, type: :string
end

defmodule Google.Pubsub.V1.DeleteSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t()
        }

  defstruct [:subscription]

  field :subscription, 1, type: :string
end

defmodule Google.Pubsub.V1.ModifyPushConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          push_config: Google.Pubsub.V1.PushConfig.t() | nil
        }

  defstruct [:subscription, :push_config]

  field :subscription, 1, type: :string
  field :push_config, 2, type: Google.Pubsub.V1.PushConfig
end

defmodule Google.Pubsub.V1.PullRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          return_immediately: boolean,
          max_messages: integer
        }

  defstruct [:subscription, :return_immediately, :max_messages]

  field :subscription, 1, type: :string
  field :return_immediately, 2, type: :bool, deprecated: true
  field :max_messages, 3, type: :int32
end

defmodule Google.Pubsub.V1.PullResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          received_messages: [Google.Pubsub.V1.ReceivedMessage.t()]
        }

  defstruct [:received_messages]

  field :received_messages, 1, repeated: true, type: Google.Pubsub.V1.ReceivedMessage
end

defmodule Google.Pubsub.V1.ModifyAckDeadlineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          ack_ids: [String.t()],
          ack_deadline_seconds: integer
        }

  defstruct [:subscription, :ack_ids, :ack_deadline_seconds]

  field :subscription, 1, type: :string
  field :ack_ids, 4, repeated: true, type: :string
  field :ack_deadline_seconds, 3, type: :int32
end

defmodule Google.Pubsub.V1.AcknowledgeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          ack_ids: [String.t()]
        }

  defstruct [:subscription, :ack_ids]

  field :subscription, 1, type: :string
  field :ack_ids, 2, repeated: true, type: :string
end

defmodule Google.Pubsub.V1.StreamingPullRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          ack_ids: [String.t()],
          modify_deadline_seconds: [integer],
          modify_deadline_ack_ids: [String.t()],
          stream_ack_deadline_seconds: integer,
          client_id: String.t(),
          max_outstanding_messages: integer,
          max_outstanding_bytes: integer
        }

  defstruct [
    :subscription,
    :ack_ids,
    :modify_deadline_seconds,
    :modify_deadline_ack_ids,
    :stream_ack_deadline_seconds,
    :client_id,
    :max_outstanding_messages,
    :max_outstanding_bytes
  ]

  field :subscription, 1, type: :string
  field :ack_ids, 2, repeated: true, type: :string
  field :modify_deadline_seconds, 3, repeated: true, type: :int32
  field :modify_deadline_ack_ids, 4, repeated: true, type: :string
  field :stream_ack_deadline_seconds, 5, type: :int32
  field :client_id, 6, type: :string
  field :max_outstanding_messages, 7, type: :int64
  field :max_outstanding_bytes, 8, type: :int64
end

defmodule Google.Pubsub.V1.StreamingPullResponse.SubscriptionProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_ordering_enabled: boolean
        }

  defstruct [:message_ordering_enabled]

  field :message_ordering_enabled, 2, type: :bool
end

defmodule Google.Pubsub.V1.StreamingPullResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          received_messages: [Google.Pubsub.V1.ReceivedMessage.t()],
          subscription_properties:
            Google.Pubsub.V1.StreamingPullResponse.SubscriptionProperties.t() | nil
        }

  defstruct [:received_messages, :subscription_properties]

  field :received_messages, 1, repeated: true, type: Google.Pubsub.V1.ReceivedMessage

  field :subscription_properties, 4,
    type: Google.Pubsub.V1.StreamingPullResponse.SubscriptionProperties
end

defmodule Google.Pubsub.V1.CreateSnapshotRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.CreateSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          subscription: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :subscription, :labels]

  field :name, 1, type: :string
  field :subscription, 2, type: :string

  field :labels, 3,
    repeated: true,
    type: Google.Pubsub.V1.CreateSnapshotRequest.LabelsEntry,
    map: true
end

defmodule Google.Pubsub.V1.UpdateSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot: Google.Pubsub.V1.Snapshot.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:snapshot, :update_mask]

  field :snapshot, 1, type: Google.Pubsub.V1.Snapshot
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Pubsub.V1.Snapshot.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Pubsub.V1.Snapshot do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          topic: String.t(),
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :topic, :expire_time, :labels]

  field :name, 1, type: :string
  field :topic, 2, type: :string
  field :expire_time, 3, type: Google.Protobuf.Timestamp
  field :labels, 4, repeated: true, type: Google.Pubsub.V1.Snapshot.LabelsEntry, map: true
end

defmodule Google.Pubsub.V1.GetSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot: String.t()
        }

  defstruct [:snapshot]

  field :snapshot, 1, type: :string
end

defmodule Google.Pubsub.V1.ListSnapshotsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project, :page_size, :page_token]

  field :project, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Pubsub.V1.ListSnapshotsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshots: [Google.Pubsub.V1.Snapshot.t()],
          next_page_token: String.t()
        }

  defstruct [:snapshots, :next_page_token]

  field :snapshots, 1, repeated: true, type: Google.Pubsub.V1.Snapshot
  field :next_page_token, 2, type: :string
end

defmodule Google.Pubsub.V1.DeleteSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot: String.t()
        }

  defstruct [:snapshot]

  field :snapshot, 1, type: :string
end

defmodule Google.Pubsub.V1.SeekRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {atom, any},
          subscription: String.t()
        }

  defstruct [:target, :subscription]

  oneof :target, 0
  field :subscription, 1, type: :string
  field :time, 2, type: Google.Protobuf.Timestamp, oneof: 0
  field :snapshot, 3, type: :string, oneof: 0
end

defmodule Google.Pubsub.V1.SeekResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Pubsub.V1.Publisher.Service do
  @moduledoc false
  use GRPC.Service, name: "google.pubsub.v1.Publisher"

  rpc :CreateTopic, Google.Pubsub.V1.Topic, Google.Pubsub.V1.Topic

  rpc :UpdateTopic, Google.Pubsub.V1.UpdateTopicRequest, Google.Pubsub.V1.Topic

  rpc :Publish, Google.Pubsub.V1.PublishRequest, Google.Pubsub.V1.PublishResponse

  rpc :GetTopic, Google.Pubsub.V1.GetTopicRequest, Google.Pubsub.V1.Topic

  rpc :ListTopics, Google.Pubsub.V1.ListTopicsRequest, Google.Pubsub.V1.ListTopicsResponse

  rpc :ListTopicSubscriptions,
      Google.Pubsub.V1.ListTopicSubscriptionsRequest,
      Google.Pubsub.V1.ListTopicSubscriptionsResponse

  rpc :ListTopicSnapshots,
      Google.Pubsub.V1.ListTopicSnapshotsRequest,
      Google.Pubsub.V1.ListTopicSnapshotsResponse

  rpc :DeleteTopic, Google.Pubsub.V1.DeleteTopicRequest, Google.Protobuf.Empty

  rpc :DetachSubscription,
      Google.Pubsub.V1.DetachSubscriptionRequest,
      Google.Pubsub.V1.DetachSubscriptionResponse
end

defmodule Google.Pubsub.V1.Publisher.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Pubsub.V1.Publisher.Service
end

defmodule Google.Pubsub.V1.Subscriber.Service do
  @moduledoc false
  use GRPC.Service, name: "google.pubsub.v1.Subscriber"

  rpc :CreateSubscription, Google.Pubsub.V1.Subscription, Google.Pubsub.V1.Subscription

  rpc :GetSubscription, Google.Pubsub.V1.GetSubscriptionRequest, Google.Pubsub.V1.Subscription

  rpc :UpdateSubscription,
      Google.Pubsub.V1.UpdateSubscriptionRequest,
      Google.Pubsub.V1.Subscription

  rpc :ListSubscriptions,
      Google.Pubsub.V1.ListSubscriptionsRequest,
      Google.Pubsub.V1.ListSubscriptionsResponse

  rpc :DeleteSubscription, Google.Pubsub.V1.DeleteSubscriptionRequest, Google.Protobuf.Empty

  rpc :ModifyAckDeadline, Google.Pubsub.V1.ModifyAckDeadlineRequest, Google.Protobuf.Empty

  rpc :Acknowledge, Google.Pubsub.V1.AcknowledgeRequest, Google.Protobuf.Empty

  rpc :Pull, Google.Pubsub.V1.PullRequest, Google.Pubsub.V1.PullResponse

  rpc :StreamingPull,
      stream(Google.Pubsub.V1.StreamingPullRequest),
      stream(Google.Pubsub.V1.StreamingPullResponse)

  rpc :ModifyPushConfig, Google.Pubsub.V1.ModifyPushConfigRequest, Google.Protobuf.Empty

  rpc :GetSnapshot, Google.Pubsub.V1.GetSnapshotRequest, Google.Pubsub.V1.Snapshot

  rpc :ListSnapshots,
      Google.Pubsub.V1.ListSnapshotsRequest,
      Google.Pubsub.V1.ListSnapshotsResponse

  rpc :CreateSnapshot, Google.Pubsub.V1.CreateSnapshotRequest, Google.Pubsub.V1.Snapshot

  rpc :UpdateSnapshot, Google.Pubsub.V1.UpdateSnapshotRequest, Google.Pubsub.V1.Snapshot

  rpc :DeleteSnapshot, Google.Pubsub.V1.DeleteSnapshotRequest, Google.Protobuf.Empty

  rpc :Seek, Google.Pubsub.V1.SeekRequest, Google.Pubsub.V1.SeekResponse
end

defmodule Google.Pubsub.V1.Subscriber.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Pubsub.V1.Subscriber.Service
end
