defmodule Google.Cloud.Kms.Inventory.V1.ListCryptoKeysRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Kms.Inventory.V1.ListCryptoKeysResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :crypto_keys, 1,
    repeated: true,
    type: Google.Cloud.Kms.V1.CryptoKey,
    json_name: "cryptoKeys"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Kms.Inventory.V1.KeyDashboardService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.kms.inventory.v1.KeyDashboardService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListCryptoKeys,
      Google.Cloud.Kms.Inventory.V1.ListCryptoKeysRequest,
      Google.Cloud.Kms.Inventory.V1.ListCryptoKeysResponse
end

defmodule Google.Cloud.Kms.Inventory.V1.KeyDashboardService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Kms.Inventory.V1.KeyDashboardService.Service
end
