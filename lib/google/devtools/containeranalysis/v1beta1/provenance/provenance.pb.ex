defmodule Grafeas.V1beta1.Provenance.Hash.HashType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :HASH_TYPE_UNSPECIFIED | :SHA256

  field :HASH_TYPE_UNSPECIFIED, 0
  field :SHA256, 1
end
defmodule Grafeas.V1beta1.Provenance.BuildProvenance.BuildOptionsEntry do
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
defmodule Grafeas.V1beta1.Provenance.BuildProvenance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          project_id: String.t(),
          commands: [Grafeas.V1beta1.Provenance.Command.t()],
          built_artifacts: [Grafeas.V1beta1.Provenance.Artifact.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          creator: String.t(),
          logs_uri: String.t(),
          source_provenance: Grafeas.V1beta1.Provenance.Source.t() | nil,
          trigger_id: String.t(),
          build_options: %{String.t() => String.t()},
          builder_version: String.t()
        }

  defstruct id: "",
            project_id: "",
            commands: [],
            built_artifacts: [],
            create_time: nil,
            start_time: nil,
            end_time: nil,
            creator: "",
            logs_uri: "",
            source_provenance: nil,
            trigger_id: "",
            build_options: %{},
            builder_version: ""

  field :id, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
  field :commands, 3, repeated: true, type: Grafeas.V1beta1.Provenance.Command

  field :built_artifacts, 4,
    repeated: true,
    type: Grafeas.V1beta1.Provenance.Artifact,
    json_name: "builtArtifacts"

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 6, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 7, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :creator, 8, type: :string
  field :logs_uri, 9, type: :string, json_name: "logsUri"

  field :source_provenance, 10,
    type: Grafeas.V1beta1.Provenance.Source,
    json_name: "sourceProvenance"

  field :trigger_id, 11, type: :string, json_name: "triggerId"

  field :build_options, 12,
    repeated: true,
    type: Grafeas.V1beta1.Provenance.BuildProvenance.BuildOptionsEntry,
    json_name: "buildOptions",
    map: true

  field :builder_version, 13, type: :string, json_name: "builderVersion"
end
defmodule Grafeas.V1beta1.Provenance.Source.FileHashesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Grafeas.V1beta1.Provenance.FileHashes.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Grafeas.V1beta1.Provenance.FileHashes
end
defmodule Grafeas.V1beta1.Provenance.Source do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          artifact_storage_source_uri: String.t(),
          file_hashes: %{String.t() => Grafeas.V1beta1.Provenance.FileHashes.t() | nil},
          context: Grafeas.V1beta1.Source.SourceContext.t() | nil,
          additional_contexts: [Grafeas.V1beta1.Source.SourceContext.t()]
        }

  defstruct artifact_storage_source_uri: "",
            file_hashes: %{},
            context: nil,
            additional_contexts: []

  field :artifact_storage_source_uri, 1, type: :string, json_name: "artifactStorageSourceUri"

  field :file_hashes, 2,
    repeated: true,
    type: Grafeas.V1beta1.Provenance.Source.FileHashesEntry,
    json_name: "fileHashes",
    map: true

  field :context, 3, type: Grafeas.V1beta1.Source.SourceContext

  field :additional_contexts, 4,
    repeated: true,
    type: Grafeas.V1beta1.Source.SourceContext,
    json_name: "additionalContexts"
end
defmodule Grafeas.V1beta1.Provenance.FileHashes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_hash: [Grafeas.V1beta1.Provenance.Hash.t()]
        }

  defstruct file_hash: []

  field :file_hash, 1,
    repeated: true,
    type: Grafeas.V1beta1.Provenance.Hash,
    json_name: "fileHash"
end
defmodule Grafeas.V1beta1.Provenance.Hash do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Grafeas.V1beta1.Provenance.Hash.HashType.t(),
          value: binary
        }

  defstruct type: :HASH_TYPE_UNSPECIFIED,
            value: ""

  field :type, 1, type: Grafeas.V1beta1.Provenance.Hash.HashType, enum: true
  field :value, 2, type: :bytes
end
defmodule Grafeas.V1beta1.Provenance.Command do
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

  defstruct name: "",
            env: [],
            args: [],
            dir: "",
            id: "",
            wait_for: []

  field :name, 1, type: :string
  field :env, 2, repeated: true, type: :string
  field :args, 3, repeated: true, type: :string
  field :dir, 4, type: :string
  field :id, 5, type: :string
  field :wait_for, 6, repeated: true, type: :string, json_name: "waitFor"
end
defmodule Grafeas.V1beta1.Provenance.Artifact do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          checksum: String.t(),
          id: String.t(),
          names: [String.t()]
        }

  defstruct checksum: "",
            id: "",
            names: []

  field :checksum, 1, type: :string
  field :id, 2, type: :string
  field :names, 3, repeated: true, type: :string
end
