defmodule Google.Devtools.Cloudbuild.V1.Build.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATUS_UNKNOWN, 0
  field :PENDING, 10
  field :QUEUED, 1
  field :WORKING, 2
  field :SUCCESS, 3
  field :FAILURE, 4
  field :INTERNAL_ERROR, 5
  field :TIMEOUT, 6
  field :CANCELLED, 7
  field :EXPIRED, 9
end

defmodule Google.Devtools.Cloudbuild.V1.Build.Warning.Priority do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PRIORITY_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ALERT, 3
end

defmodule Google.Devtools.Cloudbuild.V1.Build.FailureInfo.FailureType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :FAILURE_TYPE_UNSPECIFIED, 0
  field :PUSH_FAILED, 1
  field :PUSH_IMAGE_NOT_FOUND, 2
  field :PUSH_NOT_AUTHORIZED, 3
  field :LOGGING_FAILURE, 4
  field :USER_BUILD_STEP, 5
  field :FETCH_SOURCE_FAILED, 6
end

defmodule Google.Devtools.Cloudbuild.V1.Hash.HashType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NONE, 0
  field :SHA256, 1
  field :MD5, 2
  field :SHA512, 4
end

defmodule Google.Devtools.Cloudbuild.V1.BuildApproval.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :APPROVED, 2
  field :REJECTED, 3
  field :CANCELLED, 5
end

defmodule Google.Devtools.Cloudbuild.V1.ApprovalResult.Decision do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DECISION_UNSPECIFIED, 0
  field :APPROVED, 1
  field :REJECTED, 2
end

defmodule Google.Devtools.Cloudbuild.V1.RepositoryEventConfig.RepositoryType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REPOSITORY_TYPE_UNSPECIFIED, 0
  field :GITHUB, 1
  field :GITHUB_ENTERPRISE, 2
  field :GITLAB_ENTERPRISE, 3
end

defmodule Google.Devtools.Cloudbuild.V1.PubsubConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :OK, 1
  field :SUBSCRIPTION_DELETED, 2
  field :TOPIC_DELETED, 3
  field :SUBSCRIPTION_MISCONFIGURED, 4
end

defmodule Google.Devtools.Cloudbuild.V1.WebhookConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :OK, 1
  field :SECRET_DELETED, 2
end

defmodule Google.Devtools.Cloudbuild.V1.PullRequestFilter.CommentControl do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMMENTS_DISABLED, 0
  field :COMMENTS_ENABLED, 1
  field :COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY, 2
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.VerifyOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :NOT_VERIFIED, 0
  field :VERIFIED, 1
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.MachineType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :N1_HIGHCPU_8, 1
  field :N1_HIGHCPU_32, 2
  field :E2_HIGHCPU_8, 5
  field :E2_HIGHCPU_32, 6
  field :E2_MEDIUM, 7
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.SubstitutionOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :MUST_MATCH, 0
  field :ALLOW_LOOSE, 1
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.LogStreamingOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STREAM_DEFAULT, 0
  field :STREAM_ON, 1
  field :STREAM_OFF, 2
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.LoggingMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :LOGGING_UNSPECIFIED, 0
  field :LEGACY, 1
  field :GCS_ONLY, 2
  field :STACKDRIVER_ONLY, 3
  field :CLOUD_LOGGING_ONLY, 5
  field :NONE, 4
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.DefaultLogsBucketBehavior do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :DEFAULT_LOGS_BUCKET_BEHAVIOR_UNSPECIFIED, 0
  field :REGIONAL_USER_OWNED_BUCKET, 1
end

defmodule Google.Devtools.Cloudbuild.V1.WorkerPool.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :RUNNING, 2
  field :DELETING, 3
  field :DELETED, 4
end

defmodule Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig.EgressOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EGRESS_OPTION_UNSPECIFIED, 0
  field :NO_PUBLIC_EGRESS, 1
  field :PUBLIC_EGRESS, 2
