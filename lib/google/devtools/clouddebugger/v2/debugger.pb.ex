defmodule Google.Devtools.Clouddebugger.V2.SetBreakpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :debuggee_id, 1, type: :string, json_name: "debuggeeId", deprecated: false
  field :breakpoint, 2, type: Google.Devtools.Clouddebugger.V2.Breakpoint, deprecated: false
  field :client_version, 4, type: :string, json_name: "clientVersion", deprecated: false
end
defmodule Google.Devtools.Clouddebugger.V2.SetBreakpointResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :breakpoint, 1, type: Google.Devtools.Clouddebugger.V2.Breakpoint
end
defmodule Google.Devtools.Clouddebugger.V2.GetBreakpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :debuggee_id, 1, type: :string, json_name: "debuggeeId", deprecated: false
  field :breakpoint_id, 2, type: :string, json_name: "breakpointId", deprecated: false
  field :client_version, 4, type: :string, json_name: "clientVersion", deprecated: false
end
defmodule Google.Devtools.Clouddebugger.V2.GetBreakpointResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :breakpoint, 1, type: Google.Devtools.Clouddebugger.V2.Breakpoint
end
defmodule Google.Devtools.Clouddebugger.V2.DeleteBreakpointRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :debuggee_id, 1, type: :string, json_name: "debuggeeId", deprecated: false
  field :breakpoint_id, 2, type: :string, json_name: "breakpointId", deprecated: false
  field :client_version, 3, type: :string, json_name: "clientVersion", deprecated: false
end
defmodule Google.Devtools.Clouddebugger.V2.ListBreakpointsRequest.BreakpointActionValue do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :value, 1, type: Google.Devtools.Clouddebugger.V2.Breakpoint.Action, enum: true
end
defmodule Google.Devtools.Clouddebugger.V2.ListBreakpointsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :breakpoints, 1, repeated: true, type: Google.Devtools.Clouddebugger.V2.Breakpoint
  field :next_wait_token, 2, type: :string, json_name: "nextWaitToken"
end
defmodule Google.Devtools.Clouddebugger.V2.ListDebuggeesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :project, 2, type: :string, deprecated: false
  field :include_inactive, 3, type: :bool, json_name: "includeInactive"
  field :client_version, 4, type: :string, json_name: "clientVersion", deprecated: false
end
defmodule Google.Devtools.Clouddebugger.V2.ListDebuggeesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :debuggees, 1, repeated: true, type: Google.Devtools.Clouddebugger.V2.Debuggee
end
defmodule Google.Devtools.Clouddebugger.V2.Debugger2.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.devtools.clouddebugger.v2.Debugger2",
    protoc_gen_elixir_version: "0.10.0"

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
