defmodule Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig.DeliveryRequirement do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DELIVERY_REQUIREMENT_UNSPECIFIED, 0
  field :DELIVER_IMMEDIATELY, 1
  field :DELIVER_AFTER_STORED, 2
end

defmodule Google.Cloud.Pubsublite.V1.ExportConfig.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
  
  field :STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :PAUSED, 2
end

defmodule Google.Cloud.Pubsublite.V1.AttributeValues do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :values, 1, repeated: true, type: :bytes
end

defmodule Google.Cloud.Pubsublite.V1.PubSubMessage.AttributesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Pubsublite.V1.AttributeValues
end

defmodule Google.Cloud.Pubsublite.V1.PubSubMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :offset, 1, type: :int64
end

defmodule Google.Cloud.Pubsublite.V1.SequencedMessage do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor
  field :publish_time, 2, type: Google.Protobuf.Timestamp, json_name: "publishTime"
  field :message, 3, type: Google.Cloud.Pubsublite.V1.PubSubMessage
  field :size_bytes, 4, type: :int64, json_name: "sizeBytes"
end

defmodule Google.Cloud.Pubsublite.V1.Reservation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :throughput_capacity, 2, type: :int64, json_name: "throughputCapacity"
end

defmodule Google.Cloud.Pubsublite.V1.Topic.PartitionConfig.Capacity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :publish_mib_per_sec, 1, type: :int32, json_name: "publishMibPerSec"
  field :subscribe_mib_per_sec, 2, type: :int32, json_name: "subscribeMibPerSec"
end

defmodule Google.Cloud.Pubsublite.V1.Topic.PartitionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :dimension, 0

  field :count, 1, type: :int64
  field :scale, 2, type: :int32, oneof: 0, deprecated: true
  field :capacity, 3, type: Google.Cloud.Pubsublite.V1.Topic.PartitionConfig.Capacity, oneof: 0
end

defmodule Google.Cloud.Pubsublite.V1.Topic.RetentionConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :per_partition_bytes, 1, type: :int64, json_name: "perPartitionBytes"
  field :period, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Pubsublite.V1.Topic.ReservationConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :throughput_reservation, 1,
    type: :string,
    json_name: "throughputReservation",
    deprecated: false
end

defmodule Google.Cloud.Pubsublite.V1.Topic do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :delivery_requirement, 3,
    type: Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig.DeliveryRequirement,
    json_name: "deliveryRequirement",
    enum: true
end

defmodule Google.Cloud.Pubsublite.V1.Subscription do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :topic, 2, type: :string, deprecated: false

  field :delivery_config, 3,
    type: Google.Cloud.Pubsublite.V1.Subscription.DeliveryConfig,
    json_name: "deliveryConfig"

  field :export_config, 4,
    type: Google.Cloud.Pubsublite.V1.ExportConfig,
    json_name: "exportConfig"
end

defmodule Google.Cloud.Pubsublite.V1.ExportConfig.PartitionStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partition, 1, type: :int64
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Pubsublite.V1.ExportConfig.PubSubConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :topic, 1, type: :string
end

defmodule Google.Cloud.Pubsublite.V1.ExportConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :desired_state, 1,
    type: Google.Cloud.Pubsublite.V1.ExportConfig.State,
    json_name: "desiredState",
    enum: true

  field :statuses, 4,
    repeated: true,
    type: Google.Cloud.Pubsublite.V1.ExportConfig.PartitionStatus,
    deprecated: false

  field :dead_letter_topic, 5, type: :string, json_name: "deadLetterTopic", deprecated: false

  field :pubsub_config, 3,
    type: Google.Cloud.Pubsublite.V1.ExportConfig.PubSubConfig,
    json_name: "pubsubConfig",
    oneof: 0
end

defmodule Google.Cloud.Pubsublite.V1.TimeTarget do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :time, 0

  field :publish_time, 1, type: Google.Protobuf.Timestamp, json_name: "publishTime", oneof: 0
  field :event_time, 2, type: Google.Protobuf.Timestamp, json_name: "eventTime", oneof: 0
end