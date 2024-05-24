defmodule Google.Cloud.Developerconnect.V1.InstallationState.Stage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STAGE_UNSPECIFIED, 0
  field :PENDING_CREATE_APP, 1
  field :PENDING_USER_OAUTH, 2
  field :PENDING_INSTALL_APP, 3
  field :COMPLETE, 10
end

defmodule Google.Cloud.Developerconnect.V1.GitHubConfig.GitHubApp do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :GIT_HUB_APP_UNSPECIFIED, 0
  field :DEVELOPER_CONNECT, 1
  field :FIREBASE, 2
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitRefsRequest.RefType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :REF_TYPE_UNSPECIFIED, 0
  field :TAG, 1
  field :BRANCH, 2
end

defmodule Google.Cloud.Developerconnect.V1.Connection.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.Connection.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.Connection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :connection_config, 0

  field :github_config, 5,
    type: Google.Cloud.Developerconnect.V1.GitHubConfig,
    json_name: "githubConfig",
    oneof: 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 11,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.Connection.LabelsEntry,
    map: true,
    deprecated: false

  field :installation_state, 6,
    type: Google.Cloud.Developerconnect.V1.InstallationState,
    json_name: "installationState",
    deprecated: false

  field :disabled, 7, type: :bool, deprecated: false
  field :reconciling, 8, type: :bool, deprecated: false

  field :annotations, 9,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.Connection.AnnotationsEntry,
    map: true,
    deprecated: false

  field :etag, 10, type: :string, deprecated: false
  field :uid, 12, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.InstallationState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :stage, 1,
    type: Google.Cloud.Developerconnect.V1.InstallationState.Stage,
    enum: true,
    deprecated: false

  field :message, 2, type: :string, deprecated: false
  field :action_uri, 3, type: :string, json_name: "actionUri", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.GitHubConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :github_app, 1,
    type: Google.Cloud.Developerconnect.V1.GitHubConfig.GitHubApp,
    json_name: "githubApp",
    enum: true,
    deprecated: false

  field :authorizer_credential, 2,
    type: Google.Cloud.Developerconnect.V1.OAuthCredential,
    json_name: "authorizerCredential",
    deprecated: false

  field :app_installation_id, 3, type: :int64, json_name: "appInstallationId", deprecated: false
  field :installation_uri, 4, type: :string, json_name: "installationUri", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.OAuthCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :oauth_token_secret_version, 1,
    type: :string,
    json_name: "oauthTokenSecretVersion",
    deprecated: false

  field :username, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connections, 1, repeated: true, type: Google.Cloud.Developerconnect.V1.Connection
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GetConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.CreateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :connection_id, 2, type: :string, json_name: "connectionId", deprecated: false
  field :connection, 3, type: Google.Cloud.Developerconnect.V1.Connection, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.UpdateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :connection, 2, type: Google.Cloud.Developerconnect.V1.Connection, deprecated: false
  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.DeleteConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Developerconnect.V1.GitRepositoryLink.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GitRepositoryLink.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GitRepositoryLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :clone_uri, 2, type: :string, json_name: "cloneUri", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :delete_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "deleteTime",
    deprecated: false

  field :labels, 6,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.GitRepositoryLink.LabelsEntry,
    map: true,
    deprecated: false

  field :etag, 7, type: :string, deprecated: false
  field :reconciling, 8, type: :bool, deprecated: false

  field :annotations, 9,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.GitRepositoryLink.AnnotationsEntry,
    map: true,
    deprecated: false

  field :uid, 10, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.CreateGitRepositoryLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :git_repository_link, 2,
    type: Google.Cloud.Developerconnect.V1.GitRepositoryLink,
    json_name: "gitRepositoryLink",
    deprecated: false

  field :git_repository_link_id, 3,
    type: :string,
    json_name: "gitRepositoryLinkId",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.DeleteGitRepositoryLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListGitRepositoryLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListGitRepositoryLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :git_repository_links, 1,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.GitRepositoryLink,
    json_name: "gitRepositoryLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GetGitRepositoryLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchReadWriteTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :git_repository_link, 1, type: :string, json_name: "gitRepositoryLink", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchReadTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :git_repository_link, 1, type: :string, json_name: "gitRepositoryLink", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchReadTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :token, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :git_username, 3, type: :string, json_name: "gitUsername"
