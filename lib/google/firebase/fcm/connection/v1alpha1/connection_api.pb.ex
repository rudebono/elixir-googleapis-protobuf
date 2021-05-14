defmodule Google.Firebase.Fcm.Connection.V1alpha1.UpstreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_type: {atom, any}
        }

  defstruct [:request_type]

  oneof :request_type, 0
  field :ack, 1, type: Google.Firebase.Fcm.Connection.V1alpha1.Ack, oneof: 0
end

defmodule Google.Firebase.Fcm.Connection.V1alpha1.DownstreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_type: {atom, any}
        }

  defstruct [:response_type]

  oneof :response_type, 0
  field :message, 1, type: Google.Firebase.Fcm.Connection.V1alpha1.Message, oneof: 0
end

defmodule Google.Firebase.Fcm.Connection.V1alpha1.Ack do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_id: String.t()
        }

  defstruct [:message_id]

  field :message_id, 1, type: :string
end

defmodule Google.Firebase.Fcm.Connection.V1alpha1.Message.DataEntry do
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

defmodule Google.Firebase.Fcm.Connection.V1alpha1.Message do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          data: %{String.t() => String.t()}
        }

  defstruct [:message_id, :create_time, :expire_time, :data]

  field :message_id, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :expire_time, 3, type: Google.Protobuf.Timestamp

  field :data, 4,
    repeated: true,
    type: Google.Firebase.Fcm.Connection.V1alpha1.Message.DataEntry,
    map: true
end
