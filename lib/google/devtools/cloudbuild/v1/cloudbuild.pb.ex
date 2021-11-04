defmodule Google.Devtools.Cloudbuild.V1.Build.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATUS_UNKNOWN
          | :PENDING
          | :QUEUED
          | :WORKING
          | :SUCCESS
          | :FAILURE
          | :INTERNAL_ERROR
          | :TIMEOUT
          | :CANCELLED
          | :EXPIRED

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :PRIORITY_UNSPECIFIED | :INFO | :WARNING | :ALERT

  field :PRIORITY_UNSPECIFIED, 0
  field :INFO, 1
  field :WARNING, 2
  field :ALERT, 3
end

defmodule Google.Devtools.Cloudbuild.V1.Build.FailureInfo.FailureType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FAILURE_TYPE_UNSPECIFIED
          | :PUSH_FAILED
          | :PUSH_IMAGE_NOT_FOUND
          | :PUSH_NOT_AUTHORIZED
          | :LOGGING_FAILURE
          | :USER_BUILD_STEP
          | :FETCH_SOURCE_FAILED

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
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :NONE | :SHA256 | :MD5

  field :NONE, 0
  field :SHA256, 1
  field :MD5, 2
end

defmodule Google.Devtools.Cloudbuild.V1.BuildApproval.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :APPROVED | :REJECTED | :CANCELLED

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :APPROVED, 2
  field :REJECTED, 3
  field :CANCELLED, 5
end

defmodule Google.Devtools.Cloudbuild.V1.ApprovalResult.Decision do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DECISION_UNSPECIFIED | :APPROVED | :REJECTED

  field :DECISION_UNSPECIFIED, 0
  field :APPROVED, 1
  field :REJECTED, 2
end

defmodule Google.Devtools.Cloudbuild.V1.PubsubConfig.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :OK
          | :SUBSCRIPTION_DELETED
          | :TOPIC_DELETED
          | :SUBSCRIPTION_MISCONFIGURED

  field :STATE_UNSPECIFIED, 0
  field :OK, 1
  field :SUBSCRIPTION_DELETED, 2
  field :TOPIC_DELETED, 3
  field :SUBSCRIPTION_MISCONFIGURED, 4
end

defmodule Google.Devtools.Cloudbuild.V1.WebhookConfig.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :OK | :SECRET_DELETED

  field :STATE_UNSPECIFIED, 0
  field :OK, 1
  field :SECRET_DELETED, 2
end

defmodule Google.Devtools.Cloudbuild.V1.PullRequestFilter.CommentControl do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMMENTS_DISABLED
          | :COMMENTS_ENABLED
          | :COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY

  field :COMMENTS_DISABLED, 0
  field :COMMENTS_ENABLED, 1
  field :COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY, 2
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.VerifyOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :NOT_VERIFIED | :VERIFIED

  field :NOT_VERIFIED, 0
  field :VERIFIED, 1
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.MachineType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :UNSPECIFIED | :N1_HIGHCPU_8 | :N1_HIGHCPU_32 | :E2_HIGHCPU_8 | :E2_HIGHCPU_32

  field :UNSPECIFIED, 0
  field :N1_HIGHCPU_8, 1
  field :N1_HIGHCPU_32, 2
  field :E2_HIGHCPU_8, 5
  field :E2_HIGHCPU_32, 6
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.SubstitutionOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :MUST_MATCH | :ALLOW_LOOSE

  field :MUST_MATCH, 0
  field :ALLOW_LOOSE, 1
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.LogStreamingOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STREAM_DEFAULT | :STREAM_ON | :STREAM_OFF

  field :STREAM_DEFAULT, 0
  field :STREAM_ON, 1
  field :STREAM_OFF, 2
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.LoggingMode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :LOGGING_UNSPECIFIED
          | :LEGACY
          | :GCS_ONLY
          | :STACKDRIVER_ONLY
          | :CLOUD_LOGGING_ONLY
          | :NONE

  field :LOGGING_UNSPECIFIED, 0
  field :LEGACY, 1
  field :GCS_ONLY, 2
  field :STACKDRIVER_ONLY, 3
  field :CLOUD_LOGGING_ONLY, 5
  field :NONE, 4
end

defmodule Google.Devtools.Cloudbuild.V1.WorkerPool.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :CREATING | :RUNNING | :DELETING | :DELETED

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :RUNNING, 2
  field :DELETING, 3
  field :DELETED, 4
end

defmodule Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig.EgressOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EGRESS_OPTION_UNSPECIFIED | :NO_PUBLIC_EGRESS | :PUBLIC_EGRESS

  field :EGRESS_OPTION_UNSPECIFIED, 0
  field :NO_PUBLIC_EGRESS, 1
  field :PUBLIC_EGRESS, 2
