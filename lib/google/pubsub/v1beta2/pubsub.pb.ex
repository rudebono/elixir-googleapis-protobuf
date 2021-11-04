defmodule Google.Pubsub.V1beta2.Topic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.PubsubMessage.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.PubsubMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data: binary,
          attributes: %{String.t() => String.t()},
          message_id: String.t()
        }

  defstruct [:data, :attributes, :message_id]

  field :data, 1, type: :bytes

  field :attributes, 2,
    repeated: true,
    type: Google.Pubsub.V1beta2.PubsubMessage.AttributesEntry,
    map: true

  field :message_id, 3, type: :string, json_name: "messageId"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.GetTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct [:topic]

  field :topic, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.PublishRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          messages: [Google.Pubsub.V1beta2.PubsubMessage.t()]
        }

  defstruct [:topic, :messages]

  field :topic, 1, type: :string
  field :messages, 2, repeated: true, type: Google.Pubsub.V1beta2.PubsubMessage

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.PublishResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_ids: [String.t()]
        }

  defstruct [:message_ids]

  field :message_ids, 1, repeated: true, type: :string, json_name: "messageIds"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.ListTopicsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project, :page_size, :page_token]

  field :project, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.ListTopicsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topics: [Google.Pubsub.V1beta2.Topic.t()],
          next_page_token: String.t()
        }

  defstruct [:topics, :next_page_token]

  field :topics, 1, repeated: true, type: Google.Pubsub.V1beta2.Topic
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.ListTopicSubscriptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:topic, :page_size, :page_token]

  field :topic, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.ListTopicSubscriptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscriptions: [String.t()],
          next_page_token: String.t()
        }

  defstruct [:subscriptions, :next_page_token]

  field :subscriptions, 1, repeated: true, type: :string
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.DeleteTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: String.t()
        }

  defstruct [:topic]

  field :topic, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.Subscription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          topic: String.t(),
          push_config: Google.Pubsub.V1beta2.PushConfig.t() | nil,
          ack_deadline_seconds: integer
        }

  defstruct [:name, :topic, :push_config, :ack_deadline_seconds]

  field :name, 1, type: :string
  field :topic, 2, type: :string
  field :push_config, 4, type: Google.Pubsub.V1beta2.PushConfig, json_name: "pushConfig"
  field :ack_deadline_seconds, 5, type: :int32, json_name: "ackDeadlineSeconds"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.PushConfig.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.PushConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          push_endpoint: String.t(),
          attributes: %{String.t() => String.t()}
        }

  defstruct [:push_endpoint, :attributes]

  field :push_endpoint, 1, type: :string, json_name: "pushEndpoint"

  field :attributes, 2,
    repeated: true,
    type: Google.Pubsub.V1beta2.PushConfig.AttributesEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.ReceivedMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ack_id: String.t(),
          message: Google.Pubsub.V1beta2.PubsubMessage.t() | nil
        }

  defstruct [:ack_id, :message]

  field :ack_id, 1, type: :string, json_name: "ackId"
  field :message, 2, type: Google.Pubsub.V1beta2.PubsubMessage

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.GetSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t()
        }

  defstruct [:subscription]

  field :subscription, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.ListSubscriptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:project, :page_size, :page_token]

  field :project, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.ListSubscriptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscriptions: [Google.Pubsub.V1beta2.Subscription.t()],
          next_page_token: String.t()
        }

  defstruct [:subscriptions, :next_page_token]

  field :subscriptions, 1, repeated: true, type: Google.Pubsub.V1beta2.Subscription
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.DeleteSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t()
        }

  defstruct [:subscription]

  field :subscription, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.ModifyPushConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          push_config: Google.Pubsub.V1beta2.PushConfig.t() | nil
        }

  defstruct [:subscription, :push_config]

  field :subscription, 1, type: :string
  field :push_config, 2, type: Google.Pubsub.V1beta2.PushConfig, json_name: "pushConfig"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.PullRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          return_immediately: boolean,
          max_messages: integer
        }

  defstruct [:subscription, :return_immediately, :max_messages]

  field :subscription, 1, type: :string
  field :return_immediately, 2, type: :bool, json_name: "returnImmediately"
  field :max_messages, 3, type: :int32, json_name: "maxMessages"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.PullResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          received_messages: [Google.Pubsub.V1beta2.ReceivedMessage.t()]
        }

  defstruct [:received_messages]

  field :received_messages, 1,
    repeated: true,
    type: Google.Pubsub.V1beta2.ReceivedMessage,
    json_name: "receivedMessages"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.ModifyAckDeadlineRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          ack_id: String.t(),
          ack_deadline_seconds: integer
        }

  defstruct [:subscription, :ack_id, :ack_deadline_seconds]

  field :subscription, 1, type: :string
  field :ack_id, 2, type: :string, json_name: "ackId"
  field :ack_deadline_seconds, 3, type: :int32, json_name: "ackDeadlineSeconds"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.AcknowledgeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          ack_ids: [String.t()]
        }

  defstruct [:subscription, :ack_ids]

  field :subscription, 1, type: :string
  field :ack_ids, 2, repeated: true, type: :string, json_name: "ackIds"

  def transform_module(), do: nil
