defmodule Google.Devtools.Source.V1.AliasContext.Kind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ANY, 0
  field :FIXED, 1
  field :MOVABLE, 2
  field :OTHER, 4
end

defmodule Google.Devtools.Source.V1.SourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :context, 0

  field :cloud_repo, 1,
    type: Google.Devtools.Source.V1.CloudRepoSourceContext,
    json_name: "cloudRepo",
    oneof: 0

  field :cloud_workspace, 2,
    type: Google.Devtools.Source.V1.CloudWorkspaceSourceContext,
    json_name: "cloudWorkspace",
    oneof: 0

  field :gerrit, 3, type: Google.Devtools.Source.V1.GerritSourceContext, oneof: 0
  field :git, 6, type: Google.Devtools.Source.V1.GitSourceContext, oneof: 0
end

defmodule Google.Devtools.Source.V1.ExtendedSourceContext.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Source.V1.ExtendedSourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :context, 1, type: Google.Devtools.Source.V1.SourceContext

  field :labels, 2,
    repeated: true,
    type: Google.Devtools.Source.V1.ExtendedSourceContext.LabelsEntry,
    map: true
end

defmodule Google.Devtools.Source.V1.AliasContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :kind, 1, type: Google.Devtools.Source.V1.AliasContext.Kind, enum: true
  field :name, 2, type: :string
end

defmodule Google.Devtools.Source.V1.CloudRepoSourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :revision, 0

  field :repo_id, 1, type: Google.Devtools.Source.V1.RepoId, json_name: "repoId"
  field :revision_id, 2, type: :string, json_name: "revisionId", oneof: 0
  field :alias_name, 3, type: :string, json_name: "aliasName", oneof: 0, deprecated: true

  field :alias_context, 4,
    type: Google.Devtools.Source.V1.AliasContext,
    json_name: "aliasContext",
    oneof: 0
end

defmodule Google.Devtools.Source.V1.CloudWorkspaceSourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :workspace_id, 1,
    type: Google.Devtools.Source.V1.CloudWorkspaceId,
    json_name: "workspaceId"

  field :snapshot_id, 2, type: :string, json_name: "snapshotId"
end

defmodule Google.Devtools.Source.V1.GerritSourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :revision, 0

  field :host_uri, 1, type: :string, json_name: "hostUri"
  field :gerrit_project, 2, type: :string, json_name: "gerritProject"
  field :revision_id, 3, type: :string, json_name: "revisionId", oneof: 0
  field :alias_name, 4, type: :string, json_name: "aliasName", oneof: 0, deprecated: true

  field :alias_context, 5,
    type: Google.Devtools.Source.V1.AliasContext,
    json_name: "aliasContext",
    oneof: 0
end

defmodule Google.Devtools.Source.V1.GitSourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :url, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId"
end

defmodule Google.Devtools.Source.V1.RepoId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :id, 0

  field :project_repo_id, 1,
    type: Google.Devtools.Source.V1.ProjectRepoId,
    json_name: "projectRepoId",
    oneof: 0

  field :uid, 2, type: :string, oneof: 0
end

defmodule Google.Devtools.Source.V1.ProjectRepoId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :repo_name, 2, type: :string, json_name: "repoName"
end

defmodule Google.Devtools.Source.V1.CloudWorkspaceId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :repo_id, 1, type: Google.Devtools.Source.V1.RepoId, json_name: "repoId"
  field :name, 2, type: :string
end
