defmodule Google.Devtools.Artifactregistry.V1.CleanupPolicyCondition.TagState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TAG_STATE_UNSPECIFIED, 0
  field :TAGGED, 1
  field :UNTAGGED, 2
  field :ANY, 3
end

defmodule Google.Devtools.Artifactregistry.V1.CleanupPolicy.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :DELETE, 1
  field :KEEP, 2
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.DockerRepository.PublicRepository do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PUBLIC_REPOSITORY_UNSPECIFIED, 0
  field :DOCKER_HUB, 1
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.MavenRepository.PublicRepository do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PUBLIC_REPOSITORY_UNSPECIFIED, 0
  field :MAVEN_CENTRAL, 1
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.NpmRepository.PublicRepository do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PUBLIC_REPOSITORY_UNSPECIFIED, 0
  field :NPMJS, 1
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.PythonRepository.PublicRepository do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PUBLIC_REPOSITORY_UNSPECIFIED, 0
  field :PYPI, 1
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.AptRepository.PublicRepository.RepositoryBase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :REPOSITORY_BASE_UNSPECIFIED, 0
  field :DEBIAN, 1
  field :UBUNTU, 2
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.YumRepository.PublicRepository.RepositoryBase do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :REPOSITORY_BASE_UNSPECIFIED, 0
  field :CENTOS, 1
  field :CENTOS_DEBUG, 2
  field :CENTOS_VAULT, 3
  field :CENTOS_STREAM, 4
  field :ROCKY, 5
  field :EPEL, 6
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :DOCKER, 1
  field :MAVEN, 2
  field :NPM, 3
  field :APT, 5
  field :YUM, 6
  field :PYTHON, 8
  field :KFP, 9
  field :GO, 10
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.Mode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :STANDARD_REPOSITORY, 1
  field :VIRTUAL_REPOSITORY, 2
  field :REMOTE_REPOSITORY, 3
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig.VersionPolicy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :VERSION_POLICY_UNSPECIFIED, 0
  field :RELEASE, 1
  field :SNAPSHOT, 2
end

defmodule Google.Devtools.Artifactregistry.V1.UpstreamPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :repository, 2, type: :string, deprecated: false
  field :priority, 3, type: :int32
end

defmodule Google.Devtools.Artifactregistry.V1.CleanupPolicyCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :tag_state, 2,
    proto3_optional: true,
    type: Google.Devtools.Artifactregistry.V1.CleanupPolicyCondition.TagState,
    json_name: "tagState",
    enum: true

  field :tag_prefixes, 3, repeated: true, type: :string, json_name: "tagPrefixes"
  field :version_name_prefixes, 4, repeated: true, type: :string, json_name: "versionNamePrefixes"
  field :package_name_prefixes, 5, repeated: true, type: :string, json_name: "packageNamePrefixes"

  field :older_than, 6,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "olderThan"

  field :newer_than, 7,
    proto3_optional: true,
    type: Google.Protobuf.Duration,
    json_name: "newerThan"
end

defmodule Google.Devtools.Artifactregistry.V1.CleanupPolicyMostRecentVersions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :package_name_prefixes, 1, repeated: true, type: :string, json_name: "packageNamePrefixes"
  field :keep_count, 2, proto3_optional: true, type: :int32, json_name: "keepCount"
end

defmodule Google.Devtools.Artifactregistry.V1.CleanupPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :condition_type, 0

  field :condition, 2, type: Google.Devtools.Artifactregistry.V1.CleanupPolicyCondition, oneof: 0

  field :most_recent_versions, 4,
    type: Google.Devtools.Artifactregistry.V1.CleanupPolicyMostRecentVersions,
    json_name: "mostRecentVersions",
    oneof: 0

  field :id, 1, type: :string
  field :action, 3, type: Google.Devtools.Artifactregistry.V1.CleanupPolicy.Action, enum: true
end

defmodule Google.Devtools.Artifactregistry.V1.VirtualRepositoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :upstream_policies, 1,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.UpstreamPolicy,
    json_name: "upstreamPolicies"
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.UpstreamCredentials.UsernamePasswordCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :username, 1, type: :string

  field :password_secret_version, 2,
    type: :string,
    json_name: "passwordSecretVersion",
    deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.UpstreamCredentials do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :credentials, 0

  field :username_password_credentials, 1,
    type:
      Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.UpstreamCredentials.UsernamePasswordCredentials,
    json_name: "usernamePasswordCredentials",
    oneof: 0
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.DockerRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :upstream, 0

  field :public_repository, 1,
    type:
      Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.DockerRepository.PublicRepository,
    json_name: "publicRepository",
    enum: true,
    oneof: 0
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.MavenRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :upstream, 0

  field :public_repository, 1,
    type:
      Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.MavenRepository.PublicRepository,
    json_name: "publicRepository",
    enum: true,
    oneof: 0
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.NpmRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :upstream, 0

  field :public_repository, 1,
    type:
      Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.NpmRepository.PublicRepository,
    json_name: "publicRepository",
    enum: true,
    oneof: 0
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.PythonRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :upstream, 0

  field :public_repository, 1,
    type:
      Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.PythonRepository.PublicRepository,
    json_name: "publicRepository",
    enum: true,
    oneof: 0
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.AptRepository.PublicRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :repository_base, 1,
    type:
      Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.AptRepository.PublicRepository.RepositoryBase,
    json_name: "repositoryBase",
    enum: true

  field :repository_path, 2, type: :string, json_name: "repositoryPath"
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.AptRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :upstream, 0

  field :public_repository, 1,
    type:
      Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.AptRepository.PublicRepository,
    json_name: "publicRepository",
    oneof: 0
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.YumRepository.PublicRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :repository_base, 1,
    type:
      Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.YumRepository.PublicRepository.RepositoryBase,
    json_name: "repositoryBase",
    enum: true

  field :repository_path, 2, type: :string, json_name: "repositoryPath"
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.YumRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :upstream, 0

  field :public_repository, 1,
    type:
      Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.YumRepository.PublicRepository,
    json_name: "publicRepository",
    oneof: 0
