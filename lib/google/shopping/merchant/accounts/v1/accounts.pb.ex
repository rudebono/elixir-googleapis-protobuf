defmodule Google.Shopping.Merchant.Accounts.V1.Account do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account_id, 2, type: :int64, json_name: "accountId", deprecated: false
  field :account_name, 3, type: :string, json_name: "accountName", deprecated: false

  field :adult_content, 4,
    proto3_optional: true,
    type: :bool,
    json_name: "adultContent",
    deprecated: false

  field :test_account, 5, type: :bool, json_name: "testAccount", deprecated: false
  field :time_zone, 6, type: Google.Type.TimeZone, json_name: "timeZone", deprecated: false
  field :language_code, 7, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.CreateAndConfigureAccountRequest.AddUser do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId", deprecated: false
  field :user, 2, type: Google.Shopping.Merchant.Accounts.V1.User, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.CreateAndConfigureAccountRequest.AddAccountService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :service_type, 0

  field :account_aggregation, 103,
    type: Google.Shopping.Merchant.Accounts.V1.AccountAggregation,
    json_name: "accountAggregation",
    oneof: 0

  field :provider, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.CreateAndConfigureAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account, 1, type: Google.Shopping.Merchant.Accounts.V1.Account, deprecated: false

  field :user, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.CreateAndConfigureAccountRequest.AddUser,
    deprecated: false

  field :service, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.CreateAndConfigureAccountRequest.AddAccountService,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.DeleteAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UpdateAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account, 1, type: Google.Shopping.Merchant.Accounts.V1.Account, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1.Account
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListSubAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :provider, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListSubAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1.Account
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.AccountsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetAccount,
      Google.Shopping.Merchant.Accounts.V1.GetAccountRequest,
      Google.Shopping.Merchant.Accounts.V1.Account

  rpc :CreateAndConfigureAccount,
      Google.Shopping.Merchant.Accounts.V1.CreateAndConfigureAccountRequest,
      Google.Shopping.Merchant.Accounts.V1.Account

  rpc :DeleteAccount,
      Google.Shopping.Merchant.Accounts.V1.DeleteAccountRequest,
      Google.Protobuf.Empty

  rpc :UpdateAccount,
      Google.Shopping.Merchant.Accounts.V1.UpdateAccountRequest,
      Google.Shopping.Merchant.Accounts.V1.Account

  rpc :ListAccounts,
      Google.Shopping.Merchant.Accounts.V1.ListAccountsRequest,
      Google.Shopping.Merchant.Accounts.V1.ListAccountsResponse

  rpc :ListSubAccounts,
      Google.Shopping.Merchant.Accounts.V1.ListSubAccountsRequest,
      Google.Shopping.Merchant.Accounts.V1.ListSubAccountsResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.AccountsService.Service
end
