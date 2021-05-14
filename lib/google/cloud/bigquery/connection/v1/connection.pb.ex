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
  field :connection_id, 2, type: :string
  field :connection, 3, type: Google.Cloud.Bigquery.Connection.V1.Connection
end

defmodule Google.Cloud.Bigquery.Connection.V1.GetConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
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
  field :page_size, 4, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Bigquery.Connection.V1.ListConnectionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          next_page_token: String.t(),
          connections: [Google.Cloud.Bigquery.Connection.V1.Connection.t()]
        }

  defstruct [:next_page_token, :connections]

  field :next_page_token, 1, type: :string
  field :connections, 2, repeated: true, type: Google.Cloud.Bigquery.Connection.V1.Connection
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
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Bigquery.Connection.V1.DeleteConnectionRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Connection.V1.Connection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          properties: {atom, any},
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
  field :friendly_name, 2, type: :string
  field :description, 3, type: :string
  field :cloud_sql, 4, type: Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties, oneof: 0
  field :aws, 8, type: Google.Cloud.Bigquery.Connection.V1.AwsProperties, oneof: 0
  field :creation_time, 5, type: :int64
  field :last_modified_time, 6, type: :int64
  field :has_credential, 7, type: :bool
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

  field :instance_id, 1, type: :string
  field :database, 2, type: :string

  field :type, 3,
    type: Google.Cloud.Bigquery.Connection.V1.CloudSqlProperties.DatabaseType,
    enum: true

  field :credential, 4, type: Google.Cloud.Bigquery.Connection.V1.CloudSqlCredential
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
end

defmodule Google.Cloud.Bigquery.Connection.V1.AwsProperties do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          authentication_method: {atom, any}
        }

  defstruct [:authentication_method]

  oneof :authentication_method, 0

  field :cross_account_role, 2,
    type: Google.Cloud.Bigquery.Connection.V1.AwsCrossAccountRole,
    oneof: 0
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

  field :iam_role_id, 1, type: :string
  field :iam_user_id, 2, type: :string
  field :external_id, 3, type: :string
end