end

defmodule Google.Devtools.Cloudbuild.V1.RetryBuildRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :id, 2, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.RunBuildTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 4, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :trigger_id, 2, type: :string, json_name: "triggerId", deprecated: false
  field :source, 3, type: Google.Devtools.Cloudbuild.V1.RepoSource
end

defmodule Google.Devtools.Cloudbuild.V1.StorageSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
end

defmodule Google.Devtools.Cloudbuild.V1.GitSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :url, 1, type: :string
  field :dir, 5, type: :string
  field :revision, 6, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.RepoSource.SubstitutionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.RepoSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :revision, 0

  field :project_id, 1, type: :string, json_name: "projectId"
  field :repo_name, 2, type: :string, json_name: "repoName"
  field :branch_name, 3, type: :string, json_name: "branchName", oneof: 0
  field :tag_name, 4, type: :string, json_name: "tagName", oneof: 0
  field :commit_sha, 5, type: :string, json_name: "commitSha", oneof: 0
  field :dir, 7, type: :string
  field :invert_regex, 8, type: :bool, json_name: "invertRegex"

  field :substitutions, 9,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.RepoSource.SubstitutionsEntry,
    map: true
end

defmodule Google.Devtools.Cloudbuild.V1.StorageSourceManifest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64
end

defmodule Google.Devtools.Cloudbuild.V1.Source do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :source, 0

  field :storage_source, 2,
    type: Google.Devtools.Cloudbuild.V1.StorageSource,
    json_name: "storageSource",
    oneof: 0

  field :repo_source, 3,
    type: Google.Devtools.Cloudbuild.V1.RepoSource,
    json_name: "repoSource",
    oneof: 0

  field :git_source, 5,
    type: Google.Devtools.Cloudbuild.V1.GitSource,
    json_name: "gitSource",
    oneof: 0

  field :storage_source_manifest, 8,
    type: Google.Devtools.Cloudbuild.V1.StorageSourceManifest,
    json_name: "storageSourceManifest",
    oneof: 0
end

defmodule Google.Devtools.Cloudbuild.V1.BuiltImage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :digest, 3, type: :string

  field :push_timing, 4,
    type: Google.Devtools.Cloudbuild.V1.TimeSpan,
    json_name: "pushTiming",
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.UploadedPythonPackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :file_hashes, 2, type: Google.Devtools.Cloudbuild.V1.FileHashes, json_name: "fileHashes"

  field :push_timing, 3,
    type: Google.Devtools.Cloudbuild.V1.TimeSpan,
    json_name: "pushTiming",
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.UploadedMavenArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :file_hashes, 2, type: Google.Devtools.Cloudbuild.V1.FileHashes, json_name: "fileHashes"

  field :push_timing, 3,
    type: Google.Devtools.Cloudbuild.V1.TimeSpan,
    json_name: "pushTiming",
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.UploadedNpmPackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string
  field :file_hashes, 2, type: Google.Devtools.Cloudbuild.V1.FileHashes, json_name: "fileHashes"

  field :push_timing, 3,
    type: Google.Devtools.Cloudbuild.V1.TimeSpan,
    json_name: "pushTiming",
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.BuildStep do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :env, 2, repeated: true, type: :string
  field :args, 3, repeated: true, type: :string
  field :dir, 4, type: :string
  field :id, 5, type: :string
  field :wait_for, 6, repeated: true, type: :string, json_name: "waitFor"
  field :entrypoint, 7, type: :string
  field :secret_env, 8, repeated: true, type: :string, json_name: "secretEnv"
  field :volumes, 9, repeated: true, type: Google.Devtools.Cloudbuild.V1.Volume
  field :timing, 10, type: Google.Devtools.Cloudbuild.V1.TimeSpan, deprecated: false

  field :pull_timing, 13,
    type: Google.Devtools.Cloudbuild.V1.TimeSpan,
    json_name: "pullTiming",
    deprecated: false

  field :timeout, 11, type: Google.Protobuf.Duration

  field :status, 12,
    type: Google.Devtools.Cloudbuild.V1.Build.Status,
    enum: true,
    deprecated: false

  field :allow_failure, 14, type: :bool, json_name: "allowFailure"
  field :exit_code, 16, type: :int32, json_name: "exitCode", deprecated: false
  field :allow_exit_codes, 18, repeated: true, type: :int32, json_name: "allowExitCodes"
  field :script, 19, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.Volume do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :path, 2, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.Results do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :images, 2, repeated: true, type: Google.Devtools.Cloudbuild.V1.BuiltImage
  field :build_step_images, 3, repeated: true, type: :string, json_name: "buildStepImages"
  field :artifact_manifest, 4, type: :string, json_name: "artifactManifest"
  field :num_artifacts, 5, type: :int64, json_name: "numArtifacts"
  field :build_step_outputs, 6, repeated: true, type: :bytes, json_name: "buildStepOutputs"

  field :artifact_timing, 7,
    type: Google.Devtools.Cloudbuild.V1.TimeSpan,
    json_name: "artifactTiming"

  field :python_packages, 8,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.UploadedPythonPackage,
    json_name: "pythonPackages"

  field :maven_artifacts, 9,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.UploadedMavenArtifact,
    json_name: "mavenArtifacts"

  field :npm_packages, 12,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.UploadedNpmPackage,
    json_name: "npmPackages"
