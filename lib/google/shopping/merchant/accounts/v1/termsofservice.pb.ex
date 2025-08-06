defmodule Google.Shopping.Merchant.Accounts.V1.TermsOfService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :region_code, 2, type: :string, json_name: "regionCode"
  field :kind, 3, type: Google.Shopping.Merchant.Accounts.V1.TermsOfServiceKind, enum: true
  field :file_uri, 4, proto3_optional: true, type: :string, json_name: "fileUri"
  field :external, 5, type: :bool
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetTermsOfServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.RetrieveLatestTermsOfServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode", deprecated: false

  field :kind, 2,
    type: Google.Shopping.Merchant.Accounts.V1.TermsOfServiceKind,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.AcceptTermsOfServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account, 2, type: :string, deprecated: false
  field :region_code, 3, type: :string, json_name: "regionCode", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.AcceptTermsOfServiceResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :terms_of_service_agreement_state, 1,
    type: Google.Shopping.Merchant.Accounts.V1.TermsOfServiceAgreementState,
    json_name: "termsOfServiceAgreementState"
end

defmodule Google.Shopping.Merchant.Accounts.V1.TermsOfServiceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.TermsOfServiceService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetTermsOfService,
      Google.Shopping.Merchant.Accounts.V1.GetTermsOfServiceRequest,
      Google.Shopping.Merchant.Accounts.V1.TermsOfService

  rpc :RetrieveLatestTermsOfService,
      Google.Shopping.Merchant.Accounts.V1.RetrieveLatestTermsOfServiceRequest,
      Google.Shopping.Merchant.Accounts.V1.TermsOfService

  rpc :AcceptTermsOfService,
      Google.Shopping.Merchant.Accounts.V1.AcceptTermsOfServiceRequest,
      Google.Shopping.Merchant.Accounts.V1.AcceptTermsOfServiceResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1.TermsOfServiceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.TermsOfServiceService.Service
end
