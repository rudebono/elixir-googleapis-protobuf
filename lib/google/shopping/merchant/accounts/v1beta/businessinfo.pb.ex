defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :address, 2, proto3_optional: true, type: Google.Type.PostalAddress, deprecated: false
  field :phone, 3, proto3_optional: true, type: Google.Type.PhoneNumber, deprecated: false

  field :phone_verification_state, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.PhoneVerificationState,
    json_name: "phoneVerificationState",
    enum: true,
    deprecated: false

  field :customer_service, 5,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.CustomerService,
    json_name: "customerService",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetBusinessInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateBusinessInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :business_info, 1,
    type: Google.Shopping.Merchant.Accounts.V1beta.BusinessInfo,
    json_name: "businessInfo",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessInfoService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.BusinessInfoService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetBusinessInfo,
      Google.Shopping.Merchant.Accounts.V1beta.GetBusinessInfoRequest,
      Google.Shopping.Merchant.Accounts.V1beta.BusinessInfo

  rpc :UpdateBusinessInfo,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateBusinessInfoRequest,
      Google.Shopping.Merchant.Accounts.V1beta.BusinessInfo
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.BusinessInfoService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.BusinessInfoService.Service
end