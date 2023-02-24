defmodule Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties.DatabaseType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :POSTGRES, 1
  field :MYSQL, 2
end

defmodule Google.Cloud.Bigquery.Connection.V1.CreateConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :connection_id, 2, type: :string, json_name: "connectionId", deprecated: false
  field :connection, 3, type: Google.Cloud.Bigquery.Connection.V1.Connection, deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.GetConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.ListConnectionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Bigquery.Connection.V1.ListConnectionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :next_page_token, 1, type: :string, json_name: "nextPageToken"
  field :connections, 2, repeated: true, type: Google.Cloud.Bigquery.Connection.V1.Connection
end

defmodule Google.Cloud.Bigquery.Connection.V1.UpdateConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :connection, 2, type: Google.Cloud.Bigquery.Connection.V1.Connection, deprecated: false

  field :update_mask, 3,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.DeleteConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.Connection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :properties, 0

  field :name, 1, type: :string
  field :friendly_name, 2, type: :string, json_name: "friendlyName"
  field :description, 3, type: :string

  field :cloud_sql, 4,
    type: Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties,
    json_name: "cloudSql",
    oneof: 0

  field :aws, 8, type: Google.Cloud.Bigquery.Connection.V1.AwsProperties, oneof: 0
  field :azure, 11, type: Google.Cloud.Bigquery.Connection.V1.AzureProperties, oneof: 0

  field :cloud_spanner, 21,
    type: Google.Cloud.Bigquery.Connection.V1.CloudSpannerProperties,
    json_name: "cloudSpanner",
    oneof: 0

  field :cloud_resource, 22,
    type: Google.Cloud.Bigquery.Connection.V1.CloudResourceProperties,
    json_name: "cloudResource",
    oneof: 0

  field :creation_time, 5, type: :int64, json_name: "creationTime", deprecated: false
  field :last_modified_time, 6, type: :int64, json_name: "lastModifiedTime", deprecated: false
  field :has_credential, 7, type: :bool, json_name: "hasCredential", deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :database, 2, type: :string

  field :type, 3,
    type: Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties.DatabaseType,
    enum: true

  field :credential, 4,
    type: Google.Cloud.Bigquery.Connection.V1.CloudSqlCredential,
    deprecated: false

  field :service_account_id, 5, type: :string, json_name: "serviceAccountId", deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.CloudSqlCredential do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :username, 1, type: :string
  field :password, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Connection.V1.CloudSpannerProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :database, 1, type: :string
  field :use_parallelism, 2, type: :bool, json_name: "useParallelism"
  field :use_serverless_analytics, 3, type: :bool, json_name: "useServerlessAnalytics"
  field :database_role, 4, type: :string, json_name: "databaseRole", deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.AwsProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :authentication_method, 0

  field :cross_account_role, 2,
    type: Google.Cloud.Bigquery.Connection.V1.AwsCrossAccountRole,
    json_name: "crossAccountRole",
    oneof: 0,
    deprecated: true

  field :access_role, 3,
    type: Google.Cloud.Bigquery.Connection.V1.AwsAccessRole,
    json_name: "accessRole",
    oneof: 0
end

defmodule Google.Cloud.Bigquery.Connection.V1.AwsCrossAccountRole do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :iam_role_id, 1, type: :string, json_name: "iamRoleId"
  field :iam_user_id, 2, type: :string, json_name: "iamUserId", deprecated: false
  field :external_id, 3, type: :string, json_name: "externalId", deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.AwsAccessRole do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :iam_role_id, 1, type: :string, json_name: "iamRoleId"
  field :identity, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Connection.V1.AzureProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :application, 1, type: :string, deprecated: false
  field :client_id, 2, type: :string, json_name: "clientId", deprecated: false
  field :object_id, 3, type: :string, json_name: "objectId", deprecated: false
  field :customer_tenant_id, 4, type: :string, json_name: "customerTenantId"
  field :redirect_uri, 5, type: :string, json_name: "redirectUri"

  field :federated_application_client_id, 6,
    type: :string,
    json_name: "federatedApplicationClientId"

  field :identity, 7, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.CloudResourceProperties do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service_account_id, 1, type: :string, json_name: "serviceAccountId", deprecated: false
end

defmodule Google.Cloud.Bigquery.Connection.V1.ConnectionService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.bigquery.connection.v1.ConnectionService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateConnection,
      Google.Cloud.Bigquery.Connection.V1.CreateConnectionRequest,
      Google.Cloud.Bigquery.Connection.V1.Connection

  rpc :GetConnection,
      Google.Cloud.Bigquery.Connection.V1.GetConnectionRequest,
      Google.Cloud.Bigquery.Connection.V1.Connection

  rpc :ListConnections,
      Google.Cloud.Bigquery.Connection.V1.ListConnectionsRequest,
      Google.Cloud.Bigquery.Connection.V1.ListConnectionsResponse

  rpc :UpdateConnection,
      Google.Cloud.Bigquery.Connection.V1.UpdateConnectionRequest,
      Google.Cloud.Bigquery.Connection.V1.Connection

  rpc :DeleteConnection,
      Google.Cloud.Bigquery.Connection.V1.DeleteConnectionRequest,
      Google.Protobuf.Empty

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Bigquery.Connection.V1.ConnectionService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Connection.V1.ConnectionService.Service
end