defmodule Google.Shopping.Merchant.Accounts.V1.TermsOfServiceAgreementState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :region_code, 2, type: :string, json_name: "regionCode", deprecated: false

  field :terms_of_service_kind, 3,
    type: Google.Shopping.Merchant.Accounts.V1.TermsOfServiceKind,
    json_name: "termsOfServiceKind",
    enum: true,
    deprecated: false

  field :accepted, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Accepted,
    deprecated: false

  field :required, 5,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1.Required,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Accepted do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :terms_of_service, 1, type: :string, json_name: "termsOfService", deprecated: false
  field :accepted_by, 2, type: :string, json_name: "acceptedBy", deprecated: false

  field :valid_until, 3,
    proto3_optional: true,
    type: Google.Type.Date,
    json_name: "validUntil",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Required do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :terms_of_service, 1, type: :string, json_name: "termsOfService", deprecated: false
  field :tos_file_uri, 2, type: :string, json_name: "tosFileUri", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetTermsOfServiceAgreementStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.RetrieveForApplicationTermsOfServiceAgreementStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.TermsOfServiceAgreementStateService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.TermsOfServiceAgreementStateService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetTermsOfServiceAgreementState,
      Google.Shopping.Merchant.Accounts.V1.GetTermsOfServiceAgreementStateRequest,
      Google.Shopping.Merchant.Accounts.V1.TermsOfServiceAgreementState

  rpc :RetrieveForApplicationTermsOfServiceAgreementState,
      Google.Shopping.Merchant.Accounts.V1.RetrieveForApplicationTermsOfServiceAgreementStateRequest,
      Google.Shopping.Merchant.Accounts.V1.TermsOfServiceAgreementState
end

defmodule Google.Shopping.Merchant.Accounts.V1.TermsOfServiceAgreementStateService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Accounts.V1.TermsOfServiceAgreementStateService.Service
end
