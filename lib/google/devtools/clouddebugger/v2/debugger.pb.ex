defmodule Google.Devtools.Clouddebugger.V2.SetBreakpointRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggee_id: String.t(),
          breakpoint: Google.Devtools.Clouddebugger.V2.Breakpoint.t() | nil,
          client_version: String.t()
        }

  defstruct [:debuggee_id, :breakpoint, :client_version]

  field :debuggee_id, 1, type: :string
  field :breakpoint, 2, type: Google.Devtools.Clouddebugger.V2.Breakpoint
  field :client_version, 4, type: :string
end

defmodule Google.Devtools.Clouddebugger.V2.SetBreakpointResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          breakpoint: Google.Devtools.Clouddebugger.V2.Breakpoint.t() | nil
        }

  defstruct [:breakpoint]

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

  defstruct [:debuggee_id, :breakpoint_id, :client_version]

  field :debuggee_id, 1, type: :string
  field :breakpoint_id, 2, type: :string
  field :client_version, 4, type: :string
end

defmodule Google.Devtools.Clouddebugger.V2.GetBreakpointResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          breakpoint: Google.Devtools.Clouddebugger.V2.Breakpoint.t() | nil
        }

  defstruct [:breakpoint]

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

  defstruct [:debuggee_id, :breakpoint_id, :client_version]

  field :debuggee_id, 1, type: :string
  field :breakpoint_id, 2, type: :string
  field :client_version, 3, type: :string
end

defmodule Google.Devtools.Clouddebugger.V2.ListBreakpointsRequest.BreakpointActionValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          value: Google.Devtools.Clouddebugger.V2.Breakpoint.Action.t()
        }

  defstruct [:value]

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

  defstruct [
    :debuggee_id,
    :include_all_users,
    :include_inactive,
    :action,
    :strip_results,
    :wait_token,
    :client_version
  ]

  field :debuggee_id, 1, type: :string
  field :include_all_users, 2, type: :bool
  field :include_inactive, 3, type: :bool

  field :action, 4,
    type: Google.Devtools.Clouddebugger.V2.ListBreakpointsRequest.BreakpointActionValue

  field :strip_results, 5, type: :bool, deprecated: true
  field :wait_token, 6, type: :string
  field :client_version, 8, type: :string
end

defmodule Google.Devtools.Clouddebugger.V2.ListBreakpointsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          breakpoints: [Google.Devtools.Clouddebugger.V2.Breakpoint.t()],
          next_wait_token: String.t()
        }

  defstruct [:breakpoints, :next_wait_token]

  field :breakpoints, 1, repeated: true, type: Google.Devtools.Clouddebugger.V2.Breakpoint
  field :next_wait_token, 2, type: :string
end

defmodule Google.Devtools.Clouddebugger.V2.ListDebuggeesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project: String.t(),
          include_inactive: boolean,
          client_version: String.t()
        }

  defstruct [:project, :include_inactive, :client_version]

  field :project, 2, type: :string
  field :include_inactive, 3, type: :bool
  field :client_version, 4, type: :string
end

defmodule Google.Devtools.Clouddebugger.V2.ListDebuggeesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          debuggees: [Google.Devtools.Clouddebugger.V2.Debuggee.t()]
        }

  defstruct [:debuggees]

  field :debuggees, 1, repeated: true, type: Google.Devtools.Clouddebugger.V2.Debuggee
end
