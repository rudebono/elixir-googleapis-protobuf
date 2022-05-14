defmodule Google.Ads.Googleads.V8.Services.ListPaymentsAccountsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
end
defmodule Google.Ads.Googleads.V8.Services.ListPaymentsAccountsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :payments_accounts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.PaymentsAccount,
    json_name: "paymentsAccounts"
end
defmodule Google.Ads.Googleads.V8.Services.PaymentsAccountService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v8.services.PaymentsAccountService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListPaymentsAccounts,
      Google.Ads.Googleads.V8.Services.ListPaymentsAccountsRequest,
      Google.Ads.Googleads.V8.Services.ListPaymentsAccountsResponse
end

defmodule Google.Ads.Googleads.V8.Services.PaymentsAccountService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.PaymentsAccountService.Service
end
