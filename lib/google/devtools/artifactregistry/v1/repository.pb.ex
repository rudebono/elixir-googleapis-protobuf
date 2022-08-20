defmodule Google.Devtools.Artifactregistry.V1.Repository.Format do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :DOCKER, 1
  field :MAVEN, 2
  field :NPM, 3
  field :APT, 5
  field :YUM, 6
  field :PYTHON, 8
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig.VersionPolicy do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :VERSION_POLICY_UNSPECIFIED, 0
  field :RELEASE, 1
  field :SNAPSHOT, 2
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :allow_snapshot_overwrites, 1, type: :bool, json_name: "allowSnapshotOverwrites"

  field :version_policy, 2,
    type: Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig.VersionPolicy,
    json_name: "versionPolicy",
    enum: true
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.Repository do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :format_config, 0

  field :maven_config, 9,
    type: Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig,
    json_name: "mavenConfig",
    oneof: 0

  field :name, 1, type: :string
  field :format, 2, type: Google.Devtools.Artifactregistry.V1.Repository.Format, enum: true
  field :description, 3, type: :string

  field :labels, 4,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.Repository.LabelsEntry,
    map: true

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :kms_key_name, 8, type: :string, json_name: "kmsKeyName"
end

defmodule Google.Devtools.Artifactregistry.V1.ListRepositoriesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.ListRepositoriesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :repositories, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1.Repository
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.GetRepositoryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.CreateRepositoryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :repository_id, 2, type: :string, json_name: "repositoryId"
  field :repository, 3, type: Google.Devtools.Artifactregistry.V1.Repository
end

defmodule Google.Devtools.Artifactregistry.V1.UpdateRepositoryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :repository, 1, type: Google.Devtools.Artifactregistry.V1.Repository
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Devtools.Artifactregistry.V1.DeleteRepositoryRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end