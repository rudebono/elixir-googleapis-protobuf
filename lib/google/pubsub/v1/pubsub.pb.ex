defmodule Google.Pubsub.V1.MessageStoragePolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_persistence_regions: [String.t()]
        }

  defstruct allowed_persistence_regions: []

  field :allowed_persistence_regions, 1,
    repeated: true,
    type: :string,
    json_name: "allowedPersistenceRegions"
end
defmodule Google.Pubsub.V1.SchemaSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          schema: String.t(),
          encoding: Google.Pubsub.V1.Encoding.t()
        }

  defstruct schema: "",
            encoding: :ENCODING_UNSPECIFIED

  field :schema, 1, type: :string, deprecated: false
  field :encoding, 2, type: Google.Pubsub.V1.Encoding, enum: true
end
defmodule Google.Pubsub.V1.Topic.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

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

  defstruct name: "",
            labels: %{},
            message_storage_policy: nil,
            kms_key_name: "",
            schema_settings: nil,
            satisfies_pzs: false,
            message_retention_duration: nil

  field :name, 1, type: :string, deprecated: false
  field :labels, 2, repeated: true, type: Google.Pubsub.V1.Topic.LabelsEntry, map: true

  field :message_storage_policy, 3,
    type: Google.Pubsub.V1.MessageStoragePolicy,
    json_name: "messageStoragePolicy"

  field :kms_key_name, 5, type: :string, json_name: "kmsKeyName"
  field :schema_settings, 6, type: Google.Pubsub.V1.SchemaSettings, json_name: "schemaSettings"
  field :satisfies_pzs, 7, type: :bool, json_name: "satisfiesPzs"

  field :message_retention_duration, 8,
    type: Google.Protobuf.Duration,
    json_name: "messageRetentionDuration"
end
defmodule Google.Pubsub.V1.PubsubMessage.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

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

  defstruct data: "",
            attributes: %{},
            message_id: "",
            publish_time: nil,
            ordering_key: ""

  field :data, 1, type: :bytes

  field :attributes, 2,
    repeated: true,
    type: Google.Pubsub.V1.PubsubMessage.AttributesEntry,
    map: true

  field :message_id, 3, type: :string, json_name: "messageId"
  field :publish_time, 4, type: Google.Protobuf.Timestamp, json_name: "publishTime"
  field :ordering_key, 5, type: :string, json_name: "orderingKey"
end
defmodule Google.Pubsub.V1.GetTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct topic: ""

  field :topic, 1, type: :string, deprecated: false
end
defmodule Google.Pubsub.V1.UpdateTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: Google.Pubsub.V1.Topic.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct topic: nil,
            update_mask: nil

  field :topic, 1, type: Google.Pubsub.V1.Topic, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Pubsub.V1.PublishRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          messages: [Google.Pubsub.V1.PubsubMessage.t()]
        }

  defstruct topic: "",
            messages: []

  field :topic, 1, type: :string, deprecated: false
  field :messages, 2, repeated: true, type: Google.Pubsub.V1.PubsubMessage, deprecated: false
end
defmodule Google.Pubsub.V1.PublishResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_ids: [String.t()]
        }

  defstruct message_ids: []

  field :message_ids, 1, repeated: true, type: :string, json_name: "messageIds"
end
defmodule Google.Pubsub.V1.ListTopicsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct project: "",
            page_size: 0,
            page_token: ""

  field :project, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Pubsub.V1.ListTopicsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topics: [Google.Pubsub.V1.Topic.t()],
          next_page_token: String.t()
        }

  defstruct topics: [],
            next_page_token: ""

  field :topics, 1, repeated: true, type: Google.Pubsub.V1.Topic
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Pubsub.V1.ListTopicSubscriptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct topic: "",
            page_size: 0,
            page_token: ""

  field :topic, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Pubsub.V1.ListTopicSubscriptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscriptions: [String.t()],
          next_page_token: String.t()
        }

  defstruct subscriptions: [],
            next_page_token: ""

  field :subscriptions, 1, repeated: true, type: :string, deprecated: false
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Pubsub.V1.ListTopicSnapshotsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct topic: "",
            page_size: 0,
            page_token: ""

  field :topic, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Pubsub.V1.ListTopicSnapshotsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshots: [String.t()],
          next_page_token: String.t()
        }

  defstruct snapshots: [],
            next_page_token: ""

  field :snapshots, 1, repeated: true, type: :string
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Pubsub.V1.DeleteTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct topic: ""

  field :topic, 1, type: :string, deprecated: false
