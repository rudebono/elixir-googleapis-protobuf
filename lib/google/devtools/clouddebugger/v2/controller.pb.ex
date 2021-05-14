defmodule Google.Devtools.Clouddebugger.V2.RegisterDebuggeeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggee: Google.Devtools.Clouddebugger.V2.Debuggee.t() | nil
        }

  defstruct [:debuggee]

  field :debuggee, 1, type: Google.Devtools.Clouddebugger.V2.Debuggee
end

defmodule Google.Devtools.Clouddebugger.V2.RegisterDebuggeeResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggee: Google.Devtools.Clouddebugger.V2.Debuggee.t() | nil
        }

  defstruct [:debuggee]

  field :debuggee, 1, type: Google.Devtools.Clouddebugger.V2.Debuggee
end

defmodule Google.Devtools.Clouddebugger.V2.ListActiveBreakpointsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggee_id: String.t(),
          wait_token: String.t(),
          success_on_timeout: boolean
        }

  defstruct [:debuggee_id, :wait_token, :success_on_timeout]

  field :debuggee_id, 1, type: :string
  field :wait_token, 2, type: :string
  field :success_on_timeout, 3, type: :bool
end

defmodule Google.Devtools.Clouddebugger.V2.ListActiveBreakpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          breakpoints: [Google.Devtools.Clouddebugger.V2.Breakpoint.t()],
          next_wait_token: String.t(),
          wait_expired: boolean
        }

  defstruct [:breakpoints, :next_wait_token, :wait_expired]

  field :breakpoints, 1, repeated: true, type: Google.Devtools.Clouddebugger.V2.Breakpoint
  field :next_wait_token, 2, type: :string
  field :wait_expired, 3, type: :bool
end

defmodule Google.Devtools.Clouddebugger.V2.UpdateActiveBreakpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggee_id: String.t(),
          breakpoint: Google.Devtools.Clouddebugger.V2.Breakpoint.t() | nil
        }

  defstruct [:debuggee_id, :breakpoint]

  field :debuggee_id, 1, type: :string
  field :breakpoint, 2, type: Google.Devtools.Clouddebugger.V2.Breakpoint
end

defmodule Google.Devtools.Clouddebugger.V2.UpdateActiveBreakpointResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end

defmodule Google.Devtools.Clouddebugger.V2.Controller2.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.clouddebugger.v2.Controller2"

  rpc :RegisterDebuggee,
      Google.Devtools.Clouddebugger.V2.RegisterDebuggeeRequest,
      Google.Devtools.Clouddebugger.V2.RegisterDebuggeeResponse

  rpc :ListActiveBreakpoints,
      Google.Devtools.Clouddebugger.V2.ListActiveBreakpointsRequest,
      Google.Devtools.Clouddebugger.V2.ListActiveBreakpointsResponse

  rpc :UpdateActiveBreakpoint,
      Google.Devtools.Clouddebugger.V2.UpdateActiveBreakpointRequest,
      Google.Devtools.Clouddebugger.V2.UpdateActiveBreakpointResponse
end

defmodule Google.Devtools.Clouddebugger.V2.Controller2.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Clouddebugger.V2.Controller2.Service
end
