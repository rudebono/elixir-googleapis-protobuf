defmodule Google.Cloud.Securesourcemanager.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :PAUSED, 4
  field :UNKNOWN, 6
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance.StateNote do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_NOTE_UNSPECIFIED, 0
  field :PAUSED_CMEK_UNAVAILABLE, 1
  field :INSTANCE_RESUMING, 2
end

defmodule Google.Cloud.Securesourcemanager.V1.Hook.HookEventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :PUSH, 1
  field :PULL_REQUEST, 2
end

defmodule Google.Cloud.Securesourcemanager.V1.PullRequest.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :OPEN, 1
  field :CLOSED, 2
  field :MERGED, 3
end

defmodule Google.Cloud.Securesourcemanager.V1.FileDiff.Action do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTION_UNSPECIFIED, 0
  field :ADDED, 1
  field :MODIFIED, 2
  field :DELETED, 3
end

defmodule Google.Cloud.Securesourcemanager.V1.Issue.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :OPEN, 1
  field :CLOSED, 2
end

defmodule Google.Cloud.Securesourcemanager.V1.PullRequestComment.Review.ActionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTION_TYPE_UNSPECIFIED, 0
  field :COMMENT, 1
  field :CHANGE_REQUESTED, 2
  field :APPROVED, 3
end

defmodule Google.Cloud.Securesourcemanager.V1.TreeEntry.ObjectType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OBJECT_TYPE_UNSPECIFIED, 0
  field :TREE, 1
  field :BLOB, 2
  field :COMMIT, 3
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance.HostConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :html, 1, type: :string, deprecated: false
  field :api, 2, type: :string, deprecated: false
  field :git_http, 3, type: :string, json_name: "gitHttp", deprecated: false
  field :git_ssh, 4, type: :string, json_name: "gitSsh", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance.PrivateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :is_private, 1, type: :bool, json_name: "isPrivate", deprecated: false
  field :ca_pool, 2, type: :string, json_name: "caPool", deprecated: false

  field :http_service_attachment, 3,
    type: :string,
    json_name: "httpServiceAttachment",
    deprecated: false

  field :ssh_service_attachment, 4,
    type: :string,
    json_name: "sshServiceAttachment",
    deprecated: false

  field :psc_allowed_projects, 6,
    repeated: true,
    type: :string,
    json_name: "pscAllowedProjects",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance.WorkforceIdentityFederationConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.Instance.LabelsEntry,
    map: true,
    deprecated: false

  field :private_config, 13,
    type: Google.Cloud.Securesourcemanager.V1.Instance.PrivateConfig,
    json_name: "privateConfig",
    deprecated: false

  field :state, 5,
    type: Google.Cloud.Securesourcemanager.V1.Instance.State,
    enum: true,
    deprecated: false

  field :state_note, 10,
    type: Google.Cloud.Securesourcemanager.V1.Instance.StateNote,
    json_name: "stateNote",
    enum: true,
    deprecated: false

  field :kms_key, 11, type: :string, json_name: "kmsKey", deprecated: false

  field :host_config, 9,
    type: Google.Cloud.Securesourcemanager.V1.Instance.HostConfig,
    json_name: "hostConfig",
    deprecated: false

  field :workforce_identity_federation_config, 14,
    type: Google.Cloud.Securesourcemanager.V1.Instance.WorkforceIdentityFederationConfig,
    json_name: "workforceIdentityFederationConfig",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Repository.URIs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :html, 1, type: :string, deprecated: false
  field :git_https, 2, type: :string, json_name: "gitHttps", deprecated: false
  field :api, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Repository.InitialConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :default_branch, 1, type: :string, json_name: "defaultBranch"
  field :gitignores, 2, repeated: true, type: :string
  field :license, 3, type: :string
  field :readme, 4, type: :string
end

