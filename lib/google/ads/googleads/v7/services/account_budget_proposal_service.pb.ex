defmodule Google.Ads.Googleads.V7.Services.GetAccountBudgetProposalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V7.Services.MutateAccountBudgetProposalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V7.Services.AccountBudgetProposalOperation.t() | nil,
          validate_only: boolean
        }

  defstruct customer_id: "",
            operation: nil,
            validate_only: false

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V7.Services.AccountBudgetProposalOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end
defmodule Google.Ads.Googleads.V7.Services.AccountBudgetProposalOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation:
            {:create, Google.Ads.Googleads.V7.Resources.AccountBudgetProposal.t() | nil}
            | {:remove, String.t()},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct operation: nil,
            update_mask: nil

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 2, type: Google.Ads.Googleads.V7.Resources.AccountBudgetProposal, oneof: 0
  field :remove, 1, type: :string, oneof: 0
end
defmodule Google.Ads.Googleads.V7.Services.MutateAccountBudgetProposalResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V7.Services.MutateAccountBudgetProposalResult.t() | nil
        }

  defstruct result: nil

  field :result, 2, type: Google.Ads.Googleads.V7.Services.MutateAccountBudgetProposalResult
end
defmodule Google.Ads.Googleads.V7.Services.MutateAccountBudgetProposalResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct resource_name: ""

  field :resource_name, 1, type: :string, json_name: "resourceName"
end
defmodule Google.Ads.Googleads.V7.Services.AccountBudgetProposalService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v7.services.AccountBudgetProposalService"

  rpc :GetAccountBudgetProposal,
      Google.Ads.Googleads.V7.Services.GetAccountBudgetProposalRequest,
      Google.Ads.Googleads.V7.Resources.AccountBudgetProposal

  rpc :MutateAccountBudgetProposal,
      Google.Ads.Googleads.V7.Services.MutateAccountBudgetProposalRequest,
      Google.Ads.Googleads.V7.Services.MutateAccountBudgetProposalResponse
end

defmodule Google.Ads.Googleads.V7.Services.AccountBudgetProposalService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V7.Services.AccountBudgetProposalService.Service
end
