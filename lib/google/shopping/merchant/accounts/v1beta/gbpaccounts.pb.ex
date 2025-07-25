defmodule Google.Shopping.Merchant.Accounts.V1beta.GbpAccount.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :USER, 1
  field :BUSINESS_ACCOUNT, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GbpAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :gbp_account_id, 2, type: :string, json_name: "gbpAccountId"
  field :type, 3, type: Google.Shopping.Merchant.Accounts.V1beta.GbpAccount.Type, enum: true
  field :gbp_account_name, 5, type: :string, json_name: "gbpAccountName"
  field :listing_count, 6, type: :int64, json_name: "listingCount"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListGbpAccountsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListGbpAccountsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :gbp_accounts, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.GbpAccount,
    json_name: "gbpAccounts"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.LinkGbpAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :gbp_email, 2, type: :string, json_name: "gbpEmail", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.LinkGbpAccountResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :response, 1, type: Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GbpAccountsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.GbpAccountsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListGbpAccounts,
      Google.Shopping.Merchant.Accounts.V1beta.ListGbpAccountsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ListGbpAccountsResponse

  rpc :LinkGbpAccount,
      Google.Shopping.Merchant.Accounts.V1beta.LinkGbpAccountRequest,
      Google.Shopping.Merchant.Accounts.V1beta.LinkGbpAccountResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GbpAccountsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.GbpAccountsService.Service
end
