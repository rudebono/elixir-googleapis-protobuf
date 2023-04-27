defmodule Grafeas.V1beta1.Source.AliasContext.Kind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :KIND_UNSPECIFIED, 0
  field :FIXED, 1
  field :MOVABLE, 2
  field :OTHER, 4
end

defmodule Grafeas.V1beta1.Source.SourceContext.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Grafeas.V1beta1.Source.SourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kind, 1, type: Grafeas.V1beta1.Source.AliasContext.Kind, enum: true
  field :name, 2, type: :string
end

defmodule Grafeas.V1beta1.Source.CloudRepoSourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :url, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId"
end

defmodule Grafeas.V1beta1.Source.RepoId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :id, 0

  field :project_repo_id, 1,
    type: Grafeas.V1beta1.Source.ProjectRepoId,
    json_name: "projectRepoId",
    oneof: 0

  field :uid, 2, type: :string, oneof: 0
end

defmodule Grafeas.V1beta1.Source.ProjectRepoId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :repo_name, 2, type: :string, json_name: "repoName"
end