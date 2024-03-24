defmodule Google.Ads.Admanager.V1.User do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :user_id, 10, type: :int64, json_name: "userId", deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :email, 3, type: :string, deprecated: false
  field :role, 4, type: :string, deprecated: false
  field :active, 6, type: :bool, deprecated: false
  field :external_id, 7, type: :string, json_name: "externalId", deprecated: false
  field :service_account, 8, type: :bool, json_name: "serviceAccount", deprecated: false

  field :orders_ui_local_time_zone, 9,
    type: :string,
    json_name: "ordersUiLocalTimeZone",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.GetUserRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListUsersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
  field :skip, 6, type: :int32, deprecated: false
end

defmodule Google.Ads.Admanager.V1.ListUsersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :users, 1, repeated: true, type: Google.Ads.Admanager.V1.User
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Ads.Admanager.V1.UserService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.UserService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetUser, Google.Ads.Admanager.V1.GetUserRequest, Google.Ads.Admanager.V1.User

  rpc :ListUsers,
      Google.Ads.Admanager.V1.ListUsersRequest,
      Google.Ads.Admanager.V1.ListUsersResponse
end

defmodule Google.Ads.Admanager.V1.UserService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.UserService.Service
end