end

defmodule Google.Devtools.Cloudbuild.V1.ArtifactResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :location, 1, type: :string

  field :file_hash, 2,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.FileHashes,
    json_name: "fileHash"
end

defmodule Google.Devtools.Cloudbuild.V1.Build.Warning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, type: :string
  field :priority, 2, type: Google.Devtools.Cloudbuild.V1.Build.Warning.Priority, enum: true
end

defmodule Google.Devtools.Cloudbuild.V1.Build.FailureInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Devtools.Cloudbuild.V1.Build.FailureInfo.FailureType, enum: true
  field :detail, 2, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.Build.SubstitutionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.Build.TimingEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Devtools.Cloudbuild.V1.TimeSpan
end

defmodule Google.Devtools.Cloudbuild.V1.Build do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 45, type: :string, deprecated: false
  field :id, 1, type: :string, deprecated: false
  field :project_id, 16, type: :string, json_name: "projectId", deprecated: false

  field :status, 2,
    type: Google.Devtools.Cloudbuild.V1.Build.Status,
    enum: true,
    deprecated: false

  field :status_detail, 24, type: :string, json_name: "statusDetail", deprecated: false
  field :source, 3, type: Google.Devtools.Cloudbuild.V1.Source
  field :steps, 11, repeated: true, type: Google.Devtools.Cloudbuild.V1.BuildStep
  field :results, 10, type: Google.Devtools.Cloudbuild.V1.Results, deprecated: false

  field :create_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false

  field :finish_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "finishTime",
    deprecated: false

  field :timeout, 12, type: Google.Protobuf.Duration
  field :images, 13, repeated: true, type: :string
  field :queue_ttl, 40, type: Google.Protobuf.Duration, json_name: "queueTtl"
  field :artifacts, 37, type: Google.Devtools.Cloudbuild.V1.Artifacts
  field :logs_bucket, 19, type: :string, json_name: "logsBucket"

  field :source_provenance, 21,
    type: Google.Devtools.Cloudbuild.V1.SourceProvenance,
    json_name: "sourceProvenance",
    deprecated: false

  field :build_trigger_id, 22, type: :string, json_name: "buildTriggerId", deprecated: false
  field :options, 23, type: Google.Devtools.Cloudbuild.V1.BuildOptions
  field :log_url, 25, type: :string, json_name: "logUrl", deprecated: false

  field :substitutions, 29,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Build.SubstitutionsEntry,
    map: true

  field :tags, 31, repeated: true, type: :string
  field :secrets, 32, repeated: true, type: Google.Devtools.Cloudbuild.V1.Secret

  field :timing, 33,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Build.TimingEntry,
    map: true,
    deprecated: false

  field :approval, 44, type: Google.Devtools.Cloudbuild.V1.BuildApproval, deprecated: false
  field :service_account, 42, type: :string, json_name: "serviceAccount", deprecated: false

  field :available_secrets, 47,
    type: Google.Devtools.Cloudbuild.V1.Secrets,
    json_name: "availableSecrets"

  field :warnings, 49,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Build.Warning,
    deprecated: false

  field :failure_info, 51,
    type: Google.Devtools.Cloudbuild.V1.Build.FailureInfo,
    json_name: "failureInfo",
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.Artifacts.ArtifactObjects do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :location, 1, type: :string
  field :paths, 2, repeated: true, type: :string
  field :timing, 3, type: Google.Devtools.Cloudbuild.V1.TimeSpan, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.Artifacts.MavenArtifact do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :repository, 1, type: :string
  field :path, 2, type: :string
  field :artifact_id, 3, type: :string, json_name: "artifactId"
  field :group_id, 4, type: :string, json_name: "groupId"
  field :version, 5, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.Artifacts.PythonPackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :repository, 1, type: :string
  field :paths, 2, repeated: true, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.Artifacts.NpmPackage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :repository, 1, type: :string
  field :package_path, 2, type: :string, json_name: "packagePath"
