defmodule Google.Cloud.Pubsublite.V1.CreateTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          topic: Google.Cloud.Pubsublite.V1.Topic.t() | nil,
          topic_id: String.t()
        }

  defstruct [:parent, :topic, :topic_id]

  field :parent, 1, type: :string
  field :topic, 2, type: Google.Cloud.Pubsublite.V1.Topic
  field :topic_id, 3, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.GetTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.GetTopicPartitionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.TopicPartitions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partition_count: integer
        }

  defstruct [:partition_count]

  field :partition_count, 1, type: :int64
end

defmodule Google.Cloud.Pubsublite.V1.ListTopicsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.ListTopicsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topics: [Google.Cloud.Pubsublite.V1.Topic.t()],
          next_page_token: String.t()
        }

  defstruct [:topics, :next_page_token]

  field :topics, 1, repeated: true, type: Google.Cloud.Pubsublite.V1.Topic
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.UpdateTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          topic: Google.Cloud.Pubsublite.V1.Topic.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:topic, :update_mask]

  field :topic, 1, type: Google.Cloud.Pubsublite.V1.Topic
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Pubsublite.V1.DeleteTopicRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.ListTopicSubscriptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.ListTopicSubscriptionsResponse do
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

defmodule Google.Cloud.Pubsublite.V1.CreateSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          subscription: Google.Cloud.Pubsublite.V1.Subscription.t() | nil,
          subscription_id: String.t(),
          skip_backlog: boolean
        }

  defstruct [:parent, :subscription, :subscription_id, :skip_backlog]

  field :parent, 1, type: :string
  field :subscription, 2, type: Google.Cloud.Pubsublite.V1.Subscription
  field :subscription_id, 3, type: :string
  field :skip_backlog, 4, type: :bool
end

defmodule Google.Cloud.Pubsublite.V1.GetSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.ListSubscriptionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.ListSubscriptionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscriptions: [Google.Cloud.Pubsublite.V1.Subscription.t()],
          next_page_token: String.t()
        }

  defstruct [:subscriptions, :next_page_token]

  field :subscriptions, 1, repeated: true, type: Google.Cloud.Pubsublite.V1.Subscription
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.UpdateSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: Google.Cloud.Pubsublite.V1.Subscription.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:subscription, :update_mask]

  field :subscription, 1, type: Google.Cloud.Pubsublite.V1.Subscription
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Pubsublite.V1.DeleteSubscriptionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