end

defmodule Google.Pubsub.V1beta2.Subscriber.Service do
  @moduledoc false
  use GRPC.Service, name: "google.pubsub.v1beta2.Subscriber"

  rpc :CreateSubscription, Google.Pubsub.V1beta2.Subscription, Google.Pubsub.V1beta2.Subscription

  rpc :GetSubscription,
      Google.Pubsub.V1beta2.GetSubscriptionRequest,
      Google.Pubsub.V1beta2.Subscription

  rpc :ListSubscriptions,
      Google.Pubsub.V1beta2.ListSubscriptionsRequest,
      Google.Pubsub.V1beta2.ListSubscriptionsResponse

  rpc :DeleteSubscription, Google.Pubsub.V1beta2.DeleteSubscriptionRequest, Google.Protobuf.Empty

  rpc :ModifyAckDeadline, Google.Pubsub.V1beta2.ModifyAckDeadlineRequest, Google.Protobuf.Empty

  rpc :Acknowledge, Google.Pubsub.V1beta2.AcknowledgeRequest, Google.Protobuf.Empty

  rpc :Pull, Google.Pubsub.V1beta2.PullRequest, Google.Pubsub.V1beta2.PullResponse

  rpc :ModifyPushConfig, Google.Pubsub.V1beta2.ModifyPushConfigRequest, Google.Protobuf.Empty
end

defmodule Google.Pubsub.V1beta2.Subscriber.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Pubsub.V1beta2.Subscriber.Service
end

defmodule Google.Pubsub.V1beta2.Publisher.Service do
  @moduledoc false
  use GRPC.Service, name: "google.pubsub.v1beta2.Publisher"

  rpc :CreateTopic, Google.Pubsub.V1beta2.Topic, Google.Pubsub.V1beta2.Topic

  rpc :Publish, Google.Pubsub.V1beta2.PublishRequest, Google.Pubsub.V1beta2.PublishResponse

  rpc :GetTopic, Google.Pubsub.V1beta2.GetTopicRequest, Google.Pubsub.V1beta2.Topic

  rpc :ListTopics,
      Google.Pubsub.V1beta2.ListTopicsRequest,
      Google.Pubsub.V1beta2.ListTopicsResponse

  rpc :ListTopicSubscriptions,
      Google.Pubsub.V1beta2.ListTopicSubscriptionsRequest,
      Google.Pubsub.V1beta2.ListTopicSubscriptionsResponse

  rpc :DeleteTopic, Google.Pubsub.V1beta2.DeleteTopicRequest, Google.Protobuf.Empty
end

defmodule Google.Pubsub.V1beta2.Publisher.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Pubsub.V1beta2.Publisher.Service
end
