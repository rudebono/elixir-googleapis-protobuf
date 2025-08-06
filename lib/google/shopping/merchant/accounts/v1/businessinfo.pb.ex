defmodule Google.Shopping.Merchant.Accounts.V1.BusinessInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :address, 2, proto3_optional: true, type: Google.Type.PostalAddress, deprecated: false
  field :phone, 3, proto3_optional: true, type: Google.Type.PhoneNumber, deprecated: false

  field :phone_verification_state, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.PhoneVerificationState,
    json_name: "phoneVerificationState",
    enum: true,
    deprecated: false

  field :customer_service, 5,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.CustomerService,
    json_name: "customerService",
    deprecated: false

  field :korean_business_registration_number, 6,
    proto3_optional: true,
    type: :string,
    json_name: "koreanBusinessRegistrationNumber",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetBusinessInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UpdateBusinessInfoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :business_info, 1,
    type: Google.Shopping.Merchant.Accounts.V1.BusinessInfo,
    json_name: "businessInfo",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.BusinessInfoService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.BusinessInfoService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetBusinessInfo,
      Google.Shopping.Merchant.Accounts.V1.GetBusinessInfoRequest,
      Google.Shopping.Merchant.Accounts.V1.BusinessInfo

  rpc :UpdateBusinessInfo,
      Google.Shopping.Merchant.Accounts.V1.UpdateBusinessInfoRequest,
      Google.Shopping.Merchant.Accounts.V1.BusinessInfo
end

defmodule Google.Shopping.Merchant.Accounts.V1.BusinessInfoService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.BusinessInfoService.Service
end