defmodule Google.Cloud.Securesourcemanager.V1.Repository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :instance, 3, type: :string, deprecated: false
  field :uid, 4, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :etag, 8, type: :string, deprecated: false
  field :uris, 9, type: Google.Cloud.Securesourcemanager.V1.Repository.URIs, deprecated: false

  field :initial_config, 10,
    type: Google.Cloud.Securesourcemanager.V1.Repository.InitialConfig,
    json_name: "initialConfig",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Hook.PushOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :branch_filter, 1, type: :string, json_name: "branchFilter", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Hook do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_uri, 2, type: :string, json_name: "targetUri", deprecated: false
  field :disabled, 3, type: :bool, deprecated: false

  field :events, 4,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.Hook.HookEventType,
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :uid, 7, type: :string, deprecated: false

  field :push_option, 9,
    type: Google.Cloud.Securesourcemanager.V1.Hook.PushOption,
    json_name: "pushOption",
    deprecated: false

  field :sensitive_query_string, 10,
    type: :string,
    json_name: "sensitiveQueryString",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.BranchRule.Check do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :context, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.BranchRule.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Securesourcemanager.V1.BranchRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :uid, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.BranchRule.AnnotationsEntry,
    map: true,
    deprecated: false

  field :etag, 6, type: :string, deprecated: false
  field :include_pattern, 7, type: :string, json_name: "includePattern", deprecated: false
  field :disabled, 8, type: :bool, deprecated: false
  field :require_pull_request, 9, type: :bool, json_name: "requirePullRequest", deprecated: false

  field :minimum_reviews_count, 10,
    type: :int32,
    json_name: "minimumReviewsCount",
    deprecated: false

  field :minimum_approvals_count, 11,
    type: :int32,
    json_name: "minimumApprovalsCount",
    deprecated: false

  field :require_comments_resolved, 12,
    type: :bool,
    json_name: "requireCommentsResolved",
    deprecated: false

  field :allow_stale_reviews, 15, type: :bool, json_name: "allowStaleReviews", deprecated: false

  field :require_linear_history, 13,
    type: :bool,
    json_name: "requireLinearHistory",
    deprecated: false

  field :required_status_checks, 14,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.BranchRule.Check,
    json_name: "requiredStatusChecks",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.PullRequest.Branch do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ref, 1, type: :string, deprecated: false
  field :sha, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.PullRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :title, 2, type: :string, deprecated: false
  field :body, 3, type: :string, deprecated: false
  field :base, 4, type: Google.Cloud.Securesourcemanager.V1.PullRequest.Branch, deprecated: false
  field :head, 5, type: Google.Cloud.Securesourcemanager.V1.PullRequest.Branch, deprecated: false

  field :state, 6,
    type: Google.Cloud.Securesourcemanager.V1.PullRequest.State,
    enum: true,
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :close_time, 9, type: Google.Protobuf.Timestamp, json_name: "closeTime", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.FileDiff do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :action, 2,
    type: Google.Cloud.Securesourcemanager.V1.FileDiff.Action,
    enum: true,
    deprecated: false

  field :sha, 3, type: :string, deprecated: false
  field :patch, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Issue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :title, 2, type: :string, deprecated: false
  field :body, 3, type: :string, deprecated: false

  field :state, 4,
    type: Google.Cloud.Securesourcemanager.V1.Issue.State,
    enum: true,
    deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :close_time, 7, type: Google.Protobuf.Timestamp, json_name: "closeTime", deprecated: false
  field :etag, 8, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.IssueComment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :body, 2, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.PullRequestComment.Review do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :action_type, 1,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment.Review.ActionType,
    json_name: "actionType",
    enum: true,
    deprecated: false

  field :body, 2, type: :string, deprecated: false

  field :effective_commit_sha, 4,
    type: :string,
    json_name: "effectiveCommitSha",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.PullRequestComment.Comment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :body, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.PullRequestComment.Code do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :body, 1, type: :string, deprecated: false
  field :reply, 2, type: :string, deprecated: false

  field :position, 3,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment.Position,
    deprecated: false

  field :effective_root_comment, 4,
    type: :string,
    json_name: "effectiveRootComment",
    deprecated: false

  field :resolved, 5, type: :bool, deprecated: false

  field :effective_commit_sha, 7,
    type: :string,
    json_name: "effectiveCommitSha",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.PullRequestComment.Position do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :path, 1, type: :string, deprecated: false
  field :line, 2, type: :int64, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.PullRequestComment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :comment_detail, 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :review, 4,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment.Review,
    oneof: 0,
    deprecated: false

  field :comment, 5,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment.Comment,
    oneof: 0,
    deprecated: false

  field :code, 6,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment.Code,
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Securesourcemanager.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Securesourcemanager.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Securesourcemanager.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Securesourcemanager.V1.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListRepositoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :instance, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :repositories, 1, repeated: true, type: Google.Cloud.Securesourcemanager.V1.Repository
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.GetRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.CreateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :repository, 2, type: Google.Cloud.Securesourcemanager.V1.Repository, deprecated: false
  field :repository_id, 3, type: :string, json_name: "repositoryId", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.UpdateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :repository, 2, type: Google.Cloud.Securesourcemanager.V1.Repository, deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeleteRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListHooksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListHooksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hooks, 1, repeated: true, type: Google.Cloud.Securesourcemanager.V1.Hook
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.GetHookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.CreateHookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :hook, 2, type: Google.Cloud.Securesourcemanager.V1.Hook, deprecated: false
  field :hook_id, 3, type: :string, json_name: "hookId", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.UpdateHookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :hook, 2, type: Google.Cloud.Securesourcemanager.V1.Hook, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeleteHookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.GetBranchRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.CreateBranchRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :branch_rule, 2,
    type: Google.Cloud.Securesourcemanager.V1.BranchRule,
    json_name: "branchRule",
    deprecated: false

  field :branch_rule_id, 3, type: :string, json_name: "branchRuleId", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListBranchRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeleteBranchRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.UpdateBranchRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :branch_rule, 1,
    type: Google.Cloud.Securesourcemanager.V1.BranchRule,
    json_name: "branchRule",
    deprecated: false

  field :validate_only, 2, type: :bool, json_name: "validateOnly", deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListBranchRulesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :branch_rules, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.BranchRule,
    json_name: "branchRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.CreatePullRequestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :pull_request, 2,
    type: Google.Cloud.Securesourcemanager.V1.PullRequest,
    json_name: "pullRequest",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.GetPullRequestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListPullRequestsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListPullRequestsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pull_requests, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.PullRequest,
    json_name: "pullRequests"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.UpdatePullRequestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pull_request, 1,
    type: Google.Cloud.Securesourcemanager.V1.PullRequest,
    json_name: "pullRequest",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.MergePullRequestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.OpenPullRequestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ClosePullRequestRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListPullRequestFileDiffsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListPullRequestFileDiffsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :file_diffs, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.FileDiff,
    json_name: "fileDiffs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.CreateIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :issue, 2, type: Google.Cloud.Securesourcemanager.V1.Issue, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.GetIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListIssuesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListIssuesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issues, 1, repeated: true, type: Google.Cloud.Securesourcemanager.V1.Issue
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.UpdateIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issue, 1, type: Google.Cloud.Securesourcemanager.V1.Issue, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeleteIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.CloseIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.OpenIssueRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.TreeEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Cloud.Securesourcemanager.V1.TreeEntry.ObjectType,
    enum: true,
    deprecated: false

  field :sha, 2, type: :string, deprecated: false
  field :path, 3, type: :string, deprecated: false
  field :mode, 4, type: :string, deprecated: false
  field :size, 5, type: :int64, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.FetchTreeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false
  field :ref, 2, type: :string, deprecated: false
  field :recursive, 3, type: :bool, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.FetchTreeResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :tree_entries, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.TreeEntry,
    json_name: "treeEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.FetchBlobRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false
  field :sha, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.FetchBlobResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :sha, 1, type: :string
  field :content, 2, type: :string
