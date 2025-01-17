defmodule Google.Shopping.Merchant.Accounts.V1beta.AccountTax do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account, 2, type: :int64, deprecated: false

  field :tax_rules, 3,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.TaxRule,
    json_name: "taxRules"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetAccountTaxRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateAccountTaxRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :account_tax, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.AccountTax,
    json_name: "accountTax",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListAccountTaxRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListAccountTaxResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :account_taxes, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.AccountTax,
    json_name: "accountTaxes"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.AccountTaxService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.AccountTaxService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetAccountTax,
      Google.Shopping.Merchant.Accounts.V1beta.GetAccountTaxRequest,
      Google.Shopping.Merchant.Accounts.V1beta.AccountTax

  rpc :ListAccountTax,
      Google.Shopping.Merchant.Accounts.V1beta.ListAccountTaxRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ListAccountTaxResponse

  rpc :UpdateAccountTax,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateAccountTaxRequest,
      Google.Shopping.Merchant.Accounts.V1beta.AccountTax
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.AccountTaxService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.AccountTaxService.Service
end
