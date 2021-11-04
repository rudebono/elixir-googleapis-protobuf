defmodule Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties.DatabaseType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :DATABASE_TYPE_UNSPECIFIED | :POSTGRES | :MYSQL

  field :DATABASE_TYPE_UNSPECIFIED, 0
  field :POSTGRES, 1
  field :MYSQL, 2
end

defmodule Google.Cloud.Bigquery.Connection.V1.CreateConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          connection_id: String.t(),
          connection: Google.Cloud.Bigquery.Connection.V1.Connection.t() | nil
        }

  defstruct [:parent, :connection_id, :connection]

  field :parent, 1, type: :string
  field :connection_id, 2, type: :string, json_name: "connectionId"
  field :connection, 3, type: Google.Cloud.Bigquery.Connection.V1.Connection

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.GetConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.ListConnectionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.ListConnectionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          next_page_token: String.t(),
          connections: [Google.Cloud.Bigquery.Connection.V1.Connection.t()]
        }

  defstruct [:next_page_token, :connections]

  field :next_page_token, 1, type: :string, json_name: "nextPageToken"
  field :connections, 2, repeated: true, type: Google.Cloud.Bigquery.Connection.V1.Connection

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.UpdateConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          connection: Google.Cloud.Bigquery.Connection.V1.Connection.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :connection, :update_mask]

  field :name, 1, type: :string
  field :connection, 2, type: Google.Cloud.Bigquery.Connection.V1.Connection
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.DeleteConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.Connection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          properties:
            {:cloud_sql, Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties.t() | nil}
            | {:aws, Google.Cloud.Bigquery.Connection.V1.AwsProperties.t() | nil}
            | {:cloud_spanner,
               Google.Cloud.Bigquery.Connection.V1.CloudSpannerProperties.t() | nil},
          name: String.t(),
          friendly_name: String.t(),
          description: String.t(),
          creation_time: integer,
          last_modified_time: integer,
          has_credential: boolean
        }

  defstruct [
    :properties,
    :name,
    :friendly_name,
    :description,
    :creation_time,
    :last_modified_time,
    :has_credential
  ]

  oneof :properties, 0

  field :name, 1, type: :string
  field :friendly_name, 2, type: :string, json_name: "friendlyName"
  field :description, 3, type: :string

  field :cloud_sql, 4,
    type: Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties,
    json_name: "cloudSql",
    oneof: 0

  field :aws, 8, type: Google.Cloud.Bigquery.Connection.V1.AwsProperties, oneof: 0

  field :cloud_spanner, 21,
    type: Google.Cloud.Bigquery.Connection.V1.CloudSpannerProperties,
    json_name: "cloudSpanner",
    oneof: 0

  field :creation_time, 5, type: :int64, json_name: "creationTime"
  field :last_modified_time, 6, type: :int64, json_name: "lastModifiedTime"
  field :has_credential, 7, type: :bool, json_name: "hasCredential"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance_id: String.t(),
          database: String.t(),
          type: Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties.DatabaseType.t(),
          credential: Google.Cloud.Bigquery.Connection.V1.CloudSqlCredential.t() | nil
        }

  defstruct [:instance_id, :database, :type, :credential]

  field :instance_id, 1, type: :string, json_name: "instanceId"
  field :database, 2, type: :string

  field :type, 3,
    type: Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties.DatabaseType,
    enum: true

  field :credential, 4, type: Google.Cloud.Bigquery.Connection.V1.CloudSqlCredential

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.CloudSqlCredential do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          username: String.t(),
          password: String.t()
        }

  defstruct [:username, :password]

  field :username, 1, type: :string
  field :password, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.CloudSpannerProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          database: String.t(),
          use_parallelism: boolean
        }

  defstruct [:database, :use_parallelism]

  field :database, 1, type: :string
  field :use_parallelism, 2, type: :bool, json_name: "useParallelism"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.AwsProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authentication_method:
            {:cross_account_role,
             Google.Cloud.Bigquery.Connection.V1.AwsCrossAccountRole.t() | nil}
            | {:access_role, Google.Cloud.Bigquery.Connection.V1.AwsAccessRole.t() | nil}
        }

  defstruct [:authentication_method]

  oneof :authentication_method, 0

  field :cross_account_role, 2,
    type: Google.Cloud.Bigquery.Connection.V1.AwsCrossAccountRole,
    json_name: "crossAccountRole",
    oneof: 0

  field :access_role, 3,
    type: Google.Cloud.Bigquery.Connection.V1.AwsAccessRole,
    json_name: "accessRole",
    oneof: 0

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.AwsCrossAccountRole do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iam_role_id: String.t(),
          iam_user_id: String.t(),
          external_id: String.t()
        }

  defstruct [:iam_role_id, :iam_user_id, :external_id]

  field :iam_role_id, 1, type: :string, json_name: "iamRoleId"
  field :iam_user_id, 2, type: :string, json_name: "iamUserId"
  field :external_id, 3, type: :string, json_name: "externalId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.AwsAccessRole do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          iam_role_id: String.t(),
          identity: String.t()
        }

  defstruct [:iam_role_id, :identity]

  field :iam_role_id, 1, type: :string, json_name: "iamRoleId"
  field :identity, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Bigquery.Connection.V1.ConnectionService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.bigquery.connection.v1.ConnectionService"

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