end

defmodule Google.Devtools.Cloudbuild.V1.Artifacts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :images, 1, repeated: true, type: :string
  field :objects, 2, type: Google.Devtools.Cloudbuild.V1.Artifacts.ArtifactObjects

  field :maven_artifacts, 3,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Artifacts.MavenArtifact,
    json_name: "mavenArtifacts"

  field :python_packages, 5,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Artifacts.PythonPackage,
    json_name: "pythonPackages"

  field :npm_packages, 6,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Artifacts.NpmPackage,
    json_name: "npmPackages"
end

defmodule Google.Devtools.Cloudbuild.V1.TimeSpan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :build, 1, type: Google.Devtools.Cloudbuild.V1.Build
end

defmodule Google.Devtools.Cloudbuild.V1.SourceProvenance.FileHashesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Devtools.Cloudbuild.V1.FileHashes
end

defmodule Google.Devtools.Cloudbuild.V1.SourceProvenance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resolved_storage_source, 3,
    type: Google.Devtools.Cloudbuild.V1.StorageSource,
    json_name: "resolvedStorageSource"

  field :resolved_repo_source, 6,
    type: Google.Devtools.Cloudbuild.V1.RepoSource,
    json_name: "resolvedRepoSource"

  field :resolved_storage_source_manifest, 9,
    type: Google.Devtools.Cloudbuild.V1.StorageSourceManifest,
    json_name: "resolvedStorageSourceManifest"

  field :file_hashes, 4,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.SourceProvenance.FileHashesEntry,
    json_name: "fileHashes",
    map: true,
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.FileHashes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :file_hash, 1,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Hash,
    json_name: "fileHash"
end

defmodule Google.Devtools.Cloudbuild.V1.Hash do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Devtools.Cloudbuild.V1.Hash.HashType, enum: true
  field :value, 2, type: :bytes
end

defmodule Google.Devtools.Cloudbuild.V1.Secrets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :secret_manager, 1,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.SecretManagerSecret,
    json_name: "secretManager"

  field :inline, 2, repeated: true, type: Google.Devtools.Cloudbuild.V1.InlineSecret
end

defmodule Google.Devtools.Cloudbuild.V1.InlineSecret.EnvMapEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule Google.Devtools.Cloudbuild.V1.InlineSecret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName", deprecated: false

  field :env_map, 2,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.InlineSecret.EnvMapEntry,
    json_name: "envMap",
    map: true
