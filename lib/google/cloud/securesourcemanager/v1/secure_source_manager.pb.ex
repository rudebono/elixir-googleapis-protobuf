defmodule Google.Cloud.Securesourcemanager.V1.Instance.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :DELETING, 3
  field :PAUSED, 4
  field :UNKNOWN, 6
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance.StateNote do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_NOTE_UNSPECIFIED, 0
  field :PAUSED_CMEK_UNAVAILABLE, 1
  field :INSTANCE_RESUMING, 2
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance.HostConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :html, 1, type: :string, deprecated: false
  field :api, 2, type: :string, deprecated: false
  field :git_http, 3, type: :string, json_name: "gitHttp", deprecated: false
  field :git_ssh, 4, type: :string, json_name: "gitSsh", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance.PrivateConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Securesourcemanager.V1.Instance.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Securesourcemanager.V1.Instance do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
end

defmodule Google.Cloud.Securesourcemanager.V1.Repository.URIs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :html, 1, type: :string, deprecated: false
  field :git_https, 2, type: :string, json_name: "gitHttps", deprecated: false
  field :api, 3, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.Repository.InitialConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :default_branch, 1, type: :string, json_name: "defaultBranch"
  field :gitignores, 2, repeated: true, type: :string
  field :license, 3, type: :string
  field :readme, 4, type: :string
end

defmodule Google.Cloud.Securesourcemanager.V1.Repository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Securesourcemanager.V1.BranchRule.Check do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :context, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.BranchRule.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Securesourcemanager.V1.BranchRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Securesourcemanager.V1.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Securesourcemanager.V1.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Securesourcemanager.V1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Securesourcemanager.V1.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Securesourcemanager.V1.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
  field :instance, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :repositories, 1, repeated: true, type: Google.Cloud.Securesourcemanager.V1.Repository
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.GetRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.CreateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :repository, 2, type: Google.Cloud.Securesourcemanager.V1.Repository, deprecated: false
  field :repository_id, 3, type: :string, json_name: "repositoryId", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeleteRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.GetBranchRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.CreateBranchRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :branch_rule, 2,
    type: Google.Cloud.Securesourcemanager.V1.BranchRule,
    json_name: "branchRule",
    deprecated: false

  field :branch_rule_id, 3, type: :string, json_name: "branchRuleId", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.ListBranchRulesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.DeleteBranchRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :allow_missing, 2, type: :bool, json_name: "allowMissing", deprecated: false
end

defmodule Google.Cloud.Securesourcemanager.V1.UpdateBranchRuleRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :branch_rules, 1,
    repeated: true,
    type: Google.Cloud.Securesourcemanager.V1.BranchRule,
    json_name: "branchRules"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securesourcemanager.V1.SecureSourceManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.securesourcemanager.v1.SecureSourceManager",
    protoc_gen_elixir_version: "0.14.1"

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

  rpc :DeleteRepository,
      Google.Cloud.Securesourcemanager.V1.DeleteRepositoryRequest,
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
end

defmodule Google.Cloud.Securesourcemanager.V1.SecureSourceManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Securesourcemanager.V1.SecureSourceManager.Service
end
