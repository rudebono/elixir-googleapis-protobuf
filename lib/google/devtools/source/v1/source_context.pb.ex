defmodule Google.Devtools.Source.V1.AliasContext.Kind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :ANY | :FIXED | :MOVABLE | :OTHER

  field :ANY, 0

  field :FIXED, 1

  field :MOVABLE, 2

  field :OTHER, 4
end

defmodule Google.Devtools.Source.V1.SourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: {atom, any}
        }

  defstruct [:context]

  oneof :context, 0
  field :cloud_repo, 1, type: Google.Devtools.Source.V1.CloudRepoSourceContext, oneof: 0
  field :cloud_workspace, 2, type: Google.Devtools.Source.V1.CloudWorkspaceSourceContext, oneof: 0
  field :gerrit, 3, type: Google.Devtools.Source.V1.GerritSourceContext, oneof: 0
  field :git, 6, type: Google.Devtools.Source.V1.GitSourceContext, oneof: 0
end

defmodule Google.Devtools.Source.V1.ExtendedSourceContext.LabelsEntry do
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

defmodule Google.Devtools.Source.V1.ExtendedSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context: Google.Devtools.Source.V1.SourceContext.t() | nil,
          labels: %{String.t() => String.t()}
        }

  defstruct [:context, :labels]

  field :context, 1, type: Google.Devtools.Source.V1.SourceContext

  field :labels, 2,
    repeated: true,
    type: Google.Devtools.Source.V1.ExtendedSourceContext.LabelsEntry,
    map: true
end

defmodule Google.Devtools.Source.V1.AliasContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: Google.Devtools.Source.V1.AliasContext.Kind.t(),
          name: String.t()
        }

  defstruct [:kind, :name]

  field :kind, 1, type: Google.Devtools.Source.V1.AliasContext.Kind, enum: true
  field :name, 2, type: :string
end

defmodule Google.Devtools.Source.V1.CloudRepoSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision: {atom, any},
          repo_id: Google.Devtools.Source.V1.RepoId.t() | nil
        }

  defstruct [:revision, :repo_id]

  oneof :revision, 0
  field :repo_id, 1, type: Google.Devtools.Source.V1.RepoId
  field :revision_id, 2, type: :string, oneof: 0
  field :alias_name, 3, type: :string, deprecated: true, oneof: 0
  field :alias_context, 4, type: Google.Devtools.Source.V1.AliasContext, oneof: 0
end

defmodule Google.Devtools.Source.V1.CloudWorkspaceSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workspace_id: Google.Devtools.Source.V1.CloudWorkspaceId.t() | nil,
          snapshot_id: String.t()
        }

  defstruct [:workspace_id, :snapshot_id]

  field :workspace_id, 1, type: Google.Devtools.Source.V1.CloudWorkspaceId
  field :snapshot_id, 2, type: :string
end

defmodule Google.Devtools.Source.V1.GerritSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision: {atom, any},
          host_uri: String.t(),
          gerrit_project: String.t()
        }

  defstruct [:revision, :host_uri, :gerrit_project]

  oneof :revision, 0
  field :host_uri, 1, type: :string
  field :gerrit_project, 2, type: :string
  field :revision_id, 3, type: :string, oneof: 0
  field :alias_name, 4, type: :string, deprecated: true, oneof: 0
  field :alias_context, 5, type: Google.Devtools.Source.V1.AliasContext, oneof: 0
end

defmodule Google.Devtools.Source.V1.GitSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          revision_id: String.t()
        }

  defstruct [:url, :revision_id]

  field :url, 1, type: :string
  field :revision_id, 2, type: :string
end

defmodule Google.Devtools.Source.V1.RepoId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: {atom, any}
        }

  defstruct [:id]

  oneof :id, 0
  field :project_repo_id, 1, type: Google.Devtools.Source.V1.ProjectRepoId, oneof: 0
  field :uid, 2, type: :string, oneof: 0
end

defmodule Google.Devtools.Source.V1.ProjectRepoId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          repo_name: String.t()
        }

  defstruct [:project_id, :repo_name]

  field :project_id, 1, type: :string
  field :repo_name, 2, type: :string
end

defmodule Google.Devtools.Source.V1.CloudWorkspaceId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          repo_id: Google.Devtools.Source.V1.RepoId.t() | nil,
          name: String.t()
        }

  defstruct [:repo_id, :name]

  field :repo_id, 1, type: Google.Devtools.Source.V1.RepoId
  field :name, 2, type: :string
end