end

defmodule Google.Devtools.Cloudbuild.V1.RetryBuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          id: String.t()
        }

  defstruct [:name, :project_id, :id]

  field :name, 3, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :id, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.RunBuildTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          trigger_id: String.t(),
          source: Google.Devtools.Cloudbuild.V1.RepoSource.t() | nil
        }

  defstruct [:name, :project_id, :trigger_id, :source]

  field :name, 4, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :trigger_id, 2, type: :string, json_name: "triggerId"
  field :source, 3, type: Google.Devtools.Cloudbuild.V1.RepoSource

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.StorageSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer
        }

  defstruct [:bucket, :object, :generation]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.RepoSource.SubstitutionsEntry do
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

defmodule Google.Devtools.Cloudbuild.V1.RepoSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          revision:
            {:branch_name, String.t()} | {:tag_name, String.t()} | {:commit_sha, String.t()},
          project_id: String.t(),
          repo_name: String.t(),
          dir: String.t(),
          invert_regex: boolean,
          substitutions: %{String.t() => String.t()}
        }

  defstruct [:revision, :project_id, :repo_name, :dir, :invert_regex, :substitutions]

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

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.StorageSourceManifest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bucket: String.t(),
          object: String.t(),
          generation: integer
        }

  defstruct [:bucket, :object, :generation]

  field :bucket, 1, type: :string
  field :object, 2, type: :string
  field :generation, 3, type: :int64

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Source do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:storage_source, Google.Devtools.Cloudbuild.V1.StorageSource.t() | nil}
            | {:repo_source, Google.Devtools.Cloudbuild.V1.RepoSource.t() | nil}
            | {:storage_source_manifest,
               Google.Devtools.Cloudbuild.V1.StorageSourceManifest.t() | nil}
        }

  defstruct [:source]

  oneof :source, 0

  field :storage_source, 2,
    type: Google.Devtools.Cloudbuild.V1.StorageSource,
    json_name: "storageSource",
    oneof: 0

  field :repo_source, 3,
    type: Google.Devtools.Cloudbuild.V1.RepoSource,
    json_name: "repoSource",
    oneof: 0

  field :storage_source_manifest, 8,
    type: Google.Devtools.Cloudbuild.V1.StorageSourceManifest,
    json_name: "storageSourceManifest",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.BuiltImage do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          digest: String.t(),
          push_timing: Google.Devtools.Cloudbuild.V1.TimeSpan.t() | nil
        }

  defstruct [:name, :digest, :push_timing]

  field :name, 1, type: :string
  field :digest, 3, type: :string
  field :push_timing, 4, type: Google.Devtools.Cloudbuild.V1.TimeSpan, json_name: "pushTiming"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.BuildStep do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          env: [String.t()],
          args: [String.t()],
          dir: String.t(),
          id: String.t(),
          wait_for: [String.t()],
          entrypoint: String.t(),
          secret_env: [String.t()],
          volumes: [Google.Devtools.Cloudbuild.V1.Volume.t()],
          timing: Google.Devtools.Cloudbuild.V1.TimeSpan.t() | nil,
          pull_timing: Google.Devtools.Cloudbuild.V1.TimeSpan.t() | nil,
          timeout: Google.Protobuf.Duration.t() | nil,
          status: Google.Devtools.Cloudbuild.V1.Build.Status.t(),
          script: String.t()
        }

  defstruct [
    :name,
    :env,
    :args,
    :dir,
    :id,
    :wait_for,
    :entrypoint,
    :secret_env,
    :volumes,
    :timing,
    :pull_timing,
    :timeout,
    :status,
    :script
  ]

  field :name, 1, type: :string
  field :env, 2, repeated: true, type: :string
  field :args, 3, repeated: true, type: :string
  field :dir, 4, type: :string
  field :id, 5, type: :string
  field :wait_for, 6, repeated: true, type: :string, json_name: "waitFor"
  field :entrypoint, 7, type: :string
  field :secret_env, 8, repeated: true, type: :string, json_name: "secretEnv"
  field :volumes, 9, repeated: true, type: Google.Devtools.Cloudbuild.V1.Volume
  field :timing, 10, type: Google.Devtools.Cloudbuild.V1.TimeSpan
  field :pull_timing, 13, type: Google.Devtools.Cloudbuild.V1.TimeSpan, json_name: "pullTiming"
  field :timeout, 11, type: Google.Protobuf.Duration
  field :status, 12, type: Google.Devtools.Cloudbuild.V1.Build.Status, enum: true
  field :script, 19, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Volume do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          path: String.t()
        }

  defstruct [:name, :path]

  field :name, 1, type: :string
  field :path, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Results do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          images: [Google.Devtools.Cloudbuild.V1.BuiltImage.t()],
          build_step_images: [String.t()],
          artifact_manifest: String.t(),
          num_artifacts: integer,
          build_step_outputs: [binary],
          artifact_timing: Google.Devtools.Cloudbuild.V1.TimeSpan.t() | nil
        }

  defstruct [
    :images,
    :build_step_images,
    :artifact_manifest,
    :num_artifacts,
    :build_step_outputs,
    :artifact_timing
  ]

  field :images, 2, repeated: true, type: Google.Devtools.Cloudbuild.V1.BuiltImage
  field :build_step_images, 3, repeated: true, type: :string, json_name: "buildStepImages"
  field :artifact_manifest, 4, type: :string, json_name: "artifactManifest"
  field :num_artifacts, 5, type: :int64, json_name: "numArtifacts"
  field :build_step_outputs, 6, repeated: true, type: :bytes, json_name: "buildStepOutputs"

  field :artifact_timing, 7,
    type: Google.Devtools.Cloudbuild.V1.TimeSpan,
    json_name: "artifactTiming"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ArtifactResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          file_hash: [Google.Devtools.Cloudbuild.V1.FileHashes.t()]
        }

  defstruct [:location, :file_hash]

  field :location, 1, type: :string

  field :file_hash, 2,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.FileHashes,
    json_name: "fileHash"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Build.Warning do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: String.t(),
          priority: Google.Devtools.Cloudbuild.V1.Build.Warning.Priority.t()
        }

  defstruct [:text, :priority]

  field :text, 1, type: :string
  field :priority, 2, type: Google.Devtools.Cloudbuild.V1.Build.Warning.Priority, enum: true

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Build.FailureInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Devtools.Cloudbuild.V1.Build.FailureInfo.FailureType.t(),
          detail: String.t()
        }

  defstruct [:type, :detail]

  field :type, 1, type: Google.Devtools.Cloudbuild.V1.Build.FailureInfo.FailureType, enum: true
  field :detail, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Build.SubstitutionsEntry do
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

