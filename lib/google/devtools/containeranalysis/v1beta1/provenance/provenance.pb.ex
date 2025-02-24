defmodule Grafeas.V1beta1.Provenance.Hash.HashType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :HASH_TYPE_UNSPECIFIED, 0
  field :SHA256, 1
end

defmodule Grafeas.V1beta1.Provenance.BuildProvenance.BuildOptionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Grafeas.V1beta1.Provenance.BuildProvenance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Grafeas.V1beta1.Provenance.FileHashes
end

defmodule Grafeas.V1beta1.Provenance.Source do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :file_hash, 1,
    repeated: true,
    type: Grafeas.V1beta1.Provenance.Hash,
    json_name: "fileHash"
end

defmodule Grafeas.V1beta1.Provenance.Hash do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :type, 1, type: Grafeas.V1beta1.Provenance.Hash.HashType, enum: true
  field :value, 2, type: :bytes
end

defmodule Grafeas.V1beta1.Provenance.Command do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :env, 2, repeated: true, type: :string
  field :args, 3, repeated: true, type: :string
  field :dir, 4, type: :string
  field :id, 5, type: :string
  field :wait_for, 6, repeated: true, type: :string, json_name: "waitFor"
end

defmodule Grafeas.V1beta1.Provenance.Artifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :checksum, 1, type: :string
  field :id, 2, type: :string
  field :names, 3, repeated: true, type: :string
end
