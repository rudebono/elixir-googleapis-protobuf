defmodule Google.Cloud.Pubsublite.V1.SeekRequest.NamedTarget do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :NAMED_TARGET_UNSPECIFIED | :HEAD | :COMMITTED_CURSOR

  field :NAMED_TARGET_UNSPECIFIED, 0
  field :HEAD, 1
  field :COMMITTED_CURSOR, 2
end

defmodule Google.Cloud.Pubsublite.V1.InitialSubscribeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          partition: integer,
          initial_location: Google.Cloud.Pubsublite.V1.SeekRequest.t() | nil
        }

  defstruct [:subscription, :partition, :initial_location]

  field :subscription, 1, type: :string
  field :partition, 2, type: :int64

  field :initial_location, 4,
    type: Google.Cloud.Pubsublite.V1.SeekRequest,
    json_name: "initialLocation"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.InitialSubscribeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct [:cursor]

  field :cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.SeekRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target:
            {:named_target, Google.Cloud.Pubsublite.V1.SeekRequest.NamedTarget.t()}
            | {:cursor, Google.Cloud.Pubsublite.V1.Cursor.t() | nil}
        }

  defstruct [:target]

  oneof :target, 0

  field :named_target, 1,
    type: Google.Cloud.Pubsublite.V1.SeekRequest.NamedTarget,
    enum: true,
    json_name: "namedTarget",
    oneof: 0

  field :cursor, 2, type: Google.Cloud.Pubsublite.V1.Cursor, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.SeekResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          cursor: Google.Cloud.Pubsublite.V1.Cursor.t() | nil
        }

  defstruct [:cursor]

  field :cursor, 1, type: Google.Cloud.Pubsublite.V1.Cursor

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.FlowControlRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_messages: integer,
          allowed_bytes: integer
        }

  defstruct [:allowed_messages, :allowed_bytes]

  field :allowed_messages, 1, type: :int64, json_name: "allowedMessages"
  field :allowed_bytes, 2, type: :int64, json_name: "allowedBytes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.SubscribeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request:
            {:initial, Google.Cloud.Pubsublite.V1.InitialSubscribeRequest.t() | nil}
            | {:seek, Google.Cloud.Pubsublite.V1.SeekRequest.t() | nil}
            | {:flow_control, Google.Cloud.Pubsublite.V1.FlowControlRequest.t() | nil}
        }

  defstruct [:request]

  oneof :request, 0

  field :initial, 1, type: Google.Cloud.Pubsublite.V1.InitialSubscribeRequest, oneof: 0
  field :seek, 2, type: Google.Cloud.Pubsublite.V1.SeekRequest, oneof: 0

  field :flow_control, 3,
    type: Google.Cloud.Pubsublite.V1.FlowControlRequest,
    json_name: "flowControl",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.MessageResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          messages: [Google.Cloud.Pubsublite.V1.SequencedMessage.t()]
        }

  defstruct [:messages]

  field :messages, 1, repeated: true, type: Google.Cloud.Pubsublite.V1.SequencedMessage

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.SubscribeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response:
            {:initial, Google.Cloud.Pubsublite.V1.InitialSubscribeResponse.t() | nil}
            | {:seek, Google.Cloud.Pubsublite.V1.SeekResponse.t() | nil}
            | {:messages, Google.Cloud.Pubsublite.V1.MessageResponse.t() | nil}
        }

  defstruct [:response]

  oneof :response, 0

  field :initial, 1, type: Google.Cloud.Pubsublite.V1.InitialSubscribeResponse, oneof: 0
  field :seek, 2, type: Google.Cloud.Pubsublite.V1.SeekResponse, oneof: 0
  field :messages, 3, type: Google.Cloud.Pubsublite.V1.MessageResponse, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.InitialPartitionAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          client_id: binary
        }

  defstruct [:subscription, :client_id]

  field :subscription, 1, type: :string
  field :client_id, 2, type: :bytes, json_name: "clientId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.PartitionAssignment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partitions: [integer]
        }

  defstruct [:partitions]

  field :partitions, 1, repeated: true, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.PartitionAssignmentAck do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.PartitionAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request:
            {:initial, Google.Cloud.Pubsublite.V1.InitialPartitionAssignmentRequest.t() | nil}
            | {:ack, Google.Cloud.Pubsublite.V1.PartitionAssignmentAck.t() | nil}
        }

  defstruct [:request]

  oneof :request, 0

  field :initial, 1, type: Google.Cloud.Pubsublite.V1.InitialPartitionAssignmentRequest, oneof: 0
  field :ack, 2, type: Google.Cloud.Pubsublite.V1.PartitionAssignmentAck, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Pubsublite.V1.SubscriberService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.pubsublite.v1.SubscriberService"

  rpc :Subscribe,
      stream(Google.Cloud.Pubsublite.V1.SubscribeRequest),
      stream(Google.Cloud.Pubsublite.V1.SubscribeResponse)
end

defmodule Google.Cloud.Pubsublite.V1.SubscriberService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Pubsublite.V1.SubscriberService.Service
end

defmodule Google.Cloud.Pubsublite.V1.PartitionAssignmentService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.pubsublite.v1.PartitionAssignmentService"

  rpc :AssignPartitions,
      stream(Google.Cloud.Pubsublite.V1.PartitionAssignmentRequest),
      stream(Google.Cloud.Pubsublite.V1.PartitionAssignment)
end

defmodule Google.Cloud.Pubsublite.V1.PartitionAssignmentService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Pubsublite.V1.PartitionAssignmentService.Service
end
