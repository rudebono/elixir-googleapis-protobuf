defmodule Google.Shopping.Merchant.Accounts.V1.DeveloperRegistration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :gcp_ids, 2, repeated: true, type: :string, json_name: "gcpIds", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.RegisterGcpRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :developer_email, 2, type: :string, json_name: "developerEmail", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.UnregisterGcpRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.GetDeveloperRegistrationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.DeveloperRegistrationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.DeveloperRegistrationService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :RegisterGcp,
      Google.Shopping.Merchant.Accounts.V1.RegisterGcpRequest,
      Google.Shopping.Merchant.Accounts.V1.DeveloperRegistration

  rpc :GetDeveloperRegistration,
      Google.Shopping.Merchant.Accounts.V1.GetDeveloperRegistrationRequest,
      Google.Shopping.Merchant.Accounts.V1.DeveloperRegistration

  rpc :UnregisterGcp,
      Google.Shopping.Merchant.Accounts.V1.UnregisterGcpRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Accounts.V1.DeveloperRegistrationService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Shopping.Merchant.Accounts.V1.DeveloperRegistrationService.Service
end