end
defmodule Google.Pubsub.V1.DetachSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t()
        }

  defstruct subscription: ""

  field :subscription, 1, type: :string, deprecated: false
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

  defstruct key: "",
            value: ""

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
          enable_exactly_once_delivery: boolean,
          topic_message_retention_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct name: "",
            topic: "",
            push_config: nil,
            ack_deadline_seconds: 0,
            retain_acked_messages: false,
            message_retention_duration: nil,
            labels: %{},
            enable_message_ordering: false,
            expiration_policy: nil,
            filter: "",
            dead_letter_policy: nil,
            retry_policy: nil,
            detached: false,
            enable_exactly_once_delivery: false,
            topic_message_retention_duration: nil

  field :name, 1, type: :string, deprecated: false
  field :topic, 2, type: :string, deprecated: false
  field :push_config, 4, type: Google.Pubsub.V1.PushConfig, json_name: "pushConfig"
  field :ack_deadline_seconds, 5, type: :int32, json_name: "ackDeadlineSeconds"
  field :retain_acked_messages, 7, type: :bool, json_name: "retainAckedMessages"

  field :message_retention_duration, 8,
    type: Google.Protobuf.Duration,
    json_name: "messageRetentionDuration"

  field :labels, 9, repeated: true, type: Google.Pubsub.V1.Subscription.LabelsEntry, map: true
  field :enable_message_ordering, 10, type: :bool, json_name: "enableMessageOrdering"

  field :expiration_policy, 11,
    type: Google.Pubsub.V1.ExpirationPolicy,
    json_name: "expirationPolicy"

  field :filter, 12, type: :string

  field :dead_letter_policy, 13,
    type: Google.Pubsub.V1.DeadLetterPolicy,
    json_name: "deadLetterPolicy"

  field :retry_policy, 14, type: Google.Pubsub.V1.RetryPolicy, json_name: "retryPolicy"
  field :detached, 15, type: :bool
  field :enable_exactly_once_delivery, 16, type: :bool, json_name: "enableExactlyOnceDelivery"

  field :topic_message_retention_duration, 17,
    type: Google.Protobuf.Duration,
    json_name: "topicMessageRetentionDuration",
    deprecated: false
end
defmodule Google.Pubsub.V1.RetryPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          minimum_backoff: Google.Protobuf.Duration.t() | nil,
          maximum_backoff: Google.Protobuf.Duration.t() | nil
        }

  defstruct minimum_backoff: nil,
            maximum_backoff: nil

  field :minimum_backoff, 1, type: Google.Protobuf.Duration, json_name: "minimumBackoff"
  field :maximum_backoff, 2, type: Google.Protobuf.Duration, json_name: "maximumBackoff"
end
defmodule Google.Pubsub.V1.DeadLetterPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dead_letter_topic: String.t(),
          max_delivery_attempts: integer
        }

  defstruct dead_letter_topic: "",
            max_delivery_attempts: 0

  field :dead_letter_topic, 1, type: :string, json_name: "deadLetterTopic"
  field :max_delivery_attempts, 2, type: :int32, json_name: "maxDeliveryAttempts"
end
defmodule Google.Pubsub.V1.ExpirationPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ttl: Google.Protobuf.Duration.t() | nil
        }

  defstruct ttl: nil

  field :ttl, 1, type: Google.Protobuf.Duration
end
defmodule Google.Pubsub.V1.PushConfig.OidcToken do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_account_email: String.t(),
          audience: String.t()
        }

  defstruct service_account_email: "",
            audience: ""

  field :service_account_email, 1, type: :string, json_name: "serviceAccountEmail"
  field :audience, 2, type: :string
end
defmodule Google.Pubsub.V1.PushConfig.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Pubsub.V1.PushConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authentication_method: {:oidc_token, Google.Pubsub.V1.PushConfig.OidcToken.t() | nil},
          push_endpoint: String.t(),
          attributes: %{String.t() => String.t()}
        }

  defstruct authentication_method: nil,
            push_endpoint: "",
            attributes: %{}

  oneof :authentication_method, 0

  field :push_endpoint, 1, type: :string, json_name: "pushEndpoint"

  field :attributes, 2,
    repeated: true,
    type: Google.Pubsub.V1.PushConfig.AttributesEntry,
    map: true

  field :oidc_token, 3,
    type: Google.Pubsub.V1.PushConfig.OidcToken,
    json_name: "oidcToken",
    oneof: 0
end
defmodule Google.Pubsub.V1.ReceivedMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ack_id: String.t(),
          message: Google.Pubsub.V1.PubsubMessage.t() | nil,
          delivery_attempt: integer
        }

  defstruct ack_id: "",
            message: nil,
            delivery_attempt: 0

  field :ack_id, 1, type: :string, json_name: "ackId"
  field :message, 2, type: Google.Pubsub.V1.PubsubMessage
  field :delivery_attempt, 3, type: :int32, json_name: "deliveryAttempt"
