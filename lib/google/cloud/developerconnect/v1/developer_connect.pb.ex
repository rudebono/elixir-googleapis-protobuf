defmodule Google.Cloud.Developerconnect.V1.SystemProvider do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SYSTEM_PROVIDER_UNSPECIFIED, 0
  field :GITHUB, 1
  field :GITLAB, 2
  field :GOOGLE, 3
  field :SENTRY, 4
  field :ROVO, 5
  field :NEW_RELIC, 6
  field :DATASTAX, 7
  field :DYNATRACE, 8
end

defmodule Google.Cloud.Developerconnect.V1.InstallationState.Stage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STAGE_UNSPECIFIED, 0
  field :PENDING_CREATE_APP, 1
  field :PENDING_USER_OAUTH, 2
  field :PENDING_INSTALL_APP, 3
  field :COMPLETE, 10
end

defmodule Google.Cloud.Developerconnect.V1.GitHubConfig.GitHubApp do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :GIT_HUB_APP_UNSPECIFIED, 0
  field :DEVELOPER_CONNECT, 1
  field :FIREBASE, 2
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitRefsRequest.RefType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :REF_TYPE_UNSPECIFIED, 0
  field :TAG, 1
  field :BRANCH, 2
end

defmodule Google.Cloud.Developerconnect.V1.ListUsersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListUsersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :users, 1, repeated: true, type: Google.Cloud.Developerconnect.V1.User
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.Connection.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.Connection.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.Connection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :connection_config, 0

  field :github_config, 5,
    type: Google.Cloud.Developerconnect.V1.GitHubConfig,
    json_name: "githubConfig",
    oneof: 0

  field :github_enterprise_config, 13,
    type: Google.Cloud.Developerconnect.V1.GitHubEnterpriseConfig,
    json_name: "githubEnterpriseConfig",
    oneof: 0

  field :gitlab_config, 14,
    type: Google.Cloud.Developerconnect.V1.GitLabConfig,
    json_name: "gitlabConfig",
    oneof: 0

  field :gitlab_enterprise_config, 16,
    type: Google.Cloud.Developerconnect.V1.GitLabEnterpriseConfig,
    json_name: "gitlabEnterpriseConfig",
    oneof: 0

  field :bitbucket_data_center_config, 17,
    type: Google.Cloud.Developerconnect.V1.BitbucketDataCenterConfig,
    json_name: "bitbucketDataCenterConfig",
    oneof: 0

  field :bitbucket_cloud_config, 18,
    type: Google.Cloud.Developerconnect.V1.BitbucketCloudConfig,
    json_name: "bitbucketCloudConfig",
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

  field :crypto_key_config, 15,
    type: Google.Cloud.Developerconnect.V1.CryptoKeyConfig,
    json_name: "cryptoKeyConfig",
    deprecated: false

  field :git_proxy_config, 19,
    type: Google.Cloud.Developerconnect.V1.GitProxyConfig,
    json_name: "gitProxyConfig",
    deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.CryptoKeyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key_reference, 1, type: :string, json_name: "keyReference", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.GitProxyConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :enabled, 1, type: :bool, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.InstallationState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :stage, 1,
    type: Google.Cloud.Developerconnect.V1.InstallationState.Stage,
    enum: true,
    deprecated: false

  field :message, 2, type: :string, deprecated: false
  field :action_uri, 3, type: :string, json_name: "actionUri", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.GitHubConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