defmodule Google.Devtools.Cloudbuild.V1.Build.TimingEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Devtools.Cloudbuild.V1.TimeSpan.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Devtools.Cloudbuild.V1.TimeSpan

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Build do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          id: String.t(),
          project_id: String.t(),
          status: Google.Devtools.Cloudbuild.V1.Build.Status.t(),
          status_detail: String.t(),
          source: Google.Devtools.Cloudbuild.V1.Source.t() | nil,
          steps: [Google.Devtools.Cloudbuild.V1.BuildStep.t()],
          results: Google.Devtools.Cloudbuild.V1.Results.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          finish_time: Google.Protobuf.Timestamp.t() | nil,
          timeout: Google.Protobuf.Duration.t() | nil,
          images: [String.t()],
          queue_ttl: Google.Protobuf.Duration.t() | nil,
          artifacts: Google.Devtools.Cloudbuild.V1.Artifacts.t() | nil,
          logs_bucket: String.t(),
          source_provenance: Google.Devtools.Cloudbuild.V1.SourceProvenance.t() | nil,
          build_trigger_id: String.t(),
          options: Google.Devtools.Cloudbuild.V1.BuildOptions.t() | nil,
          log_url: String.t(),
          substitutions: %{String.t() => String.t()},
          tags: [String.t()],
          secrets: [Google.Devtools.Cloudbuild.V1.Secret.t()],
          timing: %{String.t() => Google.Devtools.Cloudbuild.V1.TimeSpan.t() | nil},
          approval: Google.Devtools.Cloudbuild.V1.BuildApproval.t() | nil,
          service_account: String.t(),
          available_secrets: Google.Devtools.Cloudbuild.V1.Secrets.t() | nil,
          warnings: [Google.Devtools.Cloudbuild.V1.Build.Warning.t()],
          failure_info: Google.Devtools.Cloudbuild.V1.Build.FailureInfo.t() | nil
        }

  defstruct [
    :name,
    :id,
    :project_id,
    :status,
    :status_detail,
    :source,
    :steps,
    :results,
    :create_time,
    :start_time,
    :finish_time,
    :timeout,
    :images,
    :queue_ttl,
    :artifacts,
    :logs_bucket,
    :source_provenance,
    :build_trigger_id,
    :options,
    :log_url,
    :substitutions,
    :tags,
    :secrets,
    :timing,
    :approval,
    :service_account,
    :available_secrets,
    :warnings,
    :failure_info
  ]

  field :name, 45, type: :string
  field :id, 1, type: :string
  field :project_id, 16, type: :string, json_name: "projectId"
  field :status, 2, type: Google.Devtools.Cloudbuild.V1.Build.Status, enum: true
  field :status_detail, 24, type: :string, json_name: "statusDetail"
  field :source, 3, type: Google.Devtools.Cloudbuild.V1.Source
  field :steps, 11, repeated: true, type: Google.Devtools.Cloudbuild.V1.BuildStep
  field :results, 10, type: Google.Devtools.Cloudbuild.V1.Results
  field :create_time, 6, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :start_time, 7, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :finish_time, 8, type: Google.Protobuf.Timestamp, json_name: "finishTime"
  field :timeout, 12, type: Google.Protobuf.Duration
  field :images, 13, repeated: true, type: :string
  field :queue_ttl, 40, type: Google.Protobuf.Duration, json_name: "queueTtl"
  field :artifacts, 37, type: Google.Devtools.Cloudbuild.V1.Artifacts
  field :logs_bucket, 19, type: :string, json_name: "logsBucket"

  field :source_provenance, 21,
    type: Google.Devtools.Cloudbuild.V1.SourceProvenance,
    json_name: "sourceProvenance"

  field :build_trigger_id, 22, type: :string, json_name: "buildTriggerId"
  field :options, 23, type: Google.Devtools.Cloudbuild.V1.BuildOptions
  field :log_url, 25, type: :string, json_name: "logUrl"

  field :substitutions, 29,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Build.SubstitutionsEntry,
    map: true

  field :tags, 31, repeated: true, type: :string
  field :secrets, 32, repeated: true, type: Google.Devtools.Cloudbuild.V1.Secret

  field :timing, 33,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Build.TimingEntry,
    map: true

  field :approval, 44, type: Google.Devtools.Cloudbuild.V1.BuildApproval
  field :service_account, 42, type: :string, json_name: "serviceAccount"

  field :available_secrets, 47,
    type: Google.Devtools.Cloudbuild.V1.Secrets,
    json_name: "availableSecrets"

  field :warnings, 49, repeated: true, type: Google.Devtools.Cloudbuild.V1.Build.Warning

  field :failure_info, 51,
    type: Google.Devtools.Cloudbuild.V1.Build.FailureInfo,
    json_name: "failureInfo"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Artifacts.ArtifactObjects do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          paths: [String.t()],
          timing: Google.Devtools.Cloudbuild.V1.TimeSpan.t() | nil
        }

  defstruct [:location, :paths, :timing]

  field :location, 1, type: :string
  field :paths, 2, repeated: true, type: :string
  field :timing, 3, type: Google.Devtools.Cloudbuild.V1.TimeSpan

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Artifacts do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          images: [String.t()],
          objects: Google.Devtools.Cloudbuild.V1.Artifacts.ArtifactObjects.t() | nil
        }

  defstruct [:images, :objects]

  field :images, 1, repeated: true, type: :string
  field :objects, 2, type: Google.Devtools.Cloudbuild.V1.Artifacts.ArtifactObjects

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.TimeSpan do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:start_time, :end_time]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build: Google.Devtools.Cloudbuild.V1.Build.t() | nil
        }

  defstruct [:build]

  field :build, 1, type: Google.Devtools.Cloudbuild.V1.Build

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.SourceProvenance.FileHashesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Devtools.Cloudbuild.V1.FileHashes.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Devtools.Cloudbuild.V1.FileHashes

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.SourceProvenance do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resolved_storage_source: Google.Devtools.Cloudbuild.V1.StorageSource.t() | nil,
          resolved_repo_source: Google.Devtools.Cloudbuild.V1.RepoSource.t() | nil,
          resolved_storage_source_manifest:
            Google.Devtools.Cloudbuild.V1.StorageSourceManifest.t() | nil,
          file_hashes: %{String.t() => Google.Devtools.Cloudbuild.V1.FileHashes.t() | nil}
        }

  defstruct [
    :resolved_storage_source,
    :resolved_repo_source,
    :resolved_storage_source_manifest,
    :file_hashes
  ]

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
    map: true

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.FileHashes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_hash: [Google.Devtools.Cloudbuild.V1.Hash.t()]
        }

  defstruct [:file_hash]

  field :file_hash, 1,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Hash,
    json_name: "fileHash"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Hash do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: Google.Devtools.Cloudbuild.V1.Hash.HashType.t(),
          value: binary
        }

  defstruct [:type, :value]

  field :type, 1, type: Google.Devtools.Cloudbuild.V1.Hash.HashType, enum: true
  field :value, 2, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Secrets do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          secret_manager: [Google.Devtools.Cloudbuild.V1.SecretManagerSecret.t()],
          inline: [Google.Devtools.Cloudbuild.V1.InlineSecret.t()]
        }

  defstruct [:secret_manager, :inline]

  field :secret_manager, 1,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.SecretManagerSecret,
    json_name: "secretManager"

  field :inline, 2, repeated: true, type: Google.Devtools.Cloudbuild.V1.InlineSecret

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.InlineSecret.EnvMapEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: binary
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.InlineSecret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t(),
          env_map: %{String.t() => binary}
        }

  defstruct [:kms_key_name, :env_map]

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"

  field :env_map, 2,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.InlineSecret.EnvMapEntry,
    json_name: "envMap",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.SecretManagerSecret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version_name: String.t(),
          env: String.t()
        }

  defstruct [:version_name, :env]

  field :version_name, 1, type: :string, json_name: "versionName"
  field :env, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Secret.SecretEnvEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: binary
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :bytes

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.Secret do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kms_key_name: String.t(),
          secret_env: %{String.t() => binary}
        }

  defstruct [:kms_key_name, :secret_env]

  field :kms_key_name, 1, type: :string, json_name: "kmsKeyName"

  field :secret_env, 3,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Secret.SecretEnvEntry,
    json_name: "secretEnv",
    map: true

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.CreateBuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          project_id: String.t(),
          build: Google.Devtools.Cloudbuild.V1.Build.t() | nil
        }

  defstruct [:parent, :project_id, :build]

  field :parent, 4, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :build, 2, type: Google.Devtools.Cloudbuild.V1.Build

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.GetBuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          id: String.t()
        }

  defstruct [:name, :project_id, :id]

  field :name, 4, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :id, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ListBuildsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          project_id: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :project_id, :page_size, :page_token, :filter]

  field :parent, 9, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 8, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ListBuildsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          builds: [Google.Devtools.Cloudbuild.V1.Build.t()],
          next_page_token: String.t()
        }

  defstruct [:builds, :next_page_token]

  field :builds, 1, repeated: true, type: Google.Devtools.Cloudbuild.V1.Build
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.CancelBuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          id: String.t()
        }

  defstruct [:name, :project_id, :id]

  field :name, 4, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :id, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ApproveBuildRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          approval_result: Google.Devtools.Cloudbuild.V1.ApprovalResult.t() | nil
        }

  defstruct [:name, :approval_result]

  field :name, 1, type: :string

  field :approval_result, 2,
    type: Google.Devtools.Cloudbuild.V1.ApprovalResult,
    json_name: "approvalResult"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.BuildApproval do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Devtools.Cloudbuild.V1.BuildApproval.State.t(),
          config: Google.Devtools.Cloudbuild.V1.ApprovalConfig.t() | nil,
          result: Google.Devtools.Cloudbuild.V1.ApprovalResult.t() | nil
        }

  defstruct [:state, :config, :result]

  field :state, 1, type: Google.Devtools.Cloudbuild.V1.BuildApproval.State, enum: true
  field :config, 2, type: Google.Devtools.Cloudbuild.V1.ApprovalConfig
  field :result, 3, type: Google.Devtools.Cloudbuild.V1.ApprovalResult

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ApprovalConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          approval_required: boolean
        }

  defstruct [:approval_required]

  field :approval_required, 1, type: :bool, json_name: "approvalRequired"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ApprovalResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          approver_account: String.t(),
          approval_time: Google.Protobuf.Timestamp.t() | nil,
          decision: Google.Devtools.Cloudbuild.V1.ApprovalResult.Decision.t(),
          comment: String.t(),
          url: String.t()
        }

  defstruct [:approver_account, :approval_time, :decision, :comment, :url]

  field :approver_account, 2, type: :string, json_name: "approverAccount"
  field :approval_time, 3, type: Google.Protobuf.Timestamp, json_name: "approvalTime"
  field :decision, 4, type: Google.Devtools.Cloudbuild.V1.ApprovalResult.Decision, enum: true
  field :comment, 5, type: :string
  field :url, 6, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.BuildTrigger.SubstitutionsEntry do
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

