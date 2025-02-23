defmodule Google.Devtools.Cloudbuild.V2.InstallationState.Stage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STAGE_UNSPECIFIED, 0
  field :PENDING_CREATE_APP, 1
  field :PENDING_USER_OAUTH, 2
  field :PENDING_INSTALL_APP, 3
  field :COMPLETE, 10
end

defmodule Google.Devtools.Cloudbuild.V2.FetchGitRefsRequest.RefType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REF_TYPE_UNSPECIFIED, 0
  field :TAG, 1
  field :BRANCH, 2
end

defmodule Google.Devtools.Cloudbuild.V2.Connection.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Cloudbuild.V2.Connection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :connection_config, 0

  field :name, 1, type: :string, deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :github_config, 5,
    type: Google.Devtools.Cloudbuild.V2.GitHubConfig,
    json_name: "githubConfig",
    oneof: 0

  field :github_enterprise_config, 6,
    type: Google.Devtools.Cloudbuild.V2.GitHubEnterpriseConfig,
    json_name: "githubEnterpriseConfig",
    oneof: 0

  field :gitlab_config, 7,
    type: Google.Devtools.Cloudbuild.V2.GitLabConfig,
    json_name: "gitlabConfig",
    oneof: 0

  field :bitbucket_data_center_config, 8,
    type: Google.Devtools.Cloudbuild.V2.BitbucketDataCenterConfig,
    json_name: "bitbucketDataCenterConfig",
    oneof: 0

  field :bitbucket_cloud_config, 9,
    type: Google.Devtools.Cloudbuild.V2.BitbucketCloudConfig,
    json_name: "bitbucketCloudConfig",
    oneof: 0

  field :installation_state, 12,
    type: Google.Devtools.Cloudbuild.V2.InstallationState,
    json_name: "installationState",
    deprecated: false

  field :disabled, 13, type: :bool
  field :reconciling, 14, type: :bool, deprecated: false

  field :annotations, 15,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V2.Connection.AnnotationsEntry,
    map: true

  field :etag, 16, type: :string
end

defmodule Google.Devtools.Cloudbuild.V2.InstallationState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stage, 1,
    type: Google.Devtools.Cloudbuild.V2.InstallationState.Stage,
    enum: true,
    deprecated: false

  field :message, 2, type: :string, deprecated: false
  field :action_uri, 3, type: :string, json_name: "actionUri", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.FetchLinkableRepositoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connection, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Cloudbuild.V2.FetchLinkableRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :repositories, 1, repeated: true, type: Google.Devtools.Cloudbuild.V2.Repository
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Cloudbuild.V2.GitHubConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :authorizer_credential, 1,
    type: Google.Devtools.Cloudbuild.V2.OAuthCredential,
    json_name: "authorizerCredential"

  field :app_installation_id, 2, type: :int64, json_name: "appInstallationId"
end