defmodule Google.Cloud.Developerconnect.V1.GitHubEnterpriseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_uri, 1, type: :string, json_name: "hostUri", deprecated: false
  field :app_id, 2, type: :int64, json_name: "appId", deprecated: false
  field :app_slug, 3, type: :string, json_name: "appSlug", deprecated: false

  field :private_key_secret_version, 4,
    type: :string,
    json_name: "privateKeySecretVersion",
    deprecated: false

  field :webhook_secret_secret_version, 5,
    type: :string,
    json_name: "webhookSecretSecretVersion",
    deprecated: false

  field :app_installation_id, 8, type: :int64, json_name: "appInstallationId", deprecated: false
  field :installation_uri, 9, type: :string, json_name: "installationUri", deprecated: false

  field :service_directory_config, 10,
    type: Google.Cloud.Developerconnect.V1.ServiceDirectoryConfig,
    json_name: "serviceDirectoryConfig",
    deprecated: false

  field :server_version, 12, type: :string, json_name: "serverVersion", deprecated: false
  field :ssl_ca_certificate, 14, type: :string, json_name: "sslCaCertificate", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ServiceDirectoryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :service, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.OAuthCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :oauth_token_secret_version, 1,
    type: :string,
    json_name: "oauthTokenSecretVersion",
    deprecated: false

  field :username, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.GitLabConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :webhook_secret_secret_version, 1,
    type: :string,
    json_name: "webhookSecretSecretVersion",
    deprecated: false

  field :read_authorizer_credential, 2,
    type: Google.Cloud.Developerconnect.V1.UserCredential,
    json_name: "readAuthorizerCredential",
    deprecated: false

  field :authorizer_credential, 3,
    type: Google.Cloud.Developerconnect.V1.UserCredential,
    json_name: "authorizerCredential",
    deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.UserCredential do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user_token_secret_version, 1,
    type: :string,
    json_name: "userTokenSecretVersion",
    deprecated: false

  field :username, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.GitLabEnterpriseConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_uri, 1, type: :string, json_name: "hostUri", deprecated: false

  field :webhook_secret_secret_version, 2,
    type: :string,
    json_name: "webhookSecretSecretVersion",
    deprecated: false

  field :read_authorizer_credential, 3,
    type: Google.Cloud.Developerconnect.V1.UserCredential,
    json_name: "readAuthorizerCredential",
    deprecated: false

  field :authorizer_credential, 4,
    type: Google.Cloud.Developerconnect.V1.UserCredential,
    json_name: "authorizerCredential",
    deprecated: false

  field :service_directory_config, 5,
    type: Google.Cloud.Developerconnect.V1.ServiceDirectoryConfig,
    json_name: "serviceDirectoryConfig",
    deprecated: false

  field :ssl_ca_certificate, 6, type: :string, json_name: "sslCaCertificate", deprecated: false
  field :server_version, 7, type: :string, json_name: "serverVersion", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.BitbucketDataCenterConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host_uri, 1, type: :string, json_name: "hostUri", deprecated: false

  field :webhook_secret_secret_version, 2,
    type: :string,
    json_name: "webhookSecretSecretVersion",
    deprecated: false

  field :read_authorizer_credential, 3,
    type: Google.Cloud.Developerconnect.V1.UserCredential,
    json_name: "readAuthorizerCredential",
    deprecated: false

  field :authorizer_credential, 4,
    type: Google.Cloud.Developerconnect.V1.UserCredential,
    json_name: "authorizerCredential",
    deprecated: false

  field :service_directory_config, 5,
    type: Google.Cloud.Developerconnect.V1.ServiceDirectoryConfig,
    json_name: "serviceDirectoryConfig",
    deprecated: false

  field :ssl_ca_certificate, 6, type: :string, json_name: "sslCaCertificate", deprecated: false
  field :server_version, 7, type: :string, json_name: "serverVersion", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.BitbucketCloudConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :workspace, 1, type: :string, deprecated: false

  field :webhook_secret_secret_version, 2,
    type: :string,
    json_name: "webhookSecretSecretVersion",
    deprecated: false

  field :read_authorizer_credential, 3,
    type: Google.Cloud.Developerconnect.V1.UserCredential,
    json_name: "readAuthorizerCredential",
    deprecated: false

  field :authorizer_credential, 4,
    type: Google.Cloud.Developerconnect.V1.UserCredential,
    json_name: "authorizerCredential",
    deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connections, 1, repeated: true, type: Google.Cloud.Developerconnect.V1.Connection
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GetConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.CreateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :connection_id, 2, type: :string, json_name: "connectionId", deprecated: false
  field :connection, 3, type: Google.Cloud.Developerconnect.V1.Connection, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.UpdateConnectionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListAccountConnectorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListAccountConnectorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account_connectors, 1,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.AccountConnector,
    json_name: "accountConnectors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GetAccountConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.CreateAccountConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :account_connector_id, 2,
    type: :string,
    json_name: "accountConnectorId",
    deprecated: false

  field :account_connector, 3,
    type: Google.Cloud.Developerconnect.V1.AccountConnector,
    json_name: "accountConnector",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.UpdateAccountConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :account_connector, 2,
    type: Google.Cloud.Developerconnect.V1.AccountConnector,
    json_name: "accountConnector",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :allow_missing, 4, type: :bool, json_name: "allowMissing", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.DeleteAccountConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
  field :force, 5, type: :bool, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.DeleteUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.OperationMetadata do
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

defmodule Google.Cloud.Developerconnect.V1.FetchSelfRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.DeleteSelfRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchAccessTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :account_connector, 1, type: :string, json_name: "accountConnector", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchAccessTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :scopes, 3, repeated: true, type: :string

  field :exchange_error, 4,
    type: Google.Cloud.Developerconnect.V1.ExchangeError,
    json_name: "exchangeError"
end