end
defmodule Google.Pubsub.V1.GetSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t()
        }

  defstruct subscription: ""

  field :subscription, 1, type: :string, deprecated: false
end
defmodule Google.Pubsub.V1.UpdateSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: Google.Pubsub.V1.Subscription.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct subscription: nil,
            update_mask: nil

  field :subscription, 1, type: Google.Pubsub.V1.Subscription, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Pubsub.V1.ListSubscriptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct project: "",
            page_size: 0,
            page_token: ""

  field :project, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Pubsub.V1.ListSubscriptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscriptions: [Google.Pubsub.V1.Subscription.t()],
          next_page_token: String.t()
        }

  defstruct subscriptions: [],
            next_page_token: ""

  field :subscriptions, 1, repeated: true, type: Google.Pubsub.V1.Subscription
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Pubsub.V1.DeleteSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t()
        }

  defstruct subscription: ""

  field :subscription, 1, type: :string, deprecated: false
end
defmodule Google.Pubsub.V1.ModifyPushConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          push_config: Google.Pubsub.V1.PushConfig.t() | nil
        }

  defstruct subscription: "",
            push_config: nil

  field :subscription, 1, type: :string, deprecated: false

  field :push_config, 2,
    type: Google.Pubsub.V1.PushConfig,
    json_name: "pushConfig",
    deprecated: false
end
defmodule Google.Pubsub.V1.PullRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          return_immediately: boolean,
          max_messages: integer
        }

  defstruct subscription: "",
            return_immediately: false,
            max_messages: 0

  field :subscription, 1, type: :string, deprecated: false
  field :return_immediately, 2, type: :bool, json_name: "returnImmediately", deprecated: true
  field :max_messages, 3, type: :int32, json_name: "maxMessages", deprecated: false
end
defmodule Google.Pubsub.V1.PullResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          received_messages: [Google.Pubsub.V1.ReceivedMessage.t()]
        }

  defstruct received_messages: []

  field :received_messages, 1,
    repeated: true,
    type: Google.Pubsub.V1.ReceivedMessage,
    json_name: "receivedMessages"
end
defmodule Google.Pubsub.V1.ModifyAckDeadlineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          ack_ids: [String.t()],
          ack_deadline_seconds: integer
        }

  defstruct subscription: "",
            ack_ids: [],
            ack_deadline_seconds: 0

  field :subscription, 1, type: :string, deprecated: false
  field :ack_ids, 4, repeated: true, type: :string, json_name: "ackIds", deprecated: false
  field :ack_deadline_seconds, 3, type: :int32, json_name: "ackDeadlineSeconds", deprecated: false
end
defmodule Google.Pubsub.V1.AcknowledgeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          ack_ids: [String.t()]
        }

  defstruct subscription: "",
            ack_ids: []

  field :subscription, 1, type: :string, deprecated: false
  field :ack_ids, 2, repeated: true, type: :string, json_name: "ackIds", deprecated: false
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

  defstruct subscription: "",
            ack_ids: [],
            modify_deadline_seconds: [],
            modify_deadline_ack_ids: [],
            stream_ack_deadline_seconds: 0,
            client_id: "",
            max_outstanding_messages: 0,
            max_outstanding_bytes: 0

  field :subscription, 1, type: :string, deprecated: false
  field :ack_ids, 2, repeated: true, type: :string, json_name: "ackIds"

  field :modify_deadline_seconds, 3,
    repeated: true,
    type: :int32,
    json_name: "modifyDeadlineSeconds"

  field :modify_deadline_ack_ids, 4,
    repeated: true,
    type: :string,
    json_name: "modifyDeadlineAckIds"

  field :stream_ack_deadline_seconds, 5,
    type: :int32,
    json_name: "streamAckDeadlineSeconds",
    deprecated: false

  field :client_id, 6, type: :string, json_name: "clientId"
  field :max_outstanding_messages, 7, type: :int64, json_name: "maxOutstandingMessages"
  field :max_outstanding_bytes, 8, type: :int64, json_name: "maxOutstandingBytes"
end
defmodule Google.Pubsub.V1.StreamingPullResponse.AcknowledgeConfirmation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ack_ids: [String.t()],
          invalid_ack_ids: [String.t()],
          unordered_ack_ids: [String.t()]
        }

  defstruct ack_ids: [],
            invalid_ack_ids: [],
            unordered_ack_ids: []

  field :ack_ids, 1, repeated: true, type: :string, json_name: "ackIds", deprecated: false

  field :invalid_ack_ids, 2,
    repeated: true,
    type: :string,
    json_name: "invalidAckIds",
    deprecated: false

  field :unordered_ack_ids, 3,
    repeated: true,
    type: :string,
    json_name: "unorderedAckIds",
    deprecated: false
