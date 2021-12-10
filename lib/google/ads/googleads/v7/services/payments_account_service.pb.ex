defmodule Google.Ads.Googleads.V7.Services.ListPaymentsAccountsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t()
        }

  defstruct customer_id: ""

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.ListPaymentsAccountsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payments_accounts: [Google.Ads.Googleads.V7.Resources.PaymentsAccount.t()]
        }

  defstruct payments_accounts: []

  field :payments_accounts, 1,
    repeated: true,
    type: Google.Ads.Googleads.V7.Resources.PaymentsAccount,
    json_name: "paymentsAccounts"
end
defmodule Google.Ads.Googleads.V7.Services.PaymentsAccountService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.PaymentsAccountService"

  rpc :ListPaymentsAccounts,
      Google.Ads.Googleads.V7.Services.ListPaymentsAccountsRequest,
      Google.Ads.Googleads.V7.Services.ListPaymentsAccountsResponse
end

defmodule Google.Ads.Googleads.V7.Services.PaymentsAccountService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.PaymentsAccountService.Service
end
