defmodule Google.Example.Showcase.V1beta1.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNNECESSARY | :NECESSARY | :URGENT | :CRITICAL

  field :UNNECESSARY, 0

  field :NECESSARY, 1

  field :URGENT, 2

  field :CRITICAL, 3
end

defmodule Google.Example.Showcase.V1beta1.EchoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any},
          severity: Google.Example.Showcase.V1beta1.Severity.t()
        }

  defstruct [:response, :severity]

  oneof :response, 0
  field :content, 1, type: :string, oneof: 0
  field :error, 2, type: Google.Rpc.Status, oneof: 0
  field :severity, 3, type: Google.Example.Showcase.V1beta1.Severity, enum: true
end

defmodule Google.Example.Showcase.V1beta1.EchoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          severity: Google.Example.Showcase.V1beta1.Severity.t()
        }

  defstruct [:content, :severity]

  field :content, 1, type: :string
  field :severity, 2, type: Google.Example.Showcase.V1beta1.Severity, enum: true
end

defmodule Google.Example.Showcase.V1beta1.ExpandRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          error: Google.Rpc.Status.t() | nil
        }

  defstruct [:content, :error]

  field :content, 1, type: :string
  field :error, 2, type: Google.Rpc.Status
end

defmodule Google.Example.Showcase.V1beta1.PagedExpandRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:content, :page_size, :page_token]

  field :content, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Example.Showcase.V1beta1.PagedExpandResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          responses: [Google.Example.Showcase.V1beta1.EchoResponse.t()],
          next_page_token: String.t()
        }

  defstruct [:responses, :next_page_token]

  field :responses, 1, repeated: true, type: Google.Example.Showcase.V1beta1.EchoResponse
  field :next_page_token, 2, type: :string
end

defmodule Google.Example.Showcase.V1beta1.WaitRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          end: {atom, any},
          response: {atom, any}
        }

  defstruct [:end, :response]

  oneof :end, 0
  oneof :response, 1
  field :end_time, 1, type: Google.Protobuf.Timestamp, oneof: 0
  field :ttl, 4, type: Google.Protobuf.Duration, oneof: 0
  field :error, 2, type: Google.Rpc.Status, oneof: 1
  field :success, 3, type: Google.Example.Showcase.V1beta1.WaitResponse, oneof: 1
end

defmodule Google.Example.Showcase.V1beta1.WaitResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t()
        }

  defstruct [:content]

  field :content, 1, type: :string
end

defmodule Google.Example.Showcase.V1beta1.BlockRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response: {atom, any},
          response_delay: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:response, :response_delay]

  oneof :response, 0
  field :response_delay, 1, type: Google.Protobuf.Duration
  field :error, 2, type: Google.Rpc.Status, oneof: 0
  field :success, 3, type: Google.Example.Showcase.V1beta1.BlockResponse, oneof: 0
end

defmodule Google.Example.Showcase.V1beta1.BlockResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t()
        }

  defstruct [:content]

  field :content, 1, type: :string
end

defmodule Google.Example.Showcase.V1beta1.Echo.Service do
  @moduledoc false
  use GRPC.Service, name: "google.example.showcase.v1beta1.Echo"

  rpc :Echo,
      Google.Example.Showcase.V1beta1.EchoRequest,
      Google.Example.Showcase.V1beta1.EchoResponse

  rpc :Expand,
      Google.Example.Showcase.V1beta1.ExpandRequest,
      stream(Google.Example.Showcase.V1beta1.EchoResponse)

  rpc :Collect,
      stream(Google.Example.Showcase.V1beta1.EchoRequest),
      Google.Example.Showcase.V1beta1.EchoResponse

  rpc :Chat,
      stream(Google.Example.Showcase.V1beta1.EchoRequest),
      stream(Google.Example.Showcase.V1beta1.EchoResponse)

  rpc :PagedExpand,
      Google.Example.Showcase.V1beta1.PagedExpandRequest,
      Google.Example.Showcase.V1beta1.PagedExpandResponse

  rpc :Wait, Google.Example.Showcase.V1beta1.WaitRequest, Google.Longrunning.Operation

  rpc :Block,
      Google.Example.Showcase.V1beta1.BlockRequest,
      Google.Example.Showcase.V1beta1.BlockResponse
end

defmodule Google.Example.Showcase.V1beta1.Echo.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Example.Showcase.V1beta1.Echo.Service
end
