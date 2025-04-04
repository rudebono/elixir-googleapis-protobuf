defmodule Google.Cloud.Sql.V1.User.SqlUserType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :BUILT_IN, 0
  field :CLOUD_IAM_USER, 1
  field :CLOUD_IAM_SERVICE_ACCOUNT, 2
  field :CLOUD_IAM_GROUP, 3
  field :CLOUD_IAM_GROUP_USER, 4
  field :CLOUD_IAM_GROUP_SERVICE_ACCOUNT, 5
end

defmodule Google.Cloud.Sql.V1.User.DualPasswordType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :DUAL_PASSWORD_TYPE_UNSPECIFIED, 0
  field :NO_MODIFY_DUAL_PASSWORD, 1
  field :NO_DUAL_PASSWORD, 2
  field :DUAL_PASSWORD, 3
end

defmodule Google.Cloud.Sql.V1.SqlUsersDeleteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host, 1, type: :string
  field :instance, 2, type: :string
  field :name, 3, type: :string
  field :project, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlUsersGetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance, 1, type: :string
  field :name, 2, type: :string
  field :project, 3, type: :string
  field :host, 4, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlUsersInsertRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.User
end

defmodule Google.Cloud.Sql.V1.SqlUsersListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :instance, 1, type: :string
  field :project, 2, type: :string
end

defmodule Google.Cloud.Sql.V1.SqlUsersUpdateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :host, 1, type: :string, deprecated: false
  field :instance, 2, type: :string
  field :name, 3, type: :string
  field :project, 4, type: :string
  field :body, 100, type: Google.Cloud.Sql.V1.User
end

defmodule Google.Cloud.Sql.V1.UserPasswordValidationPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :allowed_failed_attempts, 1, type: :int32, json_name: "allowedFailedAttempts"

  field :password_expiration_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "passwordExpirationDuration"

  field :enable_failed_attempts_check, 3, type: :bool, json_name: "enableFailedAttemptsCheck"
  field :status, 4, type: Google.Cloud.Sql.V1.PasswordStatus, deprecated: false
  field :enable_password_verification, 5, type: :bool, json_name: "enablePasswordVerification"
end

defmodule Google.Cloud.Sql.V1.PasswordStatus do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :locked, 1, type: :bool

  field :password_expiration_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "passwordExpirationTime"
end

defmodule Google.Cloud.Sql.V1.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :user_details, 0

  field :kind, 1, type: :string
  field :password, 2, type: :string
  field :etag, 3, type: :string
  field :name, 4, type: :string
  field :host, 5, type: :string, deprecated: false
  field :instance, 6, type: :string
  field :project, 7, type: :string
  field :type, 8, type: Google.Cloud.Sql.V1.User.SqlUserType, enum: true

  field :sqlserver_user_details, 9,
    type: Google.Cloud.Sql.V1.SqlServerUserDetails,
    json_name: "sqlserverUserDetails",
    oneof: 0

  field :password_policy, 12,
    type: Google.Cloud.Sql.V1.UserPasswordValidationPolicy,
    json_name: "passwordPolicy"

  field :dual_password_type, 13,
    proto3_optional: true,
    type: Google.Cloud.Sql.V1.User.DualPasswordType,
    json_name: "dualPasswordType",
    enum: true
end

defmodule Google.Cloud.Sql.V1.SqlServerUserDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :disabled, 1, type: :bool
  field :server_roles, 2, repeated: true, type: :string, json_name: "serverRoles"
end

defmodule Google.Cloud.Sql.V1.UsersListResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :kind, 1, type: :string
  field :items, 2, repeated: true, type: Google.Cloud.Sql.V1.User
  field :next_page_token, 3, type: :string, json_name: "nextPageToken", deprecated: true
end

defmodule Google.Cloud.Sql.V1.SqlUsersService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.sql.v1.SqlUsersService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :Delete, Google.Cloud.Sql.V1.SqlUsersDeleteRequest, Google.Cloud.Sql.V1.Operation

  rpc :Get, Google.Cloud.Sql.V1.SqlUsersGetRequest, Google.Cloud.Sql.V1.User

  rpc :Insert, Google.Cloud.Sql.V1.SqlUsersInsertRequest, Google.Cloud.Sql.V1.Operation

  rpc :List, Google.Cloud.Sql.V1.SqlUsersListRequest, Google.Cloud.Sql.V1.UsersListResponse

  rpc :Update, Google.Cloud.Sql.V1.SqlUsersUpdateRequest, Google.Cloud.Sql.V1.Operation
end

defmodule Google.Cloud.Sql.V1.SqlUsersService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Sql.V1.SqlUsersService.Service
end
