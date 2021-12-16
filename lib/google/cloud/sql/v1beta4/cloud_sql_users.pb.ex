defmodule Google.Cloud.Sql.V1beta4.User.SqlUserType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :BUILT_IN | :CLOUD_IAM_USER | :CLOUD_IAM_SERVICE_ACCOUNT

  field :BUILT_IN, 0
  field :CLOUD_IAM_USER, 1
  field :CLOUD_IAM_SERVICE_ACCOUNT, 2
end
defmodule Google.Cloud.Sql.V1beta4.SqlUsersDeleteRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          host: String.t(),
          instance: String.t(),
          name: String.t(),
          project: String.t()
        }

  defstruct host: "",
            instance: "",
            name: "",
            project: ""

  field :host, 1, type: :string
  field :instance, 2, type: :string
  field :name, 3, type: :string
  field :project, 4, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.SqlUsersUpdateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          host: String.t(),
          instance: String.t(),
          name: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.User.t() | nil
        }

  defstruct host: "",
            instance: "",
            name: "",
            project: "",
            body: nil

  field :host, 1, type: :string, deprecated: false
  field :instance, 2, type: :string
  field :name, 3, type: :string
  field :project, 4, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.User
end
defmodule Google.Cloud.Sql.V1beta4.SqlUsersInsertRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t(),
          body: Google.Cloud.Sql.V1beta4.User.t() | nil
        }

  defstruct instance: "",
            project: "",
            body: nil

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1beta4.User
end
defmodule Google.Cloud.Sql.V1beta4.SqlUsersListRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instance: String.t(),
          project: String.t()
        }

  defstruct instance: "",
            project: ""

  field :instance, 1, type: :string
  field :project, 2, type: :string
end
defmodule Google.Cloud.Sql.V1beta4.UserPasswordValidationPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          allowed_failed_attempts: integer,
          password_expiration_duration: Google.Protobuf.Duration.t() | nil,
          enable_failed_attempts_check: boolean,
          status: Google.Cloud.Sql.V1beta4.PasswordStatus.t() | nil
        }

  defstruct allowed_failed_attempts: 0,
            password_expiration_duration: nil,
            enable_failed_attempts_check: false,
            status: nil

  field :allowed_failed_attempts, 1, type: :int32, json_name: "allowedFailedAttempts"

  field :password_expiration_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "passwordExpirationDuration"

  field :enable_failed_attempts_check, 3, type: :bool, json_name: "enableFailedAttemptsCheck"
  field :status, 4, type: Google.Cloud.Sql.V1beta4.PasswordStatus, deprecated: false
end
defmodule Google.Cloud.Sql.V1beta4.PasswordStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          locked: boolean,
          password_expiration_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct locked: false,
            password_expiration_time: nil

  field :locked, 1, type: :bool

  field :password_expiration_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "passwordExpirationTime"
end
defmodule Google.Cloud.Sql.V1beta4.User do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_details:
            {:sqlserver_user_details, Google.Cloud.Sql.V1beta4.SqlServerUserDetails.t() | nil},
          kind: String.t(),
          password: String.t(),
          etag: String.t(),
          name: String.t(),
          host: String.t(),
          instance: String.t(),
          project: String.t(),
          type: Google.Cloud.Sql.V1beta4.User.SqlUserType.t(),
          password_policy: Google.Cloud.Sql.V1beta4.UserPasswordValidationPolicy.t() | nil
        }

  defstruct user_details: nil,
            kind: "",
            password: "",
            etag: "",
            name: "",
            host: "",
            instance: "",
            project: "",
            type: :BUILT_IN,
            password_policy: nil

  oneof :user_details, 0

  field :kind, 1, type: :string
  field :password, 2, type: :string
  field :etag, 3, type: :string
  field :name, 4, type: :string
  field :host, 5, type: :string, deprecated: false
  field :instance, 6, type: :string
  field :project, 7, type: :string
  field :type, 8, type: Google.Cloud.Sql.V1beta4.User.SqlUserType, enum: true

  field :sqlserver_user_details, 9,
    type: Google.Cloud.Sql.V1beta4.SqlServerUserDetails,
    json_name: "sqlserverUserDetails",
    oneof: 0

  field :password_policy, 12,
    type: Google.Cloud.Sql.V1beta4.UserPasswordValidationPolicy,
    json_name: "passwordPolicy"
end
defmodule Google.Cloud.Sql.V1beta4.SqlServerUserDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disabled: boolean,
          server_roles: [String.t()]
        }

  defstruct disabled: false,
            server_roles: []

  field :disabled, 1, type: :bool
  field :server_roles, 2, repeated: true, type: :string, json_name: "serverRoles"
end
defmodule Google.Cloud.Sql.V1beta4.UsersListResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: String.t(),
          items: [Google.Cloud.Sql.V1beta4.User.t()],
          next_page_token: String.t()
        }

  defstruct kind: "",
            items: [],
            next_page_token: ""

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1beta4.User
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Sql.V1beta4.SqlUsersService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.sql.v1beta4.SqlUsersService"

  rpc :Delete, Google.Cloud.Sql.V1beta4.SqlUsersDeleteRequest, Google.Cloud.Sql.V1beta4.Operation

  rpc :Insert, Google.Cloud.Sql.V1beta4.SqlUsersInsertRequest, Google.Cloud.Sql.V1beta4.Operation

  rpc :List,
      Google.Cloud.Sql.V1beta4.SqlUsersListRequest,
      Google.Cloud.Sql.V1beta4.UsersListResponse

  rpc :Update, Google.Cloud.Sql.V1beta4.SqlUsersUpdateRequest, Google.Cloud.Sql.V1beta4.Operation
end

defmodule Google.Cloud.Sql.V1beta4.SqlUsersService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Sql.V1beta4.SqlUsersService.Service
end