defmodule Google.Devtools.Cloudbuild.V2.GitHubEnterpriseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_uri, 1, type: :string, json_name: "hostUri", deprecated: false
  field :api_key, 12, type: :string, json_name: "apiKey", deprecated: false
  field :app_id, 2, type: :int64, json_name: "appId"
  field :app_slug, 13, type: :string, json_name: "appSlug"

  field :private_key_secret_version, 4,
    type: :string,
    json_name: "privateKeySecretVersion",
    deprecated: false

  field :webhook_secret_secret_version, 5,
    type: :string,
    json_name: "webhookSecretSecretVersion",
    deprecated: false

  field :app_installation_id, 9, type: :int64, json_name: "appInstallationId"

  field :service_directory_config, 10,
    type: Google.Devtools.Cloudbuild.V2.ServiceDirectoryConfig,
    json_name: "serviceDirectoryConfig"

  field :ssl_ca, 11, type: :string, json_name: "sslCa"
  field :server_version, 14, type: :string, json_name: "serverVersion", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.GitLabConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_uri, 1, type: :string, json_name: "hostUri"

  field :webhook_secret_secret_version, 2,
    type: :string,
    json_name: "webhookSecretSecretVersion",
    deprecated: false

  field :read_authorizer_credential, 3,
    type: Google.Devtools.Cloudbuild.V2.UserCredential,
    json_name: "readAuthorizerCredential",
    deprecated: false

  field :authorizer_credential, 4,
    type: Google.Devtools.Cloudbuild.V2.UserCredential,
    json_name: "authorizerCredential",
    deprecated: false

  field :service_directory_config, 5,
    type: Google.Devtools.Cloudbuild.V2.ServiceDirectoryConfig,
    json_name: "serviceDirectoryConfig"

  field :ssl_ca, 6, type: :string, json_name: "sslCa"
  field :server_version, 7, type: :string, json_name: "serverVersion", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.BitbucketDataCenterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_uri, 1, type: :string, json_name: "hostUri", deprecated: false

  field :webhook_secret_secret_version, 2,
    type: :string,
    json_name: "webhookSecretSecretVersion",
    deprecated: false

  field :read_authorizer_credential, 3,
    type: Google.Devtools.Cloudbuild.V2.UserCredential,
    json_name: "readAuthorizerCredential",
    deprecated: false

  field :authorizer_credential, 4,
    type: Google.Devtools.Cloudbuild.V2.UserCredential,
    json_name: "authorizerCredential",
    deprecated: false

  field :service_directory_config, 5,
    type: Google.Devtools.Cloudbuild.V2.ServiceDirectoryConfig,
    json_name: "serviceDirectoryConfig",
    deprecated: false

  field :ssl_ca, 6, type: :string, json_name: "sslCa", deprecated: false
  field :server_version, 7, type: :string, json_name: "serverVersion", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.BitbucketCloudConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false

  field :webhook_secret_secret_version, 2,
    type: :string,
    json_name: "webhookSecretSecretVersion",
    deprecated: false

  field :read_authorizer_credential, 3,
    type: Google.Devtools.Cloudbuild.V2.UserCredential,
    json_name: "readAuthorizerCredential",
    deprecated: false

  field :authorizer_credential, 4,
    type: Google.Devtools.Cloudbuild.V2.UserCredential,
    json_name: "authorizerCredential",
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.ServiceDirectoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.Repository.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Cloudbuild.V2.Repository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :remote_uri, 2, type: :string, json_name: "remoteUri", deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :annotations, 6,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V2.Repository.AnnotationsEntry,
    map: true

  field :etag, 7, type: :string
  field :webhook_id, 8, type: :string, json_name: "webhookId", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.OAuthCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :oauth_token_secret_version, 1,
    type: :string,
    json_name: "oauthTokenSecretVersion",
    deprecated: false

  field :username, 2, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.UserCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_token_secret_version, 1,
    type: :string,
    json_name: "userTokenSecretVersion",
    deprecated: false

  field :username, 2, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.CreateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :connection, 2, type: Google.Devtools.Cloudbuild.V2.Connection, deprecated: false
  field :connection_id, 3, type: :string, json_name: "connectionId", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.GetConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.ListConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Devtools.Cloudbuild.V2.ListConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connections, 1, repeated: true, type: Google.Devtools.Cloudbuild.V2.Connection
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Cloudbuild.V2.UpdateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connection, 1, type: Google.Devtools.Cloudbuild.V2.Connection, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :allow_missing, 3, type: :bool, json_name: "allowMissing"
  field :etag, 4, type: :string
end

defmodule Google.Devtools.Cloudbuild.V2.DeleteConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Devtools.Cloudbuild.V2.CreateRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :repository, 2, type: Google.Devtools.Cloudbuild.V2.Repository, deprecated: false
  field :repository_id, 3, type: :string, json_name: "repositoryId", deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.BatchCreateRepositoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Devtools.Cloudbuild.V2.CreateRepositoryRequest,
    deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.BatchCreateRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :repositories, 1, repeated: true, type: Google.Devtools.Cloudbuild.V2.Repository