end

defmodule Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :remote_source, 0

  field :docker_repository, 2,
    type: Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.DockerRepository,
    json_name: "dockerRepository",
    oneof: 0

  field :maven_repository, 3,
    type: Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.MavenRepository,
    json_name: "mavenRepository",
    oneof: 0

  field :npm_repository, 4,
    type: Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.NpmRepository,
    json_name: "npmRepository",
    oneof: 0

  field :python_repository, 5,
    type: Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.PythonRepository,
    json_name: "pythonRepository",
    oneof: 0

  field :apt_repository, 6,
    type: Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.AptRepository,
    json_name: "aptRepository",
    oneof: 0

  field :yum_repository, 7,
    type: Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.YumRepository,
    json_name: "yumRepository",
    oneof: 0

  field :description, 1, type: :string

  field :upstream_credentials, 9,
    type: Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig.UpstreamCredentials,
    json_name: "upstreamCredentials",
    deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :allow_snapshot_overwrites, 1, type: :bool, json_name: "allowSnapshotOverwrites"

  field :version_policy, 2,
    type: Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig.VersionPolicy,
    json_name: "versionPolicy",
    enum: true
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.DockerRepositoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :immutable_tags, 1, type: :bool, json_name: "immutableTags"
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Artifactregistry.V1.Repository.CleanupPoliciesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Devtools.Artifactregistry.V1.CleanupPolicy
end

defmodule Google.Devtools.Artifactregistry.V1.Repository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :format_config, 0

  oneof :mode_config, 1

  field :maven_config, 9,
    type: Google.Devtools.Artifactregistry.V1.Repository.MavenRepositoryConfig,
    json_name: "mavenConfig",
    oneof: 0

  field :docker_config, 17,
    type: Google.Devtools.Artifactregistry.V1.Repository.DockerRepositoryConfig,
    json_name: "dockerConfig",
    oneof: 0

  field :virtual_repository_config, 14,
    type: Google.Devtools.Artifactregistry.V1.VirtualRepositoryConfig,
    json_name: "virtualRepositoryConfig",
    oneof: 1

  field :remote_repository_config, 15,
    type: Google.Devtools.Artifactregistry.V1.RemoteRepositoryConfig,
    json_name: "remoteRepositoryConfig",
    oneof: 1

  field :name, 1, type: :string

  field :format, 2,
    type: Google.Devtools.Artifactregistry.V1.Repository.Format,
    enum: true,
    deprecated: false

  field :description, 3, type: :string

  field :labels, 4,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.Repository.LabelsEntry,
    map: true

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :kms_key_name, 8, type: :string, json_name: "kmsKeyName"

  field :mode, 10,
    type: Google.Devtools.Artifactregistry.V1.Repository.Mode,
    enum: true,
    deprecated: false

  field :cleanup_policies, 12,
    repeated: true,
    type: Google.Devtools.Artifactregistry.V1.Repository.CleanupPoliciesEntry,
    json_name: "cleanupPolicies",
    map: true,
    deprecated: false

  field :size_bytes, 13, type: :int64, json_name: "sizeBytes", deprecated: false
  field :satisfies_pzs, 16, type: :bool, json_name: "satisfiesPzs", deprecated: false

  field :cleanup_policy_dry_run, 18,
    type: :bool,
    json_name: "cleanupPolicyDryRun",
    deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.ListRepositoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.ListRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :repositories, 1, repeated: true, type: Google.Devtools.Artifactregistry.V1.Repository
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Artifactregistry.V1.GetRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.CreateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :repository_id, 2, type: :string, json_name: "repositoryId", deprecated: false
  field :repository, 3, type: Google.Devtools.Artifactregistry.V1.Repository, deprecated: false
end

defmodule Google.Devtools.Artifactregistry.V1.UpdateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :repository, 1, type: Google.Devtools.Artifactregistry.V1.Repository
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Devtools.Artifactregistry.V1.DeleteRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end