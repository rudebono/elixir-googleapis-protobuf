defmodule Google.Ads.Googleads.V5.Services.GetAccountBudgetProposalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V5.Services.MutateAccountBudgetProposalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operation: Google.Ads.Googleads.V5.Services.AccountBudgetProposalOperation.t() | nil,
          validate_only: boolean
        }

  defstruct [:customer_id, :operation, :validate_only]

  field :customer_id, 1, type: :string
  field :operation, 2, type: Google.Ads.Googleads.V5.Services.AccountBudgetProposalOperation
  field :validate_only, 3, type: :bool
end

defmodule Google.Ads.Googleads.V5.Services.AccountBudgetProposalOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation: {atom, any},
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:operation, :update_mask]

  oneof :operation, 0
  field :update_mask, 3, type: Google.Protobuf.FieldMask
  field :create, 2, type: Google.Ads.Googleads.V5.Resources.AccountBudgetProposal, oneof: 0
  field :remove, 1, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.MutateAccountBudgetProposalResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: Google.Ads.Googleads.V5.Services.MutateAccountBudgetProposalResult.t() | nil
        }

  defstruct [:result]

  field :result, 2, type: Google.Ads.Googleads.V5.Services.MutateAccountBudgetProposalResult
end

defmodule Google.Ads.Googleads.V5.Services.MutateAccountBudgetProposalResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end
