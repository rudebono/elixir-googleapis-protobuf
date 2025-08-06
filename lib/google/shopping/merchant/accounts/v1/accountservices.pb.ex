defmodule Google.Shopping.Merchant.Accounts.V1.AccountService.Mutability do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MUTABILITY_UNSPECIFIED, 0
  field :MUTABLE, 1
  field :IMMUTABLE, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1.Handshake.ApprovalState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :APPROVAL_STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ESTABLISHED, 2
  field :REJECTED, 3
end

defmodule Google.Shopping.Merchant.Accounts.V1.Handshake.Actor do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTOR_UNSPECIFIED, 0
  field :ACCOUNT, 1
  field :OTHER_PARTY, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :service_type, 0

  field :products_management, 100,
    type: Google.Shopping.Merchant.Accounts.V1.ProductsManagement,
    json_name: "productsManagement",
    oneof: 0

  field :campaigns_management, 101,
    type: Google.Shopping.Merchant.Accounts.V1.CampaignsManagement,
    json_name: "campaignsManagement",
    oneof: 0

  field :account_management, 102,
    type: Google.Shopping.Merchant.Accounts.V1.AccountManagement,
    json_name: "accountManagement",
    oneof: 0

  field :account_aggregation, 103,
    type: Google.Shopping.Merchant.Accounts.V1.AccountAggregation,
    json_name: "accountAggregation",
    oneof: 0

  field :local_listing_management, 104,
    type: Google.Shopping.Merchant.Accounts.V1.LocalListingManagement,
    json_name: "localListingManagement",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :provider, 2, proto3_optional: true, type: :string, deprecated: false

  field :provider_display_name, 3,
    type: :string,
    json_name: "providerDisplayName",
    deprecated: false

  field :handshake, 4, type: Google.Shopping.Merchant.Accounts.V1.Handshake, deprecated: false

  field :mutability, 5,
    type: Google.Shopping.Merchant.Accounts.V1.AccountService.Mutability,
    enum: true,
    deprecated: false

  field :external_account_id, 6, type: :string, json_name: "externalAccountId", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetAccountServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListAccountServicesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 5, type: :int32, json_name: "pageSize", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListAccountServicesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_services, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.AccountService,
    json_name: "accountServices"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1.ProposeAccountServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :provider, 2, type: :string, deprecated: false

  field :account_service, 4,
    type: Google.Shopping.Merchant.Accounts.V1.AccountService,
    json_name: "accountService",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ApproveAccountServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.RejectAccountServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ProductsManagement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Accounts.V1.CampaignsManagement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountManagement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountAggregation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Accounts.V1.LocalListingManagement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Accounts.V1.Handshake do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :approval_state, 1,
    type: Google.Shopping.Merchant.Accounts.V1.Handshake.ApprovalState,
    json_name: "approvalState",
    enum: true,
    deprecated: false

  field :actor, 2,
    type: Google.Shopping.Merchant.Accounts.V1.Handshake.Actor,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountServicesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.AccountServicesService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetAccountService,
      Google.Shopping.Merchant.Accounts.V1.GetAccountServiceRequest,
      Google.Shopping.Merchant.Accounts.V1.AccountService

  rpc :ListAccountServices,
      Google.Shopping.Merchant.Accounts.V1.ListAccountServicesRequest,
      Google.Shopping.Merchant.Accounts.V1.ListAccountServicesResponse

  rpc :ProposeAccountService,
      Google.Shopping.Merchant.Accounts.V1.ProposeAccountServiceRequest,
      Google.Shopping.Merchant.Accounts.V1.AccountService

  rpc :ApproveAccountService,
      Google.Shopping.Merchant.Accounts.V1.ApproveAccountServiceRequest,
      Google.Shopping.Merchant.Accounts.V1.AccountService

  rpc :RejectAccountService,
      Google.Shopping.Merchant.Accounts.V1.RejectAccountServiceRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountServicesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.AccountServicesService.Service
end
