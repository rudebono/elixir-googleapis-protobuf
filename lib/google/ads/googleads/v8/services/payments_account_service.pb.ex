defmodule Google.Ads.Googleads.V8.Services.ListPaymentsAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t()
        }

  defstruct [:customer_id]

  field :customer_id, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.ListPaymentsAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payments_accounts: [Google.Ads.Googleads.V8.Resources.PaymentsAccount.t()]
        }

  defstruct [:payments_accounts]

  field :payments_accounts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.PaymentsAccount
end

defmodule Google.Ads.Googleads.V8.Services.PaymentsAccountService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.PaymentsAccountService"

  rpc :ListPaymentsAccounts,
      Google.Ads.Googleads.V8.Services.ListPaymentsAccountsRequest,
      Google.Ads.Googleads.V8.Services.ListPaymentsAccountsResponse
end

defmodule Google.Ads.Googleads.V8.Services.PaymentsAccountService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.PaymentsAccountService.Service
end