defmodule Google.Devtools.Cloudbuild.V1.BuildTrigger do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          build_template:
            {:autodetect, boolean}
            | {:build, Google.Devtools.Cloudbuild.V1.Build.t() | nil}
            | {:filename, String.t()},
          resource_name: String.t(),
          id: String.t(),
          description: String.t(),
          name: String.t(),
          tags: [String.t()],
          trigger_template: Google.Devtools.Cloudbuild.V1.RepoSource.t() | nil,
          github: Google.Devtools.Cloudbuild.V1.GitHubEventsConfig.t() | nil,
          pubsub_config: Google.Devtools.Cloudbuild.V1.PubsubConfig.t() | nil,
          webhook_config: Google.Devtools.Cloudbuild.V1.WebhookConfig.t() | nil,
          create_time: Google.Protobuf.Timestamp.t() | nil,
          disabled: boolean,
          substitutions: %{String.t() => String.t()},
          ignored_files: [String.t()],
          included_files: [String.t()],
          filter: String.t(),
          service_account: String.t()
        }

  defstruct [
    :build_template,
    :resource_name,
    :id,
    :description,
    :name,
    :tags,
    :trigger_template,
    :github,
    :pubsub_config,
    :webhook_config,
    :create_time,
    :disabled,
    :substitutions,
    :ignored_files,
    :included_files,
    :filter,
    :service_account
  ]

  oneof :build_template, 0

  field :resource_name, 34, type: :string, json_name: "resourceName"
  field :id, 1, type: :string
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
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :disabled, 9, type: :bool

  field :substitutions, 11,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.BuildTrigger.SubstitutionsEntry,
    map: true

  field :ignored_files, 15, repeated: true, type: :string, json_name: "ignoredFiles"
  field :included_files, 16, repeated: true, type: :string, json_name: "includedFiles"
  field :filter, 30, type: :string
  field :service_account, 33, type: :string, json_name: "serviceAccount"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.GitHubEventsConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          event:
            {:pull_request, Google.Devtools.Cloudbuild.V1.PullRequestFilter.t() | nil}
            | {:push, Google.Devtools.Cloudbuild.V1.PushFilter.t() | nil},
          installation_id: integer,
          owner: String.t(),
          name: String.t()
        }

  defstruct [:event, :installation_id, :owner, :name]

  oneof :event, 0

  field :installation_id, 1, type: :int64, deprecated: true, json_name: "installationId"
  field :owner, 6, type: :string
  field :name, 7, type: :string

  field :pull_request, 4,
    type: Google.Devtools.Cloudbuild.V1.PullRequestFilter,
    json_name: "pullRequest",
    oneof: 0

  field :push, 5, type: Google.Devtools.Cloudbuild.V1.PushFilter, oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.PubsubConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          subscription: String.t(),
          topic: String.t(),
          service_account_email: String.t(),
          state: Google.Devtools.Cloudbuild.V1.PubsubConfig.State.t()
        }

  defstruct [:subscription, :topic, :service_account_email, :state]

  field :subscription, 1, type: :string
  field :topic, 2, type: :string
  field :service_account_email, 3, type: :string, json_name: "serviceAccountEmail"
  field :state, 4, type: Google.Devtools.Cloudbuild.V1.PubsubConfig.State, enum: true

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.WebhookConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          auth_method: {:secret, String.t()},
          state: Google.Devtools.Cloudbuild.V1.WebhookConfig.State.t()
        }

  defstruct [:auth_method, :state]

  oneof :auth_method, 0

  field :secret, 3, type: :string, oneof: 0
  field :state, 4, type: Google.Devtools.Cloudbuild.V1.WebhookConfig.State, enum: true

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.PullRequestFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          git_ref: {:branch, String.t()},
          comment_control: Google.Devtools.Cloudbuild.V1.PullRequestFilter.CommentControl.t(),
          invert_regex: boolean
        }

  defstruct [:git_ref, :comment_control, :invert_regex]

  oneof :git_ref, 0

  field :branch, 2, type: :string, oneof: 0

  field :comment_control, 5,
    type: Google.Devtools.Cloudbuild.V1.PullRequestFilter.CommentControl,
    enum: true,
    json_name: "commentControl"

  field :invert_regex, 6, type: :bool, json_name: "invertRegex"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.PushFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          git_ref: {:branch, String.t()} | {:tag, String.t()},
          invert_regex: boolean
        }

  defstruct [:git_ref, :invert_regex]

  oneof :git_ref, 0

  field :branch, 2, type: :string, oneof: 0
  field :tag, 3, type: :string, oneof: 0
  field :invert_regex, 4, type: :bool, json_name: "invertRegex"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.CreateBuildTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          project_id: String.t(),
          trigger: Google.Devtools.Cloudbuild.V1.BuildTrigger.t() | nil
        }

  defstruct [:parent, :project_id, :trigger]

  field :parent, 3, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :trigger, 2, type: Google.Devtools.Cloudbuild.V1.BuildTrigger

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.GetBuildTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          trigger_id: String.t()
        }

  defstruct [:name, :project_id, :trigger_id]

  field :name, 3, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :trigger_id, 2, type: :string, json_name: "triggerId"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ListBuildTriggersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          project_id: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :project_id, :page_size, :page_token]

  field :parent, 4, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ListBuildTriggersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          triggers: [Google.Devtools.Cloudbuild.V1.BuildTrigger.t()],
          next_page_token: String.t()
        }

  defstruct [:triggers, :next_page_token]

  field :triggers, 1, repeated: true, type: Google.Devtools.Cloudbuild.V1.BuildTrigger
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.DeleteBuildTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_id: String.t(),
          trigger_id: String.t()
        }

  defstruct [:name, :project_id, :trigger_id]

  field :name, 3, type: :string
  field :project_id, 1, type: :string, json_name: "projectId"
  field :trigger_id, 2, type: :string, json_name: "triggerId"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.UpdateBuildTriggerRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          project_id: String.t(),
          trigger_id: String.t(),
          trigger: Google.Devtools.Cloudbuild.V1.BuildTrigger.t() | nil
        }

  defstruct [:project_id, :trigger_id, :trigger]

  field :project_id, 1, type: :string, json_name: "projectId"
  field :trigger_id, 2, type: :string, json_name: "triggerId"
  field :trigger, 3, type: Google.Devtools.Cloudbuild.V1.BuildTrigger

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions.PoolOption do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.BuildOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_provenance_hash: [Google.Devtools.Cloudbuild.V1.Hash.HashType.t()],
          requested_verify_option: Google.Devtools.Cloudbuild.V1.BuildOptions.VerifyOption.t(),
          machine_type: Google.Devtools.Cloudbuild.V1.BuildOptions.MachineType.t(),
          disk_size_gb: integer,
          substitution_option: Google.Devtools.Cloudbuild.V1.BuildOptions.SubstitutionOption.t(),
          dynamic_substitutions: boolean,
          log_streaming_option: Google.Devtools.Cloudbuild.V1.BuildOptions.LogStreamingOption.t(),
          worker_pool: String.t(),
          pool: Google.Devtools.Cloudbuild.V1.BuildOptions.PoolOption.t() | nil,
          logging: Google.Devtools.Cloudbuild.V1.BuildOptions.LoggingMode.t(),
          env: [String.t()],
          secret_env: [String.t()],
          volumes: [Google.Devtools.Cloudbuild.V1.Volume.t()]
        }

  defstruct [
    :source_provenance_hash,
    :requested_verify_option,
    :machine_type,
    :disk_size_gb,
    :substitution_option,
    :dynamic_substitutions,
    :log_streaming_option,
    :worker_pool,
    :pool,
    :logging,
    :env,
    :secret_env,
    :volumes
  ]

  field :source_provenance_hash, 1,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.Hash.HashType,
    enum: true,
    json_name: "sourceProvenanceHash"

  field :requested_verify_option, 2,
    type: Google.Devtools.Cloudbuild.V1.BuildOptions.VerifyOption,
    enum: true,
    json_name: "requestedVerifyOption"

  field :machine_type, 3,
    type: Google.Devtools.Cloudbuild.V1.BuildOptions.MachineType,
    enum: true,
    json_name: "machineType"

  field :disk_size_gb, 6, type: :int64, json_name: "diskSizeGb"

  field :substitution_option, 4,
    type: Google.Devtools.Cloudbuild.V1.BuildOptions.SubstitutionOption,
    enum: true,
    json_name: "substitutionOption"

  field :dynamic_substitutions, 17, type: :bool, json_name: "dynamicSubstitutions"

  field :log_streaming_option, 5,
    type: Google.Devtools.Cloudbuild.V1.BuildOptions.LogStreamingOption,
    enum: true,
    json_name: "logStreamingOption"

  field :worker_pool, 7, type: :string, deprecated: true, json_name: "workerPool"
  field :pool, 19, type: Google.Devtools.Cloudbuild.V1.BuildOptions.PoolOption
  field :logging, 11, type: Google.Devtools.Cloudbuild.V1.BuildOptions.LoggingMode, enum: true
  field :env, 12, repeated: true, type: :string
  field :secret_env, 13, repeated: true, type: :string, json_name: "secretEnv"
  field :volumes, 14, repeated: true, type: Google.Devtools.Cloudbuild.V1.Volume

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ReceiveTriggerWebhookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          body: Google.Api.HttpBody.t() | nil,
          project_id: String.t(),
          trigger: String.t(),
          secret: String.t()
        }

  defstruct [:name, :body, :project_id, :trigger, :secret]

  field :name, 5, type: :string
  field :body, 1, type: Google.Api.HttpBody
  field :project_id, 2, type: :string, json_name: "projectId"
  field :trigger, 3, type: :string
  field :secret, 4, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ReceiveTriggerWebhookResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.WorkerPool.AnnotationsEntry do
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

