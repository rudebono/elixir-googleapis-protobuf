defmodule Google.Example.Showcase.V1beta3.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNNECESSARY | :NECESSARY | :URGENT | :CRITICAL

  field :UNNECESSARY, 0
  field :NECESSARY, 1
  field :URGENT, 2
  field :CRITICAL, 3
end
defmodule Google.Example.Showcase.V1beta3.EchoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {:content, String.t()} | {:error, Google.Rpc.Status.t() | nil},
          severity: Google.Example.Showcase.V1beta3.Severity.t()
        }

  defstruct response: nil,
            severity: :UNNECESSARY

  oneof :response, 0

  field :content, 1, type: :string, oneof: 0
  field :error, 2, type: Google.Rpc.Status, oneof: 0
  field :severity, 3, type: Google.Example.Showcase.V1beta3.Severity, enum: true
end
defmodule Google.Example.Showcase.V1beta3.EchoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          severity: Google.Example.Showcase.V1beta3.Severity.t()
        }

  defstruct content: "",
            severity: :UNNECESSARY

  field :content, 1, type: :string
  field :severity, 2, type: Google.Example.Showcase.V1beta3.Severity, enum: true
end
defmodule Google.Example.Showcase.V1beta3.ExpandRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          error: Google.Rpc.Status.t() | nil
        }

  defstruct content: "",
            error: nil

  field :content, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
end
defmodule Google.Example.Showcase.V1beta3.PagedExpandRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct content: "",
            page_size: 0,
            page_token: ""

  field :content, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Example.Showcase.V1beta3.PagedExpandResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          responses: [Google.Example.Showcase.V1beta3.EchoResponse.t()],
          next_page_token: String.t()
        }

  defstruct responses: [],
            next_page_token: ""

  field :responses, 1, repeated: true, type: Google.Example.Showcase.V1beta3.EchoResponse
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Example.Showcase.V1beta3.WaitRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          end:
            {:end_time, Google.Protobuf.Timestamp.t() | nil}
            | {:ttl, Google.Protobuf.Duration.t() | nil},
          response:
            {:error, Google.Rpc.Status.t() | nil}
            | {:success, Google.Example.Showcase.V1beta3.WaitResponse.t() | nil}
        }

  defstruct end: nil,
            response: nil

  oneof :end, 0
  oneof :response, 1

  field :end_time, 1, type: Google.Protobuf.Timestamp, json_name: "endTime", oneof: 0
  field :ttl, 4, type: Google.Protobuf.Duration, oneof: 0
  field :error, 2, type: Google.Rpc.Status, oneof: 1
  field :success, 3, type: Google.Example.Showcase.V1beta3.WaitResponse, oneof: 1
end
defmodule Google.Example.Showcase.V1beta3.WaitResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t()
        }

  defstruct content: ""

  field :content, 1, type: :string
end
defmodule Google.Example.Showcase.V1beta3.BlockRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response:
            {:error, Google.Rpc.Status.t() | nil}
            | {:success, Google.Example.Showcase.V1beta3.BlockResponse.t() | nil},
          response_delay: Google.Protobuf.Duration.t() | nil
        }

  defstruct response: nil,
            response_delay: nil

  oneof :response, 0

  field :error, 2, type: Google.Rpc.Status, oneof: 0
  field :success, 3, type: Google.Example.Showcase.V1beta3.BlockResponse, oneof: 0
  field :response_delay, 1, type: Google.Protobuf.Duration, json_name: "responseDelay"
end
defmodule Google.Example.Showcase.V1beta3.BlockResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t()
        }

  defstruct content: ""

  field :content, 1, type: :string
end
defmodule Google.Example.Showcase.V1beta3.Echo.Service do
  @moduledoc false
  use GRPC.Service, name: "google.example.showcase.v1beta3.Echo"

  rpc :Echo,
      Google.Example.Showcase.V1beta3.EchoRequest,
      Google.Example.Showcase.V1beta3.EchoResponse

  rpc :Expand,
      Google.Example.Showcase.V1beta3.ExpandRequest,
      stream(Google.Example.Showcase.V1beta3.EchoResponse)

  rpc :Collect,
      stream(Google.Example.Showcase.V1beta3.EchoRequest),
      Google.Example.Showcase.V1beta3.EchoResponse

  rpc :Chat,
      stream(Google.Example.Showcase.V1beta3.EchoRequest),
      stream(Google.Example.Showcase.V1beta3.EchoResponse)

  rpc :PagedExpand,
      Google.Example.Showcase.V1beta3.PagedExpandRequest,
      Google.Example.Showcase.V1beta3.PagedExpandResponse

  rpc :Wait, Google.Example.Showcase.V1beta3.WaitRequest, Google.Longrunning.Operation

  rpc :Block,
      Google.Example.Showcase.V1beta3.BlockRequest,
      Google.Example.Showcase.V1beta3.BlockResponse
end

defmodule Google.Example.Showcase.V1beta3.Echo.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Example.Showcase.V1beta3.Echo.Service
end
