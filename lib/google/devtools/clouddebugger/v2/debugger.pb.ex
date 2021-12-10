defmodule Google.Devtools.Clouddebugger.V2.SetBreakpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggee_id: String.t(),
          breakpoint: Google.Devtools.Clouddebugger.V2.Breakpoint.t() | nil,
          client_version: String.t()
        }

  defstruct debuggee_id: "",
            breakpoint: nil,
            client_version: ""

  field :debuggee_id, 1, type: :string, json_name: "debuggeeId", deprecated: false
  field :breakpoint, 2, type: Google.Devtools.Clouddebugger.V2.Breakpoint, deprecated: false
  field :client_version, 4, type: :string, json_name: "clientVersion", deprecated: false
end
defmodule Google.Devtools.Clouddebugger.V2.SetBreakpointResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          breakpoint: Google.Devtools.Clouddebugger.V2.Breakpoint.t() | nil
        }

  defstruct breakpoint: nil

  field :breakpoint, 1, type: Google.Devtools.Clouddebugger.V2.Breakpoint
end
defmodule Google.Devtools.Clouddebugger.V2.GetBreakpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggee_id: String.t(),
          breakpoint_id: String.t(),
          client_version: String.t()
        }

  defstruct debuggee_id: "",
            breakpoint_id: "",
            client_version: ""

  field :debuggee_id, 1, type: :string, json_name: "debuggeeId", deprecated: false
  field :breakpoint_id, 2, type: :string, json_name: "breakpointId", deprecated: false
  field :client_version, 4, type: :string, json_name: "clientVersion", deprecated: false
end
defmodule Google.Devtools.Clouddebugger.V2.GetBreakpointResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          breakpoint: Google.Devtools.Clouddebugger.V2.Breakpoint.t() | nil
        }

  defstruct breakpoint: nil

  field :breakpoint, 1, type: Google.Devtools.Clouddebugger.V2.Breakpoint
end
defmodule Google.Devtools.Clouddebugger.V2.DeleteBreakpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggee_id: String.t(),
          breakpoint_id: String.t(),
          client_version: String.t()
        }

  defstruct debuggee_id: "",
            breakpoint_id: "",
            client_version: ""

  field :debuggee_id, 1, type: :string, json_name: "debuggeeId", deprecated: false
  field :breakpoint_id, 2, type: :string, json_name: "breakpointId", deprecated: false
  field :client_version, 3, type: :string, json_name: "clientVersion", deprecated: false
end
defmodule Google.Devtools.Clouddebugger.V2.ListBreakpointsRequest.BreakpointActionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Devtools.Clouddebugger.V2.Breakpoint.Action.t()
        }

  defstruct value: :CAPTURE

  field :value, 1, type: Google.Devtools.Clouddebugger.V2.Breakpoint.Action, enum: true
end
defmodule Google.Devtools.Clouddebugger.V2.ListBreakpointsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggee_id: String.t(),
          include_all_users: boolean,
          include_inactive: boolean,
          action:
            Google.Devtools.Clouddebugger.V2.ListBreakpointsRequest.BreakpointActionValue.t()
            | nil,
          strip_results: boolean,
          wait_token: String.t(),
          client_version: String.t()
        }

  defstruct debuggee_id: "",
            include_all_users: false,
            include_inactive: false,
            action: nil,
            strip_results: false,
            wait_token: "",
            client_version: ""

  field :debuggee_id, 1, type: :string, json_name: "debuggeeId", deprecated: false
  field :include_all_users, 2, type: :bool, json_name: "includeAllUsers"
  field :include_inactive, 3, type: :bool, json_name: "includeInactive"

  field :action, 4,
    type: Google.Devtools.Clouddebugger.V2.ListBreakpointsRequest.BreakpointActionValue

  field :strip_results, 5, type: :bool, json_name: "stripResults", deprecated: true
  field :wait_token, 6, type: :string, json_name: "waitToken"
  field :client_version, 8, type: :string, json_name: "clientVersion", deprecated: false
end
defmodule Google.Devtools.Clouddebugger.V2.ListBreakpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          breakpoints: [Google.Devtools.Clouddebugger.V2.Breakpoint.t()],
          next_wait_token: String.t()
        }

  defstruct breakpoints: [],
            next_wait_token: ""

  field :breakpoints, 1, repeated: true, type: Google.Devtools.Clouddebugger.V2.Breakpoint
  field :next_wait_token, 2, type: :string, json_name: "nextWaitToken"
end
defmodule Google.Devtools.Clouddebugger.V2.ListDebuggeesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          include_inactive: boolean,
          client_version: String.t()
        }

  defstruct project: "",
            include_inactive: false,
            client_version: ""

  field :project, 2, type: :string, deprecated: false
  field :include_inactive, 3, type: :bool, json_name: "includeInactive"
  field :client_version, 4, type: :string, json_name: "clientVersion", deprecated: false
end
defmodule Google.Devtools.Clouddebugger.V2.ListDebuggeesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggees: [Google.Devtools.Clouddebugger.V2.Debuggee.t()]
        }

  defstruct debuggees: []

  field :debuggees, 1, repeated: true, type: Google.Devtools.Clouddebugger.V2.Debuggee
end
defmodule Google.Devtools.Clouddebugger.V2.Debugger2.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.clouddebugger.v2.Debugger2"

  rpc :SetBreakpoint,
      Google.Devtools.Clouddebugger.V2.SetBreakpointRequest,
      Google.Devtools.Clouddebugger.V2.SetBreakpointResponse

  rpc :GetBreakpoint,
      Google.Devtools.Clouddebugger.V2.GetBreakpointRequest,
      Google.Devtools.Clouddebugger.V2.GetBreakpointResponse

  rpc :DeleteBreakpoint,
      Google.Devtools.Clouddebugger.V2.DeleteBreakpointRequest,
      Google.Protobuf.Empty

  rpc :ListBreakpoints,
      Google.Devtools.Clouddebugger.V2.ListBreakpointsRequest,
      Google.Devtools.Clouddebugger.V2.ListBreakpointsResponse

  rpc :ListDebuggees,
      Google.Devtools.Clouddebugger.V2.ListDebuggeesRequest,
      Google.Devtools.Clouddebugger.V2.ListDebuggeesResponse
end

defmodule Google.Devtools.Clouddebugger.V2.Debugger2.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Devtools.Clouddebugger.V2.Debugger2.Service
end