defmodule Google.Devtools.Cloudbuild.V1.WorkerPool do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config:
            {:private_pool_v1_config, Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.t() | nil},
          name: String.t(),
          display_name: String.t(),
          uid: String.t(),
          annotations: %{String.t() => String.t()},
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          delete_time: Google.Protobuf.Timestamp.t() | nil,
          state: Google.Devtools.Cloudbuild.V1.WorkerPool.State.t(),
          etag: String.t()
        }

  defstruct [
    :config,
    :name,
    :display_name,
    :uid,
    :annotations,
    :create_time,
    :update_time,
    :delete_time,
    :state,
    :etag
  ]

  oneof :config, 0

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :uid, 3, type: :string

  field :annotations, 4,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.WorkerPool.AnnotationsEntry,
    map: true

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :delete_time, 7, type: Google.Protobuf.Timestamp, json_name: "deleteTime"
  field :state, 8, type: Google.Devtools.Cloudbuild.V1.WorkerPool.State, enum: true

  field :private_pool_v1_config, 12,
    type: Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config,
    json_name: "privatePoolV1Config",
    oneof: 0

  field :etag, 11, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.WorkerConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          machine_type: String.t(),
          disk_size_gb: integer
        }

  defstruct [:machine_type, :disk_size_gb]

  field :machine_type, 1, type: :string, json_name: "machineType"
  field :disk_size_gb, 2, type: :int64, json_name: "diskSizeGb"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          peered_network: String.t(),
          egress_option:
            Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig.EgressOption.t()
        }

  defstruct [:peered_network, :egress_option]

  field :peered_network, 1, type: :string, json_name: "peeredNetwork"

  field :egress_option, 2,
    type: Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig.EgressOption,
    enum: true,
    json_name: "egressOption"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_config: Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.WorkerConfig.t() | nil,
          network_config:
            Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig.t() | nil
        }

  defstruct [:worker_config, :network_config]

  field :worker_config, 1,
    type: Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.WorkerConfig,
    json_name: "workerConfig"

  field :network_config, 2,
    type: Google.Devtools.Cloudbuild.V1.PrivatePoolV1Config.NetworkConfig,
    json_name: "networkConfig"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.CreateWorkerPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          worker_pool: Google.Devtools.Cloudbuild.V1.WorkerPool.t() | nil,
          worker_pool_id: String.t(),
          validate_only: boolean
        }

  defstruct [:parent, :worker_pool, :worker_pool_id, :validate_only]

  field :parent, 1, type: :string
  field :worker_pool, 2, type: Google.Devtools.Cloudbuild.V1.WorkerPool, json_name: "workerPool"
  field :worker_pool_id, 3, type: :string, json_name: "workerPoolId"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.GetWorkerPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.DeleteWorkerPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t(),
          allow_missing: boolean,
          validate_only: boolean
        }

  defstruct [:name, :etag, :allow_missing, :validate_only]

  field :name, 1, type: :string
  field :etag, 2, type: :string
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.UpdateWorkerPoolRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_pool: Google.Devtools.Cloudbuild.V1.WorkerPool.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          validate_only: boolean
        }

  defstruct [:worker_pool, :update_mask, :validate_only]

  field :worker_pool, 1, type: Google.Devtools.Cloudbuild.V1.WorkerPool, json_name: "workerPool"
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ListWorkerPoolsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.ListWorkerPoolsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_pools: [Google.Devtools.Cloudbuild.V1.WorkerPool.t()],
          next_page_token: String.t()
        }

  defstruct [:worker_pools, :next_page_token]

  field :worker_pools, 1,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V1.WorkerPool,
    json_name: "workerPools"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.CreateWorkerPoolOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_pool: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          complete_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:worker_pool, :create_time, :complete_time]

  field :worker_pool, 1, type: :string, json_name: "workerPool"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :complete_time, 3, type: Google.Protobuf.Timestamp, json_name: "completeTime"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.UpdateWorkerPoolOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_pool: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          complete_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:worker_pool, :create_time, :complete_time]

  field :worker_pool, 1, type: :string, json_name: "workerPool"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :complete_time, 3, type: Google.Protobuf.Timestamp, json_name: "completeTime"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.DeleteWorkerPoolOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          worker_pool: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          complete_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:worker_pool, :create_time, :complete_time]

  field :worker_pool, 1, type: :string, json_name: "workerPool"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :complete_time, 3, type: Google.Protobuf.Timestamp, json_name: "completeTime"

  def transform_module(), do: nil
end

defmodule Google.Devtools.Cloudbuild.V1.CloudBuild.Service do
  @moduledoc false
  use GRPC.Service, name: "google.devtools.cloudbuild.v1.CloudBuild"

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