end
defmodule Google.Pubsub.V1.StreamingPullResponse.ModifyAckDeadlineConfirmation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ack_ids: [String.t()],
          invalid_ack_ids: [String.t()]
        }

  defstruct ack_ids: [],
            invalid_ack_ids: []

  field :ack_ids, 1, repeated: true, type: :string, json_name: "ackIds", deprecated: false

  field :invalid_ack_ids, 2,
    repeated: true,
    type: :string,
    json_name: "invalidAckIds",
    deprecated: false
end
defmodule Google.Pubsub.V1.StreamingPullResponse.SubscriptionProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          exactly_once_delivery_enabled: boolean,
          message_ordering_enabled: boolean
        }

  defstruct exactly_once_delivery_enabled: false,
            message_ordering_enabled: false

  field :exactly_once_delivery_enabled, 1, type: :bool, json_name: "exactlyOnceDeliveryEnabled"
  field :message_ordering_enabled, 2, type: :bool, json_name: "messageOrderingEnabled"
end
defmodule Google.Pubsub.V1.StreamingPullResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          received_messages: [Google.Pubsub.V1.ReceivedMessage.t()],
          acknowledge_confirmation:
            Google.Pubsub.V1.StreamingPullResponse.AcknowledgeConfirmation.t() | nil,
          modify_ack_deadline_confirmation:
            Google.Pubsub.V1.StreamingPullResponse.ModifyAckDeadlineConfirmation.t() | nil,
          subscription_properties:
            Google.Pubsub.V1.StreamingPullResponse.SubscriptionProperties.t() | nil
        }

  defstruct received_messages: [],
            acknowledge_confirmation: nil,
            modify_ack_deadline_confirmation: nil,
            subscription_properties: nil

  field :received_messages, 1,
    repeated: true,
    type: Google.Pubsub.V1.ReceivedMessage,
    json_name: "receivedMessages"

  field :acknowledge_confirmation, 5,
    type: Google.Pubsub.V1.StreamingPullResponse.AcknowledgeConfirmation,
    json_name: "acknowledgeConfirmation"

  field :modify_ack_deadline_confirmation, 3,
    type: Google.Pubsub.V1.StreamingPullResponse.ModifyAckDeadlineConfirmation,
    json_name: "modifyAckDeadlineConfirmation"

  field :subscription_properties, 4,
    type: Google.Pubsub.V1.StreamingPullResponse.SubscriptionProperties,
    json_name: "subscriptionProperties"
end
defmodule Google.Pubsub.V1.CreateSnapshotRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

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

  defstruct name: "",
            subscription: "",
            labels: %{}

  field :name, 1, type: :string, deprecated: false
  field :subscription, 2, type: :string, deprecated: false

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

  defstruct snapshot: nil,
            update_mask: nil

  field :snapshot, 1, type: Google.Pubsub.V1.Snapshot, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Pubsub.V1.Snapshot.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

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

  defstruct name: "",
            topic: "",
            expire_time: nil,
            labels: %{}

  field :name, 1, type: :string
  field :topic, 2, type: :string, deprecated: false
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
  field :labels, 4, repeated: true, type: Google.Pubsub.V1.Snapshot.LabelsEntry, map: true
end
defmodule Google.Pubsub.V1.GetSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot: String.t()
        }

  defstruct snapshot: ""

  field :snapshot, 1, type: :string, deprecated: false
end
defmodule Google.Pubsub.V1.ListSnapshotsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct project: "",
            page_size: 0,
            page_token: ""

  field :project, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Pubsub.V1.ListSnapshotsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshots: [Google.Pubsub.V1.Snapshot.t()],
          next_page_token: String.t()
        }

  defstruct snapshots: [],
            next_page_token: ""

  field :snapshots, 1, repeated: true, type: Google.Pubsub.V1.Snapshot
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Pubsub.V1.DeleteSnapshotRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          snapshot: String.t()
        }

  defstruct snapshot: ""

  field :snapshot, 1, type: :string, deprecated: false
end
defmodule Google.Pubsub.V1.SeekRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target: {:time, Google.Protobuf.Timestamp.t() | nil} | {:snapshot, String.t()},
          subscription: String.t()
        }

  defstruct target: nil,
            subscription: ""

  oneof :target, 0

  field :subscription, 1, type: :string, deprecated: false
  field :time, 2, type: Google.Protobuf.Timestamp, oneof: 0
  field :snapshot, 3, type: :string, oneof: 0, deprecated: false
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