end

defmodule Google.Cloud.Securesourcemanager.V1.ListPullRequestCommentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListPullRequestCommentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pull_request_comments, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment,
    json_name: "pullRequestComments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.CreatePullRequestCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :pull_request_comment, 2,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment,
    json_name: "pullRequestComment",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.BatchCreatePullRequestCommentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.CreatePullRequestCommentRequest,
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.BatchCreatePullRequestCommentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pull_request_comments, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment,
    json_name: "pullRequestComments"
end

defmodule Google.Cloud.Securesourcemanager.V1.UpdatePullRequestCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pull_request_comment, 1,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment,
    json_name: "pullRequestComment",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeletePullRequestCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.GetPullRequestCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ResolvePullRequestCommentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
  field :auto_fill, 3, type: :bool, json_name: "autoFill", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ResolvePullRequestCommentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pull_request_comments, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment,
    json_name: "pullRequestComments"
end

defmodule Google.Cloud.Securesourcemanager.V1.UnresolvePullRequestCommentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
  field :auto_fill, 3, type: :bool, json_name: "autoFill", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.UnresolvePullRequestCommentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pull_request_comments, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.PullRequestComment,
    json_name: "pullRequestComments"
end

defmodule Google.Cloud.Securesourcemanager.V1.CreateIssueCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :issue_comment, 2,
    type: Google.Cloud.Securesourcemanager.V1.IssueComment,
    json_name: "issueComment",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.GetIssueCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListIssueCommentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListIssueCommentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issue_comments, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.IssueComment,
    json_name: "issueComments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.UpdateIssueCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :issue_comment, 1,
    type: Google.Cloud.Securesourcemanager.V1.IssueComment,
    json_name: "issueComment",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeleteIssueCommentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.SecureSourceManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.securesourcemanager.v1.SecureSourceManager",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListInstances,
      Google.Cloud.Securesourcemanager.V1.ListInstancesRequest,
      Google.Cloud.Securesourcemanager.V1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Securesourcemanager.V1.GetInstanceRequest,
      Google.Cloud.Securesourcemanager.V1.Instance

  rpc :CreateInstance,
      Google.Cloud.Securesourcemanager.V1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Securesourcemanager.V1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :ListRepositories,
      Google.Cloud.Securesourcemanager.V1.ListRepositoriesRequest,
      Google.Cloud.Securesourcemanager.V1.ListRepositoriesResponse

  rpc :GetRepository,
      Google.Cloud.Securesourcemanager.V1.GetRepositoryRequest,
      Google.Cloud.Securesourcemanager.V1.Repository

  rpc :CreateRepository,
      Google.Cloud.Securesourcemanager.V1.CreateRepositoryRequest,
      Google.Longrunning.Operation

  rpc :UpdateRepository,
      Google.Cloud.Securesourcemanager.V1.UpdateRepositoryRequest,
      Google.Longrunning.Operation

  rpc :DeleteRepository,
      Google.Cloud.Securesourcemanager.V1.DeleteRepositoryRequest,
      Google.Longrunning.Operation

  rpc :ListHooks,
      Google.Cloud.Securesourcemanager.V1.ListHooksRequest,
      Google.Cloud.Securesourcemanager.V1.ListHooksResponse

  rpc :GetHook,
      Google.Cloud.Securesourcemanager.V1.GetHookRequest,
      Google.Cloud.Securesourcemanager.V1.Hook

  rpc :CreateHook,
      Google.Cloud.Securesourcemanager.V1.CreateHookRequest,
      Google.Longrunning.Operation

  rpc :UpdateHook,
      Google.Cloud.Securesourcemanager.V1.UpdateHookRequest,
      Google.Longrunning.Operation

  rpc :DeleteHook,
      Google.Cloud.Securesourcemanager.V1.DeleteHookRequest,
      Google.Longrunning.Operation

  rpc :GetIamPolicyRepo, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicyRepo, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissionsRepo,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :CreateBranchRule,
      Google.Cloud.Securesourcemanager.V1.CreateBranchRuleRequest,
      Google.Longrunning.Operation

  rpc :ListBranchRules,
      Google.Cloud.Securesourcemanager.V1.ListBranchRulesRequest,
      Google.Cloud.Securesourcemanager.V1.ListBranchRulesResponse

  rpc :GetBranchRule,
      Google.Cloud.Securesourcemanager.V1.GetBranchRuleRequest,
      Google.Cloud.Securesourcemanager.V1.BranchRule

  rpc :UpdateBranchRule,
      Google.Cloud.Securesourcemanager.V1.UpdateBranchRuleRequest,
      Google.Longrunning.Operation

  rpc :DeleteBranchRule,
      Google.Cloud.Securesourcemanager.V1.DeleteBranchRuleRequest,
      Google.Longrunning.Operation

  rpc :CreatePullRequest,
      Google.Cloud.Securesourcemanager.V1.CreatePullRequestRequest,
      Google.Longrunning.Operation

  rpc :GetPullRequest,
      Google.Cloud.Securesourcemanager.V1.GetPullRequestRequest,
      Google.Cloud.Securesourcemanager.V1.PullRequest

  rpc :ListPullRequests,
      Google.Cloud.Securesourcemanager.V1.ListPullRequestsRequest,
      Google.Cloud.Securesourcemanager.V1.ListPullRequestsResponse

  rpc :UpdatePullRequest,
      Google.Cloud.Securesourcemanager.V1.UpdatePullRequestRequest,
      Google.Longrunning.Operation

  rpc :MergePullRequest,
      Google.Cloud.Securesourcemanager.V1.MergePullRequestRequest,
      Google.Longrunning.Operation

  rpc :OpenPullRequest,
      Google.Cloud.Securesourcemanager.V1.OpenPullRequestRequest,
      Google.Longrunning.Operation

  rpc :ClosePullRequest,
      Google.Cloud.Securesourcemanager.V1.ClosePullRequestRequest,
      Google.Longrunning.Operation

  rpc :ListPullRequestFileDiffs,
      Google.Cloud.Securesourcemanager.V1.ListPullRequestFileDiffsRequest,
      Google.Cloud.Securesourcemanager.V1.ListPullRequestFileDiffsResponse

  rpc :FetchTree,
      Google.Cloud.Securesourcemanager.V1.FetchTreeRequest,
      Google.Cloud.Securesourcemanager.V1.FetchTreeResponse

  rpc :FetchBlob,
      Google.Cloud.Securesourcemanager.V1.FetchBlobRequest,
      Google.Cloud.Securesourcemanager.V1.FetchBlobResponse

  rpc :CreateIssue,
      Google.Cloud.Securesourcemanager.V1.CreateIssueRequest,
      Google.Longrunning.Operation

  rpc :GetIssue,
      Google.Cloud.Securesourcemanager.V1.GetIssueRequest,
      Google.Cloud.Securesourcemanager.V1.Issue

  rpc :ListIssues,
      Google.Cloud.Securesourcemanager.V1.ListIssuesRequest,
      Google.Cloud.Securesourcemanager.V1.ListIssuesResponse

  rpc :UpdateIssue,
      Google.Cloud.Securesourcemanager.V1.UpdateIssueRequest,
      Google.Longrunning.Operation

  rpc :DeleteIssue,
      Google.Cloud.Securesourcemanager.V1.DeleteIssueRequest,
      Google.Longrunning.Operation

  rpc :OpenIssue,
      Google.Cloud.Securesourcemanager.V1.OpenIssueRequest,
      Google.Longrunning.Operation

  rpc :CloseIssue,
      Google.Cloud.Securesourcemanager.V1.CloseIssueRequest,
      Google.Longrunning.Operation

  rpc :GetPullRequestComment,
      Google.Cloud.Securesourcemanager.V1.GetPullRequestCommentRequest,
      Google.Cloud.Securesourcemanager.V1.PullRequestComment

  rpc :ListPullRequestComments,
      Google.Cloud.Securesourcemanager.V1.ListPullRequestCommentsRequest,
      Google.Cloud.Securesourcemanager.V1.ListPullRequestCommentsResponse

  rpc :CreatePullRequestComment,
      Google.Cloud.Securesourcemanager.V1.CreatePullRequestCommentRequest,
      Google.Longrunning.Operation

  rpc :UpdatePullRequestComment,
      Google.Cloud.Securesourcemanager.V1.UpdatePullRequestCommentRequest,
      Google.Longrunning.Operation

  rpc :DeletePullRequestComment,
      Google.Cloud.Securesourcemanager.V1.DeletePullRequestCommentRequest,
      Google.Longrunning.Operation

  rpc :BatchCreatePullRequestComments,
      Google.Cloud.Securesourcemanager.V1.BatchCreatePullRequestCommentsRequest,
      Google.Longrunning.Operation

  rpc :ResolvePullRequestComments,
      Google.Cloud.Securesourcemanager.V1.ResolvePullRequestCommentsRequest,
      Google.Longrunning.Operation

  rpc :UnresolvePullRequestComments,
      Google.Cloud.Securesourcemanager.V1.UnresolvePullRequestCommentsRequest,
      Google.Longrunning.Operation

  rpc :CreateIssueComment,
      Google.Cloud.Securesourcemanager.V1.CreateIssueCommentRequest,
      Google.Longrunning.Operation

  rpc :GetIssueComment,
      Google.Cloud.Securesourcemanager.V1.GetIssueCommentRequest,
      Google.Cloud.Securesourcemanager.V1.IssueComment

  rpc :ListIssueComments,
      Google.Cloud.Securesourcemanager.V1.ListIssueCommentsRequest,
      Google.Cloud.Securesourcemanager.V1.ListIssueCommentsResponse

  rpc :UpdateIssueComment,
      Google.Cloud.Securesourcemanager.V1.UpdateIssueCommentRequest,
      Google.Longrunning.Operation

  rpc :DeleteIssueComment,
      Google.Cloud.Securesourcemanager.V1.DeleteIssueCommentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Securesourcemanager.V1.SecureSourceManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Securesourcemanager.V1.SecureSourceManager.Service
end