end

defmodule Google.Devtools.Cloudbuild.V2.GetRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.ListRepositoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Devtools.Cloudbuild.V2.ListRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :repositories, 1, repeated: true, type: Google.Devtools.Cloudbuild.V2.Repository
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Devtools.Cloudbuild.V2.DeleteRepositoryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :etag, 2, type: :string
  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Devtools.Cloudbuild.V2.FetchReadWriteTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.FetchReadTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false
end

defmodule Google.Devtools.Cloudbuild.V2.FetchReadTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
end

defmodule Google.Devtools.Cloudbuild.V2.FetchReadWriteTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
end

defmodule Google.Devtools.Cloudbuild.V2.ProcessWebhookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :body, 2, type: Google.Api.HttpBody
  field :webhook_key, 3, type: :string, json_name: "webhookKey"
end

defmodule Google.Devtools.Cloudbuild.V2.FetchGitRefsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :repository, 1, type: :string, deprecated: false

  field :ref_type, 2,
    type: Google.Devtools.Cloudbuild.V2.FetchGitRefsRequest.RefType,
    json_name: "refType",
    enum: true
end

defmodule Google.Devtools.Cloudbuild.V2.FetchGitRefsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ref_names, 1, repeated: true, type: :string, json_name: "refNames"
end

defmodule Google.Devtools.Cloudbuild.V2.RepositoryManager.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.devtools.cloudbuild.v2.RepositoryManager",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateConnection,
      Google.Devtools.Cloudbuild.V2.CreateConnectionRequest,
      Google.Longrunning.Operation

  rpc :GetConnection,
      Google.Devtools.Cloudbuild.V2.GetConnectionRequest,
      Google.Devtools.Cloudbuild.V2.Connection

  rpc :ListConnections,
      Google.Devtools.Cloudbuild.V2.ListConnectionsRequest,
      Google.Devtools.Cloudbuild.V2.ListConnectionsResponse

  rpc :UpdateConnection,
      Google.Devtools.Cloudbuild.V2.UpdateConnectionRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnection,
      Google.Devtools.Cloudbuild.V2.DeleteConnectionRequest,
      Google.Longrunning.Operation

  rpc :CreateRepository,
      Google.Devtools.Cloudbuild.V2.CreateRepositoryRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateRepositories,
      Google.Devtools.Cloudbuild.V2.BatchCreateRepositoriesRequest,
      Google.Longrunning.Operation

  rpc :GetRepository,
      Google.Devtools.Cloudbuild.V2.GetRepositoryRequest,
      Google.Devtools.Cloudbuild.V2.Repository

  rpc :ListRepositories,
      Google.Devtools.Cloudbuild.V2.ListRepositoriesRequest,
      Google.Devtools.Cloudbuild.V2.ListRepositoriesResponse

  rpc :DeleteRepository,
      Google.Devtools.Cloudbuild.V2.DeleteRepositoryRequest,
      Google.Longrunning.Operation

  rpc :FetchReadWriteToken,
      Google.Devtools.Cloudbuild.V2.FetchReadWriteTokenRequest,
      Google.Devtools.Cloudbuild.V2.FetchReadWriteTokenResponse

  rpc :FetchReadToken,
      Google.Devtools.Cloudbuild.V2.FetchReadTokenRequest,
      Google.Devtools.Cloudbuild.V2.FetchReadTokenResponse

  rpc :FetchLinkableRepositories,
      Google.Devtools.Cloudbuild.V2.FetchLinkableRepositoriesRequest,
      Google.Devtools.Cloudbuild.V2.FetchLinkableRepositoriesResponse

  rpc :FetchGitRefs,
      Google.Devtools.Cloudbuild.V2.FetchGitRefsRequest,
      Google.Devtools.Cloudbuild.V2.FetchGitRefsResponse
end

defmodule Google.Devtools.Cloudbuild.V2.RepositoryManager.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Devtools.Cloudbuild.V2.RepositoryManager.Service
end
