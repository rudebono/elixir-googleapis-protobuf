defmodule Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig.DeliveryRequirement do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DELIVERY_REQUIREMENT_UNSPECIFIED
          | :DELIVER_IMMEDIATELY
          | :DELIVER_AFTER_STORED

  field :DELIVERY_REQUIREMENT_UNSPECIFIED, 0

  field :DELIVER_IMMEDIATELY, 1

  field :DELIVER_AFTER_STORED, 2
end

defmodule Google.Cloud.Pubsublite.V1.AttributeValues do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          values: [binary]
        }

  defstruct [:values]

  field :values, 1, repeated: true, type: :bytes
end

defmodule Google.Cloud.Pubsublite.V1.PubSubMessage.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Pubsublite.V1.AttributeValues.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Pubsublite.V1.AttributeValues
end

defmodule Google.Cloud.Pubsublite.V1.PubSubMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: binary,
          data: binary,
          attributes: %{String.t() => Google.Cloud.Pubsublite.V1.AttributeValues.t() | nil},
          event_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:key, :data, :attributes, :event_time]

  field :key, 1, type: :bytes
  field :data, 2, type: :bytes

  field :attributes, 3,
    repeated: true,
    type: Google.Cloud.Pubsublite.V1.PubSubMessage.AttributesEntry,
    map: true

  field :event_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Pubsublite.V1.Cursor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset: integer
        }

  defstruct [:offset]

  field :offset, 1, type: :int64
end

defmodule Google.Cloud.Pubsublite.V1.SequencedMessage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil,
          publish_time: Google.Protobuf.Timestamp.t() | nil,
          message: Google.Cloud.Pubsublite.V1.PubSubMessage.t() | nil,
          size_bytes: integer
        }

  defstruct [:cursor, :publish_time, :message, :size_bytes]

  field :cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor
  field :publish_time, 2, type: Google.Protobuf.Timestamp
  field :message, 3, type: Google.Cloud.Pubsublite.V1.PubSubMessage
  field :size_bytes, 4, type: :int64
end

defmodule Google.Cloud.Pubsublite.V1.Reservation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          throughput_capacity: integer
        }

  defstruct [:name, :throughput_capacity]

  field :name, 1, type: :string
  field :throughput_capacity, 2, type: :int64
end

defmodule Google.Cloud.Pubsublite.V1.Topic.PartitionConfig.Capacity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          publish_mib_per_sec: integer,
          subscribe_mib_per_sec: integer
        }

  defstruct [:publish_mib_per_sec, :subscribe_mib_per_sec]

  field :publish_mib_per_sec, 1, type: :int32
  field :subscribe_mib_per_sec, 2, type: :int32
end

defmodule Google.Cloud.Pubsublite.V1.Topic.PartitionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension: {atom, any},
          count: integer
        }

  defstruct [:dimension, :count]

  oneof :dimension, 0
  field :count, 1, type: :int64
  field :scale, 2, type: :int32, deprecated: true, oneof: 0
  field :capacity, 3, type: Google.Cloud.Pubsublite.V1.Topic.PartitionConfig.Capacity, oneof: 0
end

defmodule Google.Cloud.Pubsublite.V1.Topic.RetentionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          per_partition_bytes: integer,
          period: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:per_partition_bytes, :period]

  field :per_partition_bytes, 1, type: :int64
  field :period, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Pubsublite.V1.Topic.ReservationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          throughput_reservation: String.t()
        }

  defstruct [:throughput_reservation]

  field :throughput_reservation, 1, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.Topic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          partition_config: Google.Cloud.Pubsublite.V1.Topic.PartitionConfig.t() | nil,
          retention_config: Google.Cloud.Pubsublite.V1.Topic.RetentionConfig.t() | nil,
          reservation_config: Google.Cloud.Pubsublite.V1.Topic.ReservationConfig.t() | nil
        }

  defstruct [:name, :partition_config, :retention_config, :reservation_config]

  field :name, 1, type: :string
  field :partition_config, 2, type: Google.Cloud.Pubsublite.V1.Topic.PartitionConfig
  field :retention_config, 3, type: Google.Cloud.Pubsublite.V1.Topic.RetentionConfig
  field :reservation_config, 4, type: Google.Cloud.Pubsublite.V1.Topic.ReservationConfig
end

defmodule Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          delivery_requirement:
            Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig.DeliveryRequirement.t()
        }

  defstruct [:delivery_requirement]

  field :delivery_requirement, 3,
    type: Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig.DeliveryRequirement,
    enum: true
end

defmodule Google.Cloud.Pubsublite.V1.Subscription do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          topic: String.t(),
          delivery_config: Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig.t() | nil
        }

  defstruct [:name, :topic, :delivery_config]

  field :name, 1, type: :string
  field :topic, 2, type: :string
  field :delivery_config, 3, type: Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig
end

defmodule Google.Cloud.Pubsublite.V1.TimeTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: {atom, any}
        }

  defstruct [:time]

  oneof :time, 0
  field :publish_time, 1, type: Google.Protobuf.Timestamp, oneof: 0
  field :event_time, 2, type: Google.Protobuf.Timestamp, oneof: 0
end