end

defmodule Google.Cloud.Developerconnect.V1.FetchReadWriteTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :token, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :git_username, 3, type: :string, json_name: "gitUsername"
end

defmodule Google.Cloud.Developerconnect.V1.FetchLinkableGitRepositoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connection, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchLinkableGitRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :linkable_git_repositories, 1,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.LinkableGitRepository,
    json_name: "linkableGitRepositories"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Developerconnect.V1.LinkableGitRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :clone_uri, 1, type: :string, json_name: "cloneUri"
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connection, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsResponse.Installation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :int64
  field :name, 2, type: :string
  field :type, 3, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :installations, 1,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsResponse.Installation
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitRefsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :git_repository_link, 1, type: :string, json_name: "gitRepositoryLink", deprecated: false

  field :ref_type, 2,
    type: Google.Cloud.Developerconnect.V1.FetchGitRefsRequest.RefType,
    json_name: "refType",
    enum: true,
    deprecated: false

  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 5, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitRefsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ref_names, 1, repeated: true, type: :string, json_name: "refNames"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Developerconnect.V1.DeveloperConnect.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.developerconnect.v1.DeveloperConnect",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListConnections,
      Google.Cloud.Developerconnect.V1.ListConnectionsRequest,
      Google.Cloud.Developerconnect.V1.ListConnectionsResponse

  rpc :GetConnection,
      Google.Cloud.Developerconnect.V1.GetConnectionRequest,
      Google.Cloud.Developerconnect.V1.Connection

  rpc :CreateConnection,
      Google.Cloud.Developerconnect.V1.CreateConnectionRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnection,
      Google.Cloud.Developerconnect.V1.UpdateConnectionRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnection,
      Google.Cloud.Developerconnect.V1.DeleteConnectionRequest,
      Google.Longrunning.Operation

  rpc :CreateGitRepositoryLink,
      Google.Cloud.Developerconnect.V1.CreateGitRepositoryLinkRequest,
      Google.Longrunning.Operation

  rpc :DeleteGitRepositoryLink,
      Google.Cloud.Developerconnect.V1.DeleteGitRepositoryLinkRequest,
      Google.Longrunning.Operation

  rpc :ListGitRepositoryLinks,
      Google.Cloud.Developerconnect.V1.ListGitRepositoryLinksRequest,
      Google.Cloud.Developerconnect.V1.ListGitRepositoryLinksResponse

  rpc :GetGitRepositoryLink,
      Google.Cloud.Developerconnect.V1.GetGitRepositoryLinkRequest,
      Google.Cloud.Developerconnect.V1.GitRepositoryLink

  rpc :FetchReadWriteToken,
      Google.Cloud.Developerconnect.V1.FetchReadWriteTokenRequest,
      Google.Cloud.Developerconnect.V1.FetchReadWriteTokenResponse

  rpc :FetchReadToken,
      Google.Cloud.Developerconnect.V1.FetchReadTokenRequest,
      Google.Cloud.Developerconnect.V1.FetchReadTokenResponse

  rpc :FetchLinkableGitRepositories,
      Google.Cloud.Developerconnect.V1.FetchLinkableGitRepositoriesRequest,
      Google.Cloud.Developerconnect.V1.FetchLinkableGitRepositoriesResponse

  rpc :FetchGitHubInstallations,
      Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsRequest,
      Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsResponse

  rpc :FetchGitRefs,
      Google.Cloud.Developerconnect.V1.FetchGitRefsRequest,
      Google.Cloud.Developerconnect.V1.FetchGitRefsResponse
end

defmodule Google.Cloud.Developerconnect.V1.DeveloperConnect.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Developerconnect.V1.DeveloperConnect.Service
end