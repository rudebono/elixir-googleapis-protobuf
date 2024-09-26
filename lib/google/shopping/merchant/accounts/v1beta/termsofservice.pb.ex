defmodule Google.Shopping.Merchant.Accounts.V1beta.TermsOfService do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :region_code, 2, type: :string, json_name: "regionCode"
  field :kind, 3, type: Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceKind, enum: true
  field :file_uri, 4, proto3_optional: true, type: :string, json_name: "fileUri"
  field :external, 5, type: :bool
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.GetTermsOfServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.RetrieveLatestTermsOfServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode", deprecated: false

  field :kind, 2,
    type: Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceKind,
    enum: true,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.AcceptTermsOfServiceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :account, 2, type: :string, deprecated: false
  field :region_code, 3, type: :string, json_name: "regionCode", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.TermsOfServiceService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetTermsOfService,
      Google.Shopping.Merchant.Accounts.V1beta.GetTermsOfServiceRequest,
      Google.Shopping.Merchant.Accounts.V1beta.TermsOfService

  rpc :RetrieveLatestTermsOfService,
      Google.Shopping.Merchant.Accounts.V1beta.RetrieveLatestTermsOfServiceRequest,
      Google.Shopping.Merchant.Accounts.V1beta.TermsOfService

  rpc :AcceptTermsOfService,
      Google.Shopping.Merchant.Accounts.V1beta.AcceptTermsOfServiceRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.TermsOfServiceService.Service
end