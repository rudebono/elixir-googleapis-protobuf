defmodule Google.Example.Endpointsapis.V1.Workspace do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Example.Endpointsapis.V1.ListWorkspacesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Example.Endpointsapis.V1.ListWorkspacesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          items: [Google.Example.Endpointsapis.V1.Workspace.t()],
          next_page_token: String.t()
        }

  defstruct [:items, :next_page_token]

  field :items, 1, repeated: true, type: Google.Example.Endpointsapis.V1.Workspace
  field :next_page_token, 2, type: :string
end

defmodule Google.Example.Endpointsapis.V1.GetWorkspaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Example.Endpointsapis.V1.CreateWorkspaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          workspace: Google.Example.Endpointsapis.V1.Workspace.t() | nil
        }

  defstruct [:parent, :workspace]

  field :parent, 1, type: :string
  field :workspace, 2, type: Google.Example.Endpointsapis.V1.Workspace
end

defmodule Google.Example.Endpointsapis.V1.UpdateWorkspaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          workspace: Google.Example.Endpointsapis.V1.Workspace.t() | nil
        }

  defstruct [:name, :workspace]

  field :name, 1, type: :string
  field :workspace, 2, type: Google.Example.Endpointsapis.V1.Workspace
end

defmodule Google.Example.Endpointsapis.V1.DeleteWorkspaceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Example.Endpointsapis.V1.Workspaces.Service do
  @moduledoc false
  use GRPC.Service, name: "google.example.endpointsapis.v1.Workspaces"

  rpc :ListWorkspaces,
      Google.Example.Endpointsapis.V1.ListWorkspacesRequest,
      Google.Example.Endpointsapis.V1.ListWorkspacesResponse

  rpc :GetWorkspace,
      Google.Example.Endpointsapis.V1.GetWorkspaceRequest,
      Google.Example.Endpointsapis.V1.Workspace

  rpc :CreateWorkspace,
      Google.Example.Endpointsapis.V1.CreateWorkspaceRequest,
      Google.Example.Endpointsapis.V1.Workspace

  rpc :UpdateWorkspace,
      Google.Example.Endpointsapis.V1.UpdateWorkspaceRequest,
      Google.Example.Endpointsapis.V1.Workspace

  rpc :DeleteWorkspace,
      Google.Example.Endpointsapis.V1.DeleteWorkspaceRequest,
      Google.Protobuf.Empty
end

defmodule Google.Example.Endpointsapis.V1.Workspaces.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Example.Endpointsapis.V1.Workspaces.Service
end
