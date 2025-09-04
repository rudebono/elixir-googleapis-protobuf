defmodule Google.Cloud.Universalledger.V1.Endpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.ListEndpointsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.ListEndpointsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoints, 1, repeated: true, type: Google.Cloud.Universalledger.V1.Endpoint
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Universalledger.V1.GetEndpointRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.QueryAccountRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false
  field :account_id, 2, type: :string, json_name: "accountId", deprecated: false
  field :round_id, 3, type: :int64, json_name: "roundId", deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.QueryAccountResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :account, 1, type: Google.Cloud.Universalledger.V1.Account
end

defmodule Google.Cloud.Universalledger.V1.SubmitTransactionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false

  field :serialized_signed_transaction, 2,
    type: :bytes,
    json_name: "serializedSignedTransaction",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.SubmitTransactionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transaction_digest_hex, 1, type: :string, json_name: "transactionDigestHex"
end

defmodule Google.Cloud.Universalledger.V1.SubmitOperationalTransactionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false

  field :serialized_signed_operational_transaction, 2,
    type: :bytes,
    json_name: "serializedSignedOperationalTransaction",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.SubmitOperationalTransactionResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transaction_digest_hex, 1, type: :string, json_name: "transactionDigestHex"
end

defmodule Google.Cloud.Universalledger.V1.QueryTransactionStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :endpoint, 1, type: :string, deprecated: false

  field :transaction_digest_hex, 2,
    type: :string,
    json_name: "transactionDigestHex",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.QueryTransactionStateResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :transaction_attempts, 1,
    repeated: true,
    type: Google.Cloud.Universalledger.V1.TransactionAttempt,
    json_name: "transactionAttempts"
end

defmodule Google.Cloud.Universalledger.V1.UniversalLedger.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.universalledger.v1.UniversalLedger",
    protoc_gen_elixir_version: "0.15.0"

  rpc :SubmitTransaction,
      Google.Cloud.Universalledger.V1.SubmitTransactionRequest,
      Google.Cloud.Universalledger.V1.SubmitTransactionResponse

  rpc :ListEndpoints,
      Google.Cloud.Universalledger.V1.ListEndpointsRequest,
      Google.Cloud.Universalledger.V1.ListEndpointsResponse

  rpc :GetEndpoint,
      Google.Cloud.Universalledger.V1.GetEndpointRequest,
      Google.Cloud.Universalledger.V1.Endpoint

  rpc :SubmitOperationalTransaction,
      Google.Cloud.Universalledger.V1.SubmitOperationalTransactionRequest,
      Google.Cloud.Universalledger.V1.SubmitOperationalTransactionResponse

  rpc :QueryTransactionState,
      Google.Cloud.Universalledger.V1.QueryTransactionStateRequest,
      Google.Cloud.Universalledger.V1.QueryTransactionStateResponse

  rpc :QueryAccount,
      Google.Cloud.Universalledger.V1.QueryAccountRequest,
      Google.Cloud.Universalledger.V1.QueryAccountResponse
end

defmodule Google.Cloud.Universalledger.V1.UniversalLedger.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Universalledger.V1.UniversalLedger.Service
end
