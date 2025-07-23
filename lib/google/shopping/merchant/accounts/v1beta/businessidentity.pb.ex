defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.PromotionsConsent do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROMOTIONS_CONSENT_UNSPECIFIED, 0
  field :PROMOTIONS_CONSENT_GIVEN, 1
  field :PROMOTIONS_CONSENT_DENIED, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.IdentityAttribute.IdentityDeclaration do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :IDENTITY_DECLARATION_UNSPECIFIED, 0
  field :SELF_IDENTIFIES_AS, 1
  field :DOES_NOT_SELF_IDENTIFY_AS, 2
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.IdentityAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :identity_declaration, 1,
    type:
      Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.IdentityAttribute.IdentityDeclaration,
    json_name: "identityDeclaration",
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :promotions_consent, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.PromotionsConsent,
    json_name: "promotionsConsent",
    enum: true,
    deprecated: false

  field :black_owned, 3,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.IdentityAttribute,
    json_name: "blackOwned",
    deprecated: false

  field :women_owned, 4,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.IdentityAttribute,
    json_name: "womenOwned",
    deprecated: false

  field :veteran_owned, 5,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.IdentityAttribute,
    json_name: "veteranOwned",
    deprecated: false

  field :latino_owned, 6,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.IdentityAttribute,
    json_name: "latinoOwned",
    deprecated: false

  field :small_business, 7,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity.IdentityAttribute,
    json_name: "smallBusiness",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetBusinessIdentityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateBusinessIdentityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :business_identity, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity,
    json_name: "businessIdentity",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentityService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.BusinessIdentityService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetBusinessIdentity,
      Google.Shopping.Merchant.Accounts.V1beta.GetBusinessIdentityRequest,
      Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity

  rpc :UpdateBusinessIdentity,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateBusinessIdentityRequest,
      Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentity
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentityService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.BusinessIdentityService.Service
end