defmodule Google.Cloud.Developerconnect.V1.ExchangeError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :code, 1, type: :string
  field :description, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GitRepositoryLink.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GitRepositoryLink.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GitRepositoryLink do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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
  field :webhook_id, 11, type: :string, json_name: "webhookId", deprecated: false
  field :git_proxy_uri, 12, type: :string, json_name: "gitProxyUri", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.CreateGitRepositoryLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
  field :etag, 4, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListGitRepositoryLinksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ListGitRepositoryLinksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :git_repository_links, 1,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.GitRepositoryLink,
    json_name: "gitRepositoryLinks"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.GetGitRepositoryLinkRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchReadWriteTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :git_repository_link, 1, type: :string, json_name: "gitRepositoryLink", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchReadTokenRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :git_repository_link, 1, type: :string, json_name: "gitRepositoryLink", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchReadTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :git_username, 3, type: :string, json_name: "gitUsername"
end

defmodule Google.Cloud.Developerconnect.V1.FetchReadWriteTokenResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :token, 1, type: :string
  field :expiration_time, 2, type: Google.Protobuf.Timestamp, json_name: "expirationTime"
  field :git_username, 3, type: :string, json_name: "gitUsername"
end

defmodule Google.Cloud.Developerconnect.V1.FetchLinkableGitRepositoriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connection, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchLinkableGitRepositoriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :linkable_git_repositories, 1,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.LinkableGitRepository,
    json_name: "linkableGitRepositories"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Developerconnect.V1.LinkableGitRepository do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :clone_uri, 1, type: :string, json_name: "cloneUri"
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connection, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsResponse.Installation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :id, 1, type: :int64
  field :name, 2, type: :string
  field :type, 3, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :installations, 1,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.FetchGitHubInstallationsResponse.Installation
end

defmodule Google.Cloud.Developerconnect.V1.FetchGitRefsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ref_names, 1, repeated: true, type: :string, json_name: "refNames"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Developerconnect.V1.AccountConnector.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.AccountConnector.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Developerconnect.V1.AccountConnector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :account_connector_config, 0

  field :provider_oauth_config, 5,
    type: Google.Cloud.Developerconnect.V1.ProviderOAuthConfig,
    json_name: "providerOauthConfig",
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

  field :annotations, 6,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.AccountConnector.AnnotationsEntry,
    map: true,
    deprecated: false

  field :etag, 7, type: :string, deprecated: false

  field :labels, 8,
    repeated: true,
    type: Google.Cloud.Developerconnect.V1.AccountConnector.LabelsEntry,
    map: true,
    deprecated: false

  field :oauth_start_uri, 10, type: :string, json_name: "oauthStartUri", deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false

  field :create_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :last_token_request_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastTokenRequestTime",
    deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.ProviderOAuthConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :oauth_provider_id, 0

  field :system_provider_id, 1,
    type: Google.Cloud.Developerconnect.V1.SystemProvider,
    json_name: "systemProviderId",
    enum: true,
    oneof: 0,
    deprecated: false

  field :scopes, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Developerconnect.V1.DeveloperConnect.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.developerconnect.v1.DeveloperConnect",
    protoc_gen_elixir_version: "0.14.1"

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

  rpc :ListAccountConnectors,
      Google.Cloud.Developerconnect.V1.ListAccountConnectorsRequest,
      Google.Cloud.Developerconnect.V1.ListAccountConnectorsResponse

  rpc :GetAccountConnector,
      Google.Cloud.Developerconnect.V1.GetAccountConnectorRequest,
      Google.Cloud.Developerconnect.V1.AccountConnector

  rpc :CreateAccountConnector,
      Google.Cloud.Developerconnect.V1.CreateAccountConnectorRequest,
      Google.Longrunning.Operation

  rpc :UpdateAccountConnector,
      Google.Cloud.Developerconnect.V1.UpdateAccountConnectorRequest,
      Google.Longrunning.Operation

  rpc :DeleteAccountConnector,
      Google.Cloud.Developerconnect.V1.DeleteAccountConnectorRequest,
      Google.Longrunning.Operation

  rpc :FetchAccessToken,
      Google.Cloud.Developerconnect.V1.FetchAccessTokenRequest,
      Google.Cloud.Developerconnect.V1.FetchAccessTokenResponse

  rpc :ListUsers,
      Google.Cloud.Developerconnect.V1.ListUsersRequest,
      Google.Cloud.Developerconnect.V1.ListUsersResponse

  rpc :DeleteUser,
      Google.Cloud.Developerconnect.V1.DeleteUserRequest,
      Google.Longrunning.Operation

  rpc :FetchSelf,
      Google.Cloud.Developerconnect.V1.FetchSelfRequest,
      Google.Cloud.Developerconnect.V1.User

  rpc :DeleteSelf,
      Google.Cloud.Developerconnect.V1.DeleteSelfRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Developerconnect.V1.DeveloperConnect.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Developerconnect.V1.DeveloperConnect.Service
end