end

defmodule Google.Devtools.Cloudbuild.V1.SecretManagerSecret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version_name, 1, type: :string, json_name: "versionName", deprecated: false
  field :env, 2, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.Secret.SecretEnvEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :bytes
end

defmodule Google.Devtools.Cloudbuild.V1.Secret do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"

  field :secret_env, 3,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Secret.SecretEnvEntry,
    json_name: "secretEnv",
    map: true
end

defmodule Google.Devtools.Cloudbuild.V1.CreateBuildRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 4, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :build, 2, type: Google.Devtools.Cloudbuild.V1.Build, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.GetBuildRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 4, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :id, 2, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.ListBuildsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 9, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 8, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.ListBuildsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :builds, 1, repeated: true, type: Google.Devtools.Cloudbuild.V1.Build
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Cloudbuild.V1.CancelBuildRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 4, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :id, 2, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.ApproveBuildRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :approval_result, 2,
    type: Google.Devtools.Cloudbuild.V1.ApprovalResult,
    json_name: "approvalResult"
end

defmodule Google.Devtools.Cloudbuild.V1.BuildApproval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :state, 1,
    type: Google.Devtools.Cloudbuild.V1.BuildApproval.State,
    enum: true,
    deprecated: false

  field :config, 2, type: Google.Devtools.Cloudbuild.V1.ApprovalConfig, deprecated: false
  field :result, 3, type: Google.Devtools.Cloudbuild.V1.ApprovalResult, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.ApprovalConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :approval_required, 1, type: :bool, json_name: "approvalRequired"
end

defmodule Google.Devtools.Cloudbuild.V1.ApprovalResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :approver_account, 2, type: :string, json_name: "approverAccount", deprecated: false

  field :approval_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "approvalTime",
    deprecated: false

  field :decision, 4,
    type: Google.Devtools.Cloudbuild.V1.ApprovalResult.Decision,
    enum: true,
    deprecated: false

  field :comment, 5, type: :string, deprecated: false
  field :url, 6, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.BuildTrigger.SubstitutionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.BuildTrigger do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :build_template, 0

  field :resource_name, 34, type: :string, json_name: "resourceName"
  field :id, 1, type: :string, deprecated: false
  field :description, 10, type: :string
  field :name, 21, type: :string
  field :tags, 19, repeated: true, type: :string

  field :trigger_template, 7,
    type: Google.Devtools.Cloudbuild.V1.RepoSource,
    json_name: "triggerTemplate"

  field :github, 13, type: Google.Devtools.Cloudbuild.V1.GitHubEventsConfig

  field :pubsub_config, 29,
    type: Google.Devtools.Cloudbuild.V1.PubsubConfig,
    json_name: "pubsubConfig"

  field :webhook_config, 31,
    type: Google.Devtools.Cloudbuild.V1.WebhookConfig,
    json_name: "webhookConfig"

  field :autodetect, 18, type: :bool, oneof: 0
  field :build, 4, type: Google.Devtools.Cloudbuild.V1.Build, oneof: 0
  field :filename, 8, type: :string, oneof: 0

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :disabled, 9, type: :bool

  field :substitutions, 11,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.BuildTrigger.SubstitutionsEntry,
    map: true

  field :ignored_files, 15, repeated: true, type: :string, json_name: "ignoredFiles"
  field :included_files, 16, repeated: true, type: :string, json_name: "includedFiles"
  field :filter, 30, type: :string, deprecated: false
  field :service_account, 33, type: :string, json_name: "serviceAccount", deprecated: false

  field :repository_event_config, 39,
    type: Google.Devtools.Cloudbuild.V1.RepositoryEventConfig,
    json_name: "repositoryEventConfig"
end

