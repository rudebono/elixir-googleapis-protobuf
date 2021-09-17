defmodule Google.Cloud.Sql.V1.User.SqlUserType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BUILT_IN | :CLOUD_IAM_USER | :CLOUD_IAM_SERVICE_ACCOUNT

  field :BUILT_IN, 0

  field :CLOUD_IAM_USER, 1

  field :CLOUD_IAM_SERVICE_ACCOUNT, 2
end

defmodule Google.Cloud.Sql.V1.SqlUsersDeleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          host: String.t(),
          instance: String.t(),
          name: String.t(),
          project: String.t()
        }

  defstruct [:host, :instance, :name, :project]

  field :host, 1, type: :string
  field :instance, 2, type: :string
  field :name, 3, type: :string
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlUsersInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1.User.t() | nil
        }

  defstruct [:instance, :project, :body]

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.User
end

defmodule Google.Cloud.Sql.V1.SqlUsersListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct [:instance, :project]

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlUsersUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          host: String.t(),
          instance: String.t(),
          name: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1.User.t() | nil
        }

  defstruct [:host, :instance, :name, :project, :body]

  field :host, 1, type: :string
  field :instance, 2, type: :string
  field :name, 3, type: :string
  field :project, 4, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.User
end

defmodule Google.Cloud.Sql.V1.User do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_details: {atom, any},
          kind: String.t(),
          password: String.t(),
          etag: String.t(),
          name: String.t(),
          host: String.t(),
          instance: String.t(),
          project: String.t(),
          type: Google.Cloud.Sql.V1.User.SqlUserType.t()
        }

  defstruct [:user_details, :kind, :password, :etag, :name, :host, :instance, :project, :type]

  oneof :user_details, 0
  field :kind, 1, type: :string
  field :password, 2, type: :string
  field :etag, 3, type: :string
  field :name, 4, type: :string
  field :host, 5, type: :string
  field :instance, 6, type: :string
  field :project, 7, type: :string
  field :type, 8, type: Google.Cloud.Sql.V1.User.SqlUserType, enum: true
  field :sqlserver_user_details, 9, type: Google.Cloud.Sql.V1.SqlServerUserDetails, oneof: 0
end

defmodule Google.Cloud.Sql.V1.SqlServerUserDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean,
          server_roles: [String.t()]
        }

  defstruct [:disabled, :server_roles]

  field :disabled, 1, type: :bool
  field :server_roles, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Sql.V1.UsersListResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          items: [Google.Cloud.Sql.V1.User.t()],
          next_page_token: String.t()
        }

  defstruct [:kind, :items, :next_page_token]

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.User
  field :next_page_token, 3, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlUsersService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1.SqlUsersService"

  rpc :Delete, Google.Cloud.Sql.V1.SqlUsersDeleteRequest, Google.Cloud.Sql.V1.Operation

  rpc :Insert, Google.Cloud.Sql.V1.SqlUsersInsertRequest, Google.Cloud.Sql.V1.Operation

  rpc :List, Google.Cloud.Sql.V1.SqlUsersListRequest, Google.Cloud.Sql.V1.UsersListResponse

  rpc :Update, Google.Cloud.Sql.V1.SqlUsersUpdateRequest, Google.Cloud.Sql.V1.Operation
end

defmodule Google.Cloud.Sql.V1.SqlUsersService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlUsersService.Service
end
