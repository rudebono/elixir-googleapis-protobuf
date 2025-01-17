defmodule Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceAgreementState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :region_code, 2, type: :string, json_name: "regionCode"

  field :terms_of_service_kind, 3,
    type: Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceKind,
    json_name: "termsOfServiceKind",
    enum: true

  field :accepted, 4,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Accepted

  field :required, 5,
    proto3_optional: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Required
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Accepted do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :terms_of_service, 1, type: :string, json_name: "termsOfService", deprecated: false
  field :accepted_by, 2, type: :string, json_name: "acceptedBy", deprecated: false
  field :valid_until, 3, proto3_optional: true, type: Google.Type.Date, json_name: "validUntil"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Required do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :terms_of_service, 1, type: :string, json_name: "termsOfService", deprecated: false
  field :tos_file_uri, 2, type: :string, json_name: "tosFileUri"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetTermsOfServiceAgreementStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.RetrieveForApplicationTermsOfServiceAgreementStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceAgreementStateService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.TermsOfServiceAgreementStateService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetTermsOfServiceAgreementState,
      Google.Shopping.Merchant.Accounts.V1beta.GetTermsOfServiceAgreementStateRequest,
      Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceAgreementState

  rpc :RetrieveForApplicationTermsOfServiceAgreementState,
      Google.Shopping.Merchant.Accounts.V1beta.RetrieveForApplicationTermsOfServiceAgreementStateRequest,
      Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceAgreementState
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceAgreementStateService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceAgreementStateService.Service
end
