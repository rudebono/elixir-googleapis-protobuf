defmodule Grafeas.V1.AliasContext.Kind do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :KIND_UNSPECIFIED, 0
  field :FIXED, 1
  field :MOVABLE, 2
  field :OTHER, 4
end

defmodule Grafeas.V1.BuildProvenance.BuildOptionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Grafeas.V1.BuildProvenance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :id, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :commands, 3, repeated: true, type: Grafeas.V1.Command

  field :built_artifacts, 4,
    repeated: true,
    type: Grafeas.V1.Artifact,
    json_name: "builtArtifacts"

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :creator, 8, type: :string
  field :logs_uri, 9, type: :string, json_name: "logsUri"
  field :source_provenance, 10, type: Grafeas.V1.Source, json_name: "sourceProvenance"
  field :trigger_id, 11, type: :string, json_name: "triggerId"

  field :build_options, 12,
    repeated: true,
    type: Grafeas.V1.BuildProvenance.BuildOptionsEntry,
    json_name: "buildOptions",
    map: true

  field :builder_version, 13, type: :string, json_name: "builderVersion"
end

defmodule Grafeas.V1.Source.FileHashesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Grafeas.V1.FileHashes
end

defmodule Grafeas.V1.Source do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :artifact_storage_source_uri, 1, type: :string, json_name: "artifactStorageSourceUri"

  field :file_hashes, 2,
    repeated: true,
    type: Grafeas.V1.Source.FileHashesEntry,
    json_name: "fileHashes",
    map: true

  field :context, 3, type: Grafeas.V1.SourceContext

  field :additional_contexts, 4,
    repeated: true,
    type: Grafeas.V1.SourceContext,
    json_name: "additionalContexts"
end

defmodule Grafeas.V1.FileHashes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :file_hash, 1, repeated: true, type: Grafeas.V1.Hash, json_name: "fileHash"
end

defmodule Grafeas.V1.Hash do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule Grafeas.V1.Command do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :env, 2, repeated: true, type: :string
  field :args, 3, repeated: true, type: :string
  field :dir, 4, type: :string
  field :id, 5, type: :string
  field :wait_for, 6, repeated: true, type: :string, json_name: "waitFor"
end

defmodule Grafeas.V1.Artifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :checksum, 1, type: :string
  field :id, 2, type: :string
  field :names, 3, repeated: true, type: :string
end

defmodule Grafeas.V1.SourceContext.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Grafeas.V1.SourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :context, 0

  field :cloud_repo, 1, type: Grafeas.V1.CloudRepoSourceContext, json_name: "cloudRepo", oneof: 0
  field :gerrit, 2, type: Grafeas.V1.GerritSourceContext, oneof: 0
  field :git, 3, type: Grafeas.V1.GitSourceContext, oneof: 0
  field :labels, 4, repeated: true, type: Grafeas.V1.SourceContext.LabelsEntry, map: true
end

defmodule Grafeas.V1.AliasContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :kind, 1, type: Grafeas.V1.AliasContext.Kind, enum: true
  field :name, 2, type: :string
end

defmodule Grafeas.V1.CloudRepoSourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :revision, 0

  field :repo_id, 1, type: Grafeas.V1.RepoId, json_name: "repoId"
  field :revision_id, 2, type: :string, json_name: "revisionId", oneof: 0
  field :alias_context, 3, type: Grafeas.V1.AliasContext, json_name: "aliasContext", oneof: 0
end

defmodule Grafeas.V1.GerritSourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :revision, 0

  field :host_uri, 1, type: :string, json_name: "hostUri"
  field :gerrit_project, 2, type: :string, json_name: "gerritProject"
  field :revision_id, 3, type: :string, json_name: "revisionId", oneof: 0
  field :alias_context, 4, type: Grafeas.V1.AliasContext, json_name: "aliasContext", oneof: 0
end

defmodule Grafeas.V1.GitSourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :url, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId"
end

defmodule Grafeas.V1.RepoId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :id, 0

  field :project_repo_id, 1, type: Grafeas.V1.ProjectRepoId, json_name: "projectRepoId", oneof: 0
  field :uid, 2, type: :string, oneof: 0
end

defmodule Grafeas.V1.ProjectRepoId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :repo_name, 2, type: :string, json_name: "repoName"
end
