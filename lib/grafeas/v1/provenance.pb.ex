defmodule Grafeas.V1.AliasContext.Kind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :KIND_UNSPECIFIED | :FIXED | :MOVABLE | :OTHER

  field :KIND_UNSPECIFIED, 0
  field :FIXED, 1
  field :MOVABLE, 2
  field :OTHER, 4
end

defmodule Grafeas.V1.BuildProvenance.BuildOptionsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Grafeas.V1.BuildProvenance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          project_id: String.t(),
          commands: [Grafeas.V1.Command.t()],
          built_artifacts: [Grafeas.V1.Artifact.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          creator: String.t(),
          logs_uri: String.t(),
          source_provenance: Grafeas.V1.Source.t() | nil,
          trigger_id: String.t(),
          build_options: %{String.t() => String.t()},
          builder_version: String.t()
        }

  defstruct [
    :id,
    :project_id,
    :commands,
    :built_artifacts,
    :create_time,
    :start_time,
    :end_time,
    :creator,
    :logs_uri,
    :source_provenance,
    :trigger_id,
    :build_options,
    :builder_version
  ]

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

  def transform_module(), do: nil
end

defmodule Grafeas.V1.Source.FileHashesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Grafeas.V1.FileHashes.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Grafeas.V1.FileHashes

  def transform_module(), do: nil
end

defmodule Grafeas.V1.Source do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_storage_source_uri: String.t(),
          file_hashes: %{String.t() => Grafeas.V1.FileHashes.t() | nil},
          context: Grafeas.V1.SourceContext.t() | nil,
          additional_contexts: [Grafeas.V1.SourceContext.t()]
        }

  defstruct [:artifact_storage_source_uri, :file_hashes, :context, :additional_contexts]

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

  def transform_module(), do: nil
end

defmodule Grafeas.V1.FileHashes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_hash: [Grafeas.V1.Hash.t()]
        }

  defstruct [:file_hash]

  field :file_hash, 1, repeated: true, type: Grafeas.V1.Hash, json_name: "fileHash"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.Hash do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          value: binary
        }

  defstruct [:type, :value]

  field :type, 1, type: :string
  field :value, 2, type: :bytes

  def transform_module(), do: nil
end

defmodule Grafeas.V1.Command do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          env: [String.t()],
          args: [String.t()],
          dir: String.t(),
          id: String.t(),
          wait_for: [String.t()]
        }

  defstruct [:name, :env, :args, :dir, :id, :wait_for]

  field :name, 1, type: :string
  field :env, 2, repeated: true, type: :string
  field :args, 3, repeated: true, type: :string
  field :dir, 4, type: :string
  field :id, 5, type: :string
  field :wait_for, 6, repeated: true, type: :string, json_name: "waitFor"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.Artifact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          checksum: String.t(),
          id: String.t(),
          names: [String.t()]
        }

  defstruct [:checksum, :id, :names]

  field :checksum, 1, type: :string
  field :id, 2, type: :string
  field :names, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Grafeas.V1.SourceContext.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Grafeas.V1.SourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          context:
            {:cloud_repo, Grafeas.V1.CloudRepoSourceContext.t() | nil}
            | {:gerrit, Grafeas.V1.GerritSourceContext.t() | nil}
            | {:git, Grafeas.V1.GitSourceContext.t() | nil},
          labels: %{String.t() => String.t()}
        }

  defstruct [:context, :labels]

  oneof :context, 0

  field :cloud_repo, 1, type: Grafeas.V1.CloudRepoSourceContext, json_name: "cloudRepo", oneof: 0
  field :gerrit, 2, type: Grafeas.V1.GerritSourceContext, oneof: 0
  field :git, 3, type: Grafeas.V1.GitSourceContext, oneof: 0
  field :labels, 4, repeated: true, type: Grafeas.V1.SourceContext.LabelsEntry, map: true

  def transform_module(), do: nil
end

defmodule Grafeas.V1.AliasContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: Grafeas.V1.AliasContext.Kind.t(),
          name: String.t()
        }

  defstruct [:kind, :name]

  field :kind, 1, type: Grafeas.V1.AliasContext.Kind, enum: true
  field :name, 2, type: :string

  def transform_module(), do: nil
end

defmodule Grafeas.V1.CloudRepoSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision:
            {:revision_id, String.t()} | {:alias_context, Grafeas.V1.AliasContext.t() | nil},
          repo_id: Grafeas.V1.RepoId.t() | nil
        }

  defstruct [:revision, :repo_id]

  oneof :revision, 0

  field :repo_id, 1, type: Grafeas.V1.RepoId, json_name: "repoId"
  field :revision_id, 2, type: :string, json_name: "revisionId", oneof: 0
  field :alias_context, 3, type: Grafeas.V1.AliasContext, json_name: "aliasContext", oneof: 0

  def transform_module(), do: nil
end

defmodule Grafeas.V1.GerritSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision:
            {:revision_id, String.t()} | {:alias_context, Grafeas.V1.AliasContext.t() | nil},
          host_uri: String.t(),
          gerrit_project: String.t()
        }

  defstruct [:revision, :host_uri, :gerrit_project]

  oneof :revision, 0

  field :host_uri, 1, type: :string, json_name: "hostUri"
  field :gerrit_project, 2, type: :string, json_name: "gerritProject"
  field :revision_id, 3, type: :string, json_name: "revisionId", oneof: 0
  field :alias_context, 4, type: Grafeas.V1.AliasContext, json_name: "aliasContext", oneof: 0

  def transform_module(), do: nil
end

defmodule Grafeas.V1.GitSourceContext do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: String.t(),
          revision_id: String.t()
        }

  defstruct [:url, :revision_id]

  field :url, 1, type: :string
  field :revision_id, 2, type: :string, json_name: "revisionId"

  def transform_module(), do: nil
end

defmodule Grafeas.V1.RepoId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: {:project_repo_id, Grafeas.V1.ProjectRepoId.t() | nil} | {:uid, String.t()}
        }

  defstruct [:id]

  oneof :id, 0

  field :project_repo_id, 1, type: Grafeas.V1.ProjectRepoId, json_name: "projectRepoId", oneof: 0
  field :uid, 2, type: :string, oneof: 0

  def transform_module(), do: nil
end

defmodule Grafeas.V1.ProjectRepoId do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          repo_name: String.t()
        }

  defstruct [:project_id, :repo_name]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :repo_name, 2, type: :string, json_name: "repoName"

  def transform_module(), do: nil
end