defmodule Google.Devtools.Cloudbuild.V1.RepositoryEventConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :filter, 0

  field :repository, 1, type: :string, deprecated: false

  field :repository_type, 2,
    type: Google.Devtools.Cloudbuild.V1.RepositoryEventConfig.RepositoryType,
    json_name: "repositoryType",
    enum: true,
    deprecated: false

  field :pull_request, 3,
    type: Google.Devtools.Cloudbuild.V1.PullRequestFilter,
    json_name: "pullRequest",
    oneof: 0

  field :push, 4, type: Google.Devtools.Cloudbuild.V1.PushFilter, oneof: 0
end

defmodule Google.Devtools.Cloudbuild.V1.GitHubEventsConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :event, 0

  field :installation_id, 1, type: :int64, json_name: "installationId", deprecated: true
  field :owner, 6, type: :string
  field :name, 7, type: :string

  field :pull_request, 4,
    type: Google.Devtools.Cloudbuild.V1.PullRequestFilter,
    json_name: "pullRequest",
    oneof: 0

  field :push, 5, type: Google.Devtools.Cloudbuild.V1.PushFilter, oneof: 0
end

defmodule Google.Devtools.Cloudbuild.V1.PubsubConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :subscription, 1, type: :string, deprecated: false
  field :topic, 2, type: :string, deprecated: false

  field :service_account_email, 3,
    type: :string,
    json_name: "serviceAccountEmail",
    deprecated: false

  field :state, 4, type: Google.Devtools.Cloudbuild.V1.PubsubConfig.State, enum: true
end

defmodule Google.Devtools.Cloudbuild.V1.WebhookConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :auth_method, 0

  field :secret, 3, type: :string, oneof: 0, deprecated: false
  field :state, 4, type: Google.Devtools.Cloudbuild.V1.WebhookConfig.State, enum: true
end

defmodule Google.Devtools.Cloudbuild.V1.PullRequestFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :git_ref, 0

  field :branch, 2, type: :string, oneof: 0

  field :comment_control, 5,
    type: Google.Devtools.Cloudbuild.V1.PullRequestFilter.CommentControl,
    json_name: "commentControl",
    enum: true

  field :invert_regex, 6, type: :bool, json_name: "invertRegex"
end

defmodule Google.Devtools.Cloudbuild.V1.PushFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :git_ref, 0

  field :branch, 2, type: :string, oneof: 0
  field :tag, 3, type: :string, oneof: 0
  field :invert_regex, 4, type: :bool, json_name: "invertRegex"
end

