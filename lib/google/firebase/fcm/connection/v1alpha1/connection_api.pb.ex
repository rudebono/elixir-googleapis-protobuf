defmodule Google.Firebase.Fcm.Connection.V1alpha1.UpstreamRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_type: {:ack, Google.Firebase.Fcm.Connection.V1alpha1.Ack.t() | nil}
        }

  defstruct request_type: nil

  oneof :request_type, 0

  field :ack, 1, type: Google.Firebase.Fcm.Connection.V1alpha1.Ack, oneof: 0
end
defmodule Google.Firebase.Fcm.Connection.V1alpha1.DownstreamResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_type: {:message, Google.Firebase.Fcm.Connection.V1alpha1.Message.t() | nil}
        }

  defstruct response_type: nil

  oneof :response_type, 0

  field :message, 1, type: Google.Firebase.Fcm.Connection.V1alpha1.Message, oneof: 0
end
defmodule Google.Firebase.Fcm.Connection.V1alpha1.Ack do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_id: String.t()
        }

  defstruct message_id: ""

  field :message_id, 1, type: :string, json_name: "messageId"
end
defmodule Google.Firebase.Fcm.Connection.V1alpha1.Message.DataEntry do
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
defmodule Google.Firebase.Fcm.Connection.V1alpha1.Message do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          expire_time: Google.Protobuf.Timestamp.t() | nil,
          data: %{String.t() => String.t()}
        }

  defstruct message_id: "",
            create_time: nil,
            expire_time: nil,
            data: %{}

  field :message_id, 1, type: :string, json_name: "messageId"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"

  field :data, 4,
    repeated: true,
    type: Google.Firebase.Fcm.Connection.V1alpha1.Message.DataEntry,
    map: true
end
defmodule Google.Firebase.Fcm.Connection.V1alpha1.ConnectionApi.Service do
  @moduledoc false
  use GRPC.Service, name: "google.firebase.fcm.connection.v1alpha1.ConnectionApi"

  rpc :Connect,
      stream(Google.Firebase.Fcm.Connection.V1alpha1.UpstreamRequest),
      stream(Google.Firebase.Fcm.Connection.V1alpha1.DownstreamResponse)
end

defmodule Google.Firebase.Fcm.Connection.V1alpha1.ConnectionApi.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Firebase.Fcm.Connection.V1alpha1.ConnectionApi.Service
end
