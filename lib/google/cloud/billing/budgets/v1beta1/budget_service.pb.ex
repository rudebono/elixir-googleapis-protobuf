defmodule Google.Cloud.Billing.Budgets.V1beta1.CreateBudgetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          budget: Google.Cloud.Billing.Budgets.V1beta1.Budget.t() | nil
        }

  defstruct [:parent, :budget]

  field :parent, 1, type: :string
  field :budget, 2, type: Google.Cloud.Billing.Budgets.V1beta1.Budget
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.UpdateBudgetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          budget: Google.Cloud.Billing.Budgets.V1beta1.Budget.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:budget, :update_mask]

  field :budget, 1, type: Google.Cloud.Billing.Budgets.V1beta1.Budget
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.GetBudgetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.ListBudgetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.ListBudgetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          budgets: [Google.Cloud.Billing.Budgets.V1beta1.Budget.t()],
          next_page_token: String.t()
        }

  defstruct [:budgets, :next_page_token]

  field :budgets, 1, repeated: true, type: Google.Cloud.Billing.Budgets.V1beta1.Budget
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.DeleteBudgetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.BudgetService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.billing.budgets.v1beta1.BudgetService"

  rpc :CreateBudget,
      Google.Cloud.Billing.Budgets.V1beta1.CreateBudgetRequest,
      Google.Cloud.Billing.Budgets.V1beta1.Budget

  rpc :UpdateBudget,
      Google.Cloud.Billing.Budgets.V1beta1.UpdateBudgetRequest,
      Google.Cloud.Billing.Budgets.V1beta1.Budget

  rpc :GetBudget,
      Google.Cloud.Billing.Budgets.V1beta1.GetBudgetRequest,
      Google.Cloud.Billing.Budgets.V1beta1.Budget

  rpc :ListBudgets,
      Google.Cloud.Billing.Budgets.V1beta1.ListBudgetsRequest,
      Google.Cloud.Billing.Budgets.V1beta1.ListBudgetsResponse

  rpc :DeleteBudget,
      Google.Cloud.Billing.Budgets.V1beta1.DeleteBudgetRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.BudgetService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Billing.Budgets.V1beta1.BudgetService.Service
end
