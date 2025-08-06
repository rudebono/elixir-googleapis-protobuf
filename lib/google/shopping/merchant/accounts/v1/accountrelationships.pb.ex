defmodule Google.Shopping.Merchant.Accounts.V1.AccountRelationship do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :provider, 2, proto3_optional: true, type: :string, deprecated: false

  field :provider_display_name, 3,
    type: :string,
    json_name: "providerDisplayName",
    deprecated: false

  field :account_id_alias, 4, type: :string, json_name: "accountIdAlias", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetAccountRelationshipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UpdateAccountRelationshipRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_relationship, 1,
    type: Google.Shopping.Merchant.Accounts.V1.AccountRelationship,
    json_name: "accountRelationship",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListAccountRelationshipsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListAccountRelationshipsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account_relationships, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.AccountRelationship,
    json_name: "accountRelationships"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountRelationshipsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.AccountRelationshipsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetAccountRelationship,
      Google.Shopping.Merchant.Accounts.V1.GetAccountRelationshipRequest,
      Google.Shopping.Merchant.Accounts.V1.AccountRelationship

  rpc :UpdateAccountRelationship,
      Google.Shopping.Merchant.Accounts.V1.UpdateAccountRelationshipRequest,
      Google.Shopping.Merchant.Accounts.V1.AccountRelationship

  rpc :ListAccountRelationships,
      Google.Shopping.Merchant.Accounts.V1.ListAccountRelationshipsRequest,
      Google.Shopping.Merchant.Accounts.V1.ListAccountRelationshipsResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1.AccountRelationshipsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.AccountRelationshipsService.Service
end