defmodule Google.Devtools.Cloudbuild.V1.CreateBuildTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 3, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :trigger, 2, type: Google.Devtools.Cloudbuild.V1.BuildTrigger, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.GetBuildTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :trigger_id, 2, type: :string, json_name: "triggerId", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.ListBuildTriggersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 4, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Cloudbuild.V1.ListBuildTriggersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :triggers, 1, repeated: true, type: Google.Devtools.Cloudbuild.V1.BuildTrigger
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Cloudbuild.V1.DeleteBuildTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 3, type: :string, deprecated: false
  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :trigger_id, 2, type: :string, json_name: "triggerId", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.UpdateBuildTriggerRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId", deprecated: false
  field :trigger_id, 2, type: :string, json_name: "triggerId", deprecated: false
  field :trigger, 3, type: Google.Devtools.Cloudbuild.V1.BuildTrigger, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.PoolOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source_provenance_hash, 1,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Hash.HashType,
    json_name: "sourceProvenanceHash",
    enum: true

  field :requested_verify_option, 2,
    type: Google.Devtools.Cloudbuild.V1.BuildOptions.VerifyOption,
    json_name: "requestedVerifyOption",
    enum: true

  field :machine_type, 3,
    type: Google.Devtools.Cloudbuild.V1.BuildOptions.MachineType,
    json_name: "machineType",
    enum: true

  field :disk_size_gb, 6, type: :int64, json_name: "diskSizeGb"

  field :substitution_option, 4,
    type: Google.Devtools.Cloudbuild.V1.BuildOptions.SubstitutionOption,
    json_name: "substitutionOption",
    enum: true

  field :dynamic_substitutions, 17, type: :bool, json_name: "dynamicSubstitutions"

  field :log_streaming_option, 5,
    type: Google.Devtools.Cloudbuild.V1.BuildOptions.LogStreamingOption,
    json_name: "logStreamingOption",
    enum: true

  field :worker_pool, 7, type: :string, json_name: "workerPool", deprecated: true
  field :pool, 19, type: Google.Devtools.Cloudbuild.V1.BuildOptions.PoolOption, deprecated: false
  field :logging, 11, type: Google.Devtools.Cloudbuild.V1.BuildOptions.LoggingMode, enum: true
  field :env, 12, repeated: true, type: :string
  field :secret_env, 13, repeated: true, type: :string, json_name: "secretEnv"
  field :volumes, 14, repeated: true, type: Google.Devtools.Cloudbuild.V1.Volume

  field :default_logs_bucket_behavior, 21,
    type: Google.Devtools.Cloudbuild.V1.BuildOptions.DefaultLogsBucketBehavior,
    json_name: "defaultLogsBucketBehavior",
    enum: true,
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.ReceiveTriggerWebhookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 5, type: :string
  field :body, 1, type: Google.Api.HttpBody
  field :project_id, 2, type: :string, json_name: "projectId"
  field :trigger, 3, type: :string
  field :secret, 4, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.ReceiveTriggerWebhookResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Devtools.Cloudbuild.V1.WorkerPool.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Cloudbuild.V1.WorkerPool do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :config, 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName"
  field :uid, 3, type: :string, deprecated: false

  field :annotations, 4,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.WorkerPool.AnnotationsEntry,
    map: true

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :state, 8,
    type: Google.Devtools.Cloudbuild.V1.WorkerPool.State,
    enum: true,
    deprecated: false

  field :private_pool_v1_config, 12,
    type: Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config,
    json_name: "privatePoolV1Config",
    oneof: 0

  field :etag, 11, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.WorkerConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :machine_type, 1, type: :string, json_name: "machineType"
  field :disk_size_gb, 2, type: :int64, json_name: "diskSizeGb"
end

defmodule Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :peered_network, 1, type: :string, json_name: "peeredNetwork", deprecated: false

  field :egress_option, 2,
    type: Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig.EgressOption,
    json_name: "egressOption",
    enum: true

  field :peered_network_ip_range, 3,
    type: :string,
    json_name: "peeredNetworkIpRange",
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :worker_config, 1,
    type: Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.WorkerConfig,
    json_name: "workerConfig"

  field :network_config, 2,
    type: Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig,
    json_name: "networkConfig"
end

defmodule Google.Devtools.Cloudbuild.V1.CreateWorkerPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :worker_pool, 2,
    type: Google.Devtools.Cloudbuild.V1.WorkerPool,
    json_name: "workerPool",
    deprecated: false

  field :worker_pool_id, 3, type: :string, json_name: "workerPoolId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Devtools.Cloudbuild.V1.GetWorkerPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V1.DeleteWorkerPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Devtools.Cloudbuild.V1.UpdateWorkerPoolRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :worker_pool, 1,
    type: Google.Devtools.Cloudbuild.V1.WorkerPool,
    json_name: "workerPool",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Devtools.Cloudbuild.V1.ListWorkerPoolsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Cloudbuild.V1.ListWorkerPoolsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :worker_pools, 1,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.WorkerPool,
    json_name: "workerPools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Cloudbuild.V1.CreateWorkerPoolOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :worker_pool, 1, type: :string, json_name: "workerPool", deprecated: false
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :complete_time, 3, type: Google.Protobuf.Timestamp, json_name: "completeTime"
end

