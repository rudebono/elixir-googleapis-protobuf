defmodule Google.Shopping.Merchant.Accounts.V1.User.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :VERIFIED, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1.User.State,
    enum: true,
    deprecated: false

  field :access_rights, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.AccessRight,
    json_name: "accessRights",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.CreateUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :user_id, 2, type: :string, json_name: "userId", deprecated: false
  field :user, 3, type: Google.Shopping.Merchant.Accounts.V1.User, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.DeleteUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UpdateUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user, 1, type: Google.Shopping.Merchant.Accounts.V1.User, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListUsersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListUsersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :users, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1.User
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1.UserService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.UserService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetUser,
      Google.Shopping.Merchant.Accounts.V1.GetUserRequest,
      Google.Shopping.Merchant.Accounts.V1.User

  rpc :CreateUser,
      Google.Shopping.Merchant.Accounts.V1.CreateUserRequest,
      Google.Shopping.Merchant.Accounts.V1.User

  rpc :DeleteUser, Google.Shopping.Merchant.Accounts.V1.DeleteUserRequest, Google.Protobuf.Empty

  rpc :UpdateUser,
      Google.Shopping.Merchant.Accounts.V1.UpdateUserRequest,
      Google.Shopping.Merchant.Accounts.V1.User

  rpc :ListUsers,
      Google.Shopping.Merchant.Accounts.V1.ListUsersRequest,
      Google.Shopping.Merchant.Accounts.V1.ListUsersResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1.UserService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.UserService.Service
end
