defmodule Google.Shopping.Merchant.Accounts.V1.LfpProvider do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :region_code, 2, type: :string, json_name: "regionCode", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName"
end

defmodule Google.Shopping.Merchant.Accounts.V1.FindLfpProvidersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.FindLfpProvidersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :lfp_providers, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.LfpProvider,
    json_name: "lfpProviders"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1.LinkLfpProviderRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :external_account_id, 2, type: :string, json_name: "externalAccountId", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.LinkLfpProviderResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :response, 1, type: Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Accounts.V1.LfpProvidersService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.LfpProvidersService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :FindLfpProviders,
      Google.Shopping.Merchant.Accounts.V1.FindLfpProvidersRequest,
      Google.Shopping.Merchant.Accounts.V1.FindLfpProvidersResponse

  rpc :LinkLfpProvider,
      Google.Shopping.Merchant.Accounts.V1.LinkLfpProviderRequest,
      Google.Shopping.Merchant.Accounts.V1.LinkLfpProviderResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1.LfpProvidersService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.LfpProvidersService.Service
end
