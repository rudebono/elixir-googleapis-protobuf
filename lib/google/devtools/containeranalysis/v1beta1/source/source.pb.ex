defmodule Grafeas.V1beta1.Source.AliasContext.Kind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :KIND_UNSPECIFIED | :FIXED | :MOVABLE | :OTHER

  field :KIND_UNSPECIFIED, 0
  field :FIXED, 1
  field :MOVABLE, 2
  field :OTHER, 4
end
defmodule Grafeas.V1beta1.Source.SourceContext.LabelsEntry do
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
defmodule Grafeas.V1beta1.Source.SourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context:
            {:cloud_repo, Grafeas.V1beta1.Source.CloudRepoSourceContext.t() | nil}
            | {:gerrit, Grafeas.V1beta1.Source.GerritSourceContext.t() | nil}
            | {:git, Grafeas.V1beta1.Source.GitSourceContext.t() | nil},
          labels: %{String.t() => String.t()}
        }

  defstruct context: nil,
            labels: %{}

  oneof :context, 0

  field :cloud_repo, 1,
    type: Grafeas.V1beta1.Source.CloudRepoSourceContext,
    json_name: "cloudRepo",
    oneof: 0

  field :gerrit, 2, type: Grafeas.V1beta1.Source.GerritSourceContext, oneof: 0
  field :git, 3, type: Grafeas.V1beta1.Source.GitSourceContext, oneof: 0

  field :labels, 4,
    repeated: true,
    type: Grafeas.V1beta1.Source.SourceContext.LabelsEntry,
    map: true
end
defmodule Grafeas.V1beta1.Source.AliasContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: Grafeas.V1beta1.Source.AliasContext.Kind.t(),
          name: String.t()
        }

  defstruct kind: :KIND_UNSPECIFIED,
            name: ""

  field :kind, 1, type: Grafeas.V1beta1.Source.AliasContext.Kind, enum: true
  field :name, 2, type: :string
end
defmodule Grafeas.V1beta1.Source.CloudRepoSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision:
            {:revision_id, String.t()}
            | {:alias_context, Grafeas.V1beta1.Source.AliasContext.t() | nil},
          repo_id: Grafeas.V1beta1.Source.RepoId.t() | nil
        }

  defstruct revision: nil,
            repo_id: nil

  oneof :revision, 0

  field :repo_id, 1, type: Grafeas.V1beta1.Source.RepoId, json_name: "repoId"
  field :revision_id, 2, type: :string, json_name: "revisionId", oneof: 0

  field :alias_context, 3,
    type: Grafeas.V1beta1.Source.AliasContext,
    json_name: "aliasContext",
    oneof: 0
end
defmodule Grafeas.V1beta1.Source.GerritSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision:
            {:revision_id, String.t()}
            | {:alias_context, Grafeas.V1beta1.Source.AliasContext.t() | nil},
          host_uri: String.t(),
          gerrit_project: String.t()
        }

  defstruct revision: nil,
            host_uri: "",
            gerrit_project: ""

  oneof :revision, 0

  field :host_uri, 1, type: :string, json_name: "hostUri"
  field :gerrit_project, 2, type: :string, json_name: "gerritProject"
  field :revision_id, 3, type: :string, json_name: "revisionId", oneof: 0

  field :alias_context, 4,
    type: Grafeas.V1beta1.Source.AliasContext,
    json_name: "aliasContext",
    oneof: 0
end
defmodule Grafeas.V1beta1.Source.GitSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          revision_id: String.t()
        }

  defstruct url: "",
            revision_id: ""

  field :url, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId"
end
defmodule Grafeas.V1beta1.Source.RepoId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id:
            {:project_repo_id, Grafeas.V1beta1.Source.ProjectRepoId.t() | nil}
            | {:uid, String.t()}
        }

  defstruct id: nil

  oneof :id, 0

  field :project_repo_id, 1,
    type: Grafeas.V1beta1.Source.ProjectRepoId,
    json_name: "projectRepoId",
    oneof: 0

  field :uid, 2, type: :string, oneof: 0
end
defmodule Grafeas.V1beta1.Source.ProjectRepoId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          repo_name: String.t()
        }

  defstruct project_id: "",
            repo_name: ""

  field :project_id, 1, type: :string, json_name: "projectId"
  field :repo_name, 2, type: :string, json_name: "repoName"
end