defmodule Google.Devtools.Cloudbuild.V1.UpdateWorkerPoolOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :worker_pool, 1, type: :string, json_name: "workerPool", deprecated: false
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :complete_time, 3, type: Google.Protobuf.Timestamp, json_name: "completeTime"
end

defmodule Google.Devtools.Cloudbuild.V1.DeleteWorkerPoolOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :worker_pool, 1, type: :string, json_name: "workerPool", deprecated: false
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :complete_time, 3, type: Google.Protobuf.Timestamp, json_name: "completeTime"
end

defmodule Google.Devtools.Cloudbuild.V1.CloudBuild.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.cloudbuild.v1.CloudBuild",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateBuild, Google.Devtools.Cloudbuild.V1.CreateBuildRequest, Google.Longrunning.Operation

  rpc :GetBuild,
      Google.Devtools.Cloudbuild.V1.GetBuildRequest,
      Google.Devtools.Cloudbuild.V1.Build

  rpc :ListBuilds,
      Google.Devtools.Cloudbuild.V1.ListBuildsRequest,
      Google.Devtools.Cloudbuild.V1.ListBuildsResponse

  rpc :CancelBuild,
      Google.Devtools.Cloudbuild.V1.CancelBuildRequest,
      Google.Devtools.Cloudbuild.V1.Build

  rpc :RetryBuild, Google.Devtools.Cloudbuild.V1.RetryBuildRequest, Google.Longrunning.Operation

  rpc :ApproveBuild,
      Google.Devtools.Cloudbuild.V1.ApproveBuildRequest,
      Google.Longrunning.Operation

  rpc :CreateBuildTrigger,
      Google.Devtools.Cloudbuild.V1.CreateBuildTriggerRequest,
      Google.Devtools.Cloudbuild.V1.BuildTrigger

  rpc :GetBuildTrigger,
      Google.Devtools.Cloudbuild.V1.GetBuildTriggerRequest,
      Google.Devtools.Cloudbuild.V1.BuildTrigger

  rpc :ListBuildTriggers,
      Google.Devtools.Cloudbuild.V1.ListBuildTriggersRequest,
      Google.Devtools.Cloudbuild.V1.ListBuildTriggersResponse

  rpc :DeleteBuildTrigger,
      Google.Devtools.Cloudbuild.V1.DeleteBuildTriggerRequest,
      Google.Protobuf.Empty

  rpc :UpdateBuildTrigger,
      Google.Devtools.Cloudbuild.V1.UpdateBuildTriggerRequest,
      Google.Devtools.Cloudbuild.V1.BuildTrigger

  rpc :RunBuildTrigger,
      Google.Devtools.Cloudbuild.V1.RunBuildTriggerRequest,
      Google.Longrunning.Operation

  rpc :ReceiveTriggerWebhook,
      Google.Devtools.Cloudbuild.V1.ReceiveTriggerWebhookRequest,
      Google.Devtools.Cloudbuild.V1.ReceiveTriggerWebhookResponse

  rpc :CreateWorkerPool,
      Google.Devtools.Cloudbuild.V1.CreateWorkerPoolRequest,
      Google.Longrunning.Operation

  rpc :GetWorkerPool,
      Google.Devtools.Cloudbuild.V1.GetWorkerPoolRequest,
      Google.Devtools.Cloudbuild.V1.WorkerPool

  rpc :DeleteWorkerPool,
      Google.Devtools.Cloudbuild.V1.DeleteWorkerPoolRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkerPool,
      Google.Devtools.Cloudbuild.V1.UpdateWorkerPoolRequest,
      Google.Longrunning.Operation

  rpc :ListWorkerPools,
      Google.Devtools.Cloudbuild.V1.ListWorkerPoolsRequest,
      Google.Devtools.Cloudbuild.V1.ListWorkerPoolsResponse
end

defmodule Google.Devtools.Cloudbuild.V1.CloudBuild.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Cloudbuild.V1.CloudBuild.Service
end