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

  defstruct values: []

  field :values, 1, repeated: true, type: :bytes
end
defmodule Google.Cloud.Pubsublite.V1.PubSubMessage.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Pubsublite.V1.AttributeValues.t() | nil
        }

  defstruct key: "",
            value: nil

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

  defstruct key: "",
            data: "",
            attributes: %{},
            event_time: nil

  field :key, 1, type: :bytes
  field :data, 2, type: :bytes

  field :attributes, 3,
    repeated: true,
    type: Google.Cloud.Pubsublite.V1.PubSubMessage.AttributesEntry,
    map: true

  field :event_time, 4, type: Google.Protobuf.Timestamp, json_name: "eventTime"
end
defmodule Google.Cloud.Pubsublite.V1.Cursor do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset: integer
        }

  defstruct offset: 0

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

  defstruct cursor: nil,
            publish_time: nil,
            message: nil,
            size_bytes: 0

  field :cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor
  field :publish_time, 2, type: Google.Protobuf.Timestamp, json_name: "publishTime"
  field :message, 3, type: Google.Cloud.Pubsublite.V1.PubSubMessage
  field :size_bytes, 4, type: :int64, json_name: "sizeBytes"
end
defmodule Google.Cloud.Pubsublite.V1.Reservation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          throughput_capacity: integer
        }

  defstruct name: "",
            throughput_capacity: 0

  field :name, 1, type: :string
  field :throughput_capacity, 2, type: :int64, json_name: "throughputCapacity"
end
defmodule Google.Cloud.Pubsublite.V1.Topic.PartitionConfig.Capacity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          publish_mib_per_sec: integer,
          subscribe_mib_per_sec: integer
        }

  defstruct publish_mib_per_sec: 0,
            subscribe_mib_per_sec: 0

  field :publish_mib_per_sec, 1, type: :int32, json_name: "publishMibPerSec"
  field :subscribe_mib_per_sec, 2, type: :int32, json_name: "subscribeMibPerSec"
end
defmodule Google.Cloud.Pubsublite.V1.Topic.PartitionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          dimension:
            {:scale, integer}
            | {:capacity, Google.Cloud.Pubsublite.V1.Topic.PartitionConfig.Capacity.t() | nil},
          count: integer
        }

  defstruct dimension: nil,
            count: 0

  oneof :dimension, 0

  field :count, 1, type: :int64
  field :scale, 2, type: :int32, oneof: 0, deprecated: true
  field :capacity, 3, type: Google.Cloud.Pubsublite.V1.Topic.PartitionConfig.Capacity, oneof: 0
end
defmodule Google.Cloud.Pubsublite.V1.Topic.RetentionConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          per_partition_bytes: integer,
          period: Google.Protobuf.Duration.t() | nil
        }

  defstruct per_partition_bytes: 0,
            period: nil

  field :per_partition_bytes, 1, type: :int64, json_name: "perPartitionBytes"
  field :period, 2, type: Google.Protobuf.Duration
end
defmodule Google.Cloud.Pubsublite.V1.Topic.ReservationConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          throughput_reservation: String.t()
        }

  defstruct throughput_reservation: ""

  field :throughput_reservation, 1,
    type: :string,
    json_name: "throughputReservation",
    deprecated: false
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

  defstruct name: "",
            partition_config: nil,
            retention_config: nil,
            reservation_config: nil

  field :name, 1, type: :string

  field :partition_config, 2,
    type: Google.Cloud.Pubsublite.V1.Topic.PartitionConfig,
    json_name: "partitionConfig"

  field :retention_config, 3,
    type: Google.Cloud.Pubsublite.V1.Topic.RetentionConfig,
    json_name: "retentionConfig"

  field :reservation_config, 4,
    type: Google.Cloud.Pubsublite.V1.Topic.ReservationConfig,
    json_name: "reservationConfig"
end
defmodule Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          delivery_requirement:
            Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig.DeliveryRequirement.t()
        }

  defstruct delivery_requirement: :DELIVERY_REQUIREMENT_UNSPECIFIED

  field :delivery_requirement, 3,
    type: Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig.DeliveryRequirement,
    json_name: "deliveryRequirement",
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

  defstruct name: "",
            topic: "",
            delivery_config: nil

  field :name, 1, type: :string
  field :topic, 2, type: :string, deprecated: false

  field :delivery_config, 3,
    type: Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig,
    json_name: "deliveryConfig"
end
defmodule Google.Cloud.Pubsublite.V1.TimeTarget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time:
            {:publish_time, Google.Protobuf.Timestamp.t() | nil}
            | {:event_time, Google.Protobuf.Timestamp.t() | nil}
        }

  defstruct time: nil

  oneof :time, 0

  field :publish_time, 1, type: Google.Protobuf.Timestamp, json_name: "publishTime", oneof: 0
  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime", oneof: 0
end
