defmodule Google.Shopping.Merchant.Accounts.V1beta.User.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :VERIFIED, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.User.State,
    enum: true,
    deprecated: false

  field :access_rights, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.AccessRight,
    json_name: "accessRights",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CreateUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :user_id, 2, type: :string, json_name: "userId", deprecated: false
  field :user, 3, type: Google.Shopping.Merchant.Accounts.V1beta.User, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.DeleteUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :user, 1, type: Google.Shopping.Merchant.Accounts.V1beta.User, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListUsersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListUsersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :users, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1beta.User
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UserService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.UserService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GetUser,
      Google.Shopping.Merchant.Accounts.V1beta.GetUserRequest,
      Google.Shopping.Merchant.Accounts.V1beta.User

  rpc :CreateUser,
      Google.Shopping.Merchant.Accounts.V1beta.CreateUserRequest,
      Google.Shopping.Merchant.Accounts.V1beta.User

  rpc :DeleteUser,
      Google.Shopping.Merchant.Accounts.V1beta.DeleteUserRequest,
      Google.Protobuf.Empty

  rpc :UpdateUser,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateUserRequest,
      Google.Shopping.Merchant.Accounts.V1beta.User

  rpc :ListUsers,
      Google.Shopping.Merchant.Accounts.V1beta.ListUsersRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ListUsersResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UserService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.UserService.Service
end
