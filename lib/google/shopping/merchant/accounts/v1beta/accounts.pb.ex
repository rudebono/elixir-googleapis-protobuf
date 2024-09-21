defmodule Google.Shopping.Merchant.Accounts.V1beta.Account do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account_id, 2, type: :int64, json_name: "accountId", deprecated: false
  field :account_name, 3, type: :string, json_name: "accountName", deprecated: false
  field :adult_content, 4, type: :bool, json_name: "adultContent"
  field :test_account, 5, type: :bool, json_name: "testAccount", deprecated: false
  field :time_zone, 6, type: Google.Type.TimeZone, json_name: "timeZone", deprecated: false
  field :language_code, 7, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CreateAndConfigureAccountRequest.AcceptTermsOfService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :region_code, 3, type: :string, json_name: "regionCode", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CreateAndConfigureAccountRequest.AddAccountService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :service_type, 0

  field :account_aggregation, 2,
    type: Google.Protobuf.Empty,
    json_name: "accountAggregation",
    oneof: 0

  field :provider, 1, proto3_optional: true, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CreateAndConfigureAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account, 1, type: Google.Shopping.Merchant.Accounts.V1beta.Account, deprecated: false

  field :users, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.CreateUserRequest,
    deprecated: false

  field :accept_terms_of_service, 3,
    proto3_optional: true,
    type:
      Google.Shopping.Merchant.Accounts.V1beta.CreateAndConfigureAccountRequest.AcceptTermsOfService,
    json_name: "acceptTermsOfService",
    deprecated: false

  field :service, 4,
    repeated: true,
    type:
      Google.Shopping.Merchant.Accounts.V1beta.CreateAndConfigureAccountRequest.AddAccountService,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.DeleteAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :account, 1, type: Google.Shopping.Merchant.Accounts.V1beta.Account, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1beta.Account
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListSubAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :provider, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListSubAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1beta.Account
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.AccountsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.AccountsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetAccount,
      Google.Shopping.Merchant.Accounts.V1beta.GetAccountRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Account

  rpc :CreateAndConfigureAccount,
      Google.Shopping.Merchant.Accounts.V1beta.CreateAndConfigureAccountRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Account

  rpc :DeleteAccount,
      Google.Shopping.Merchant.Accounts.V1beta.DeleteAccountRequest,
      Google.Protobuf.Empty

  rpc :UpdateAccount,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateAccountRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Account

  rpc :ListAccounts,
      Google.Shopping.Merchant.Accounts.V1beta.ListAccountsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ListAccountsResponse

  rpc :ListSubAccounts,
      Google.Shopping.Merchant.Accounts.V1beta.ListSubAccountsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ListSubAccountsResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.AccountsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.AccountsService.Service
end