defmodule Google.Cloud.Billing.Budgets.V1beta1.CreateBudgetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :budget, 2, type: Google.Cloud.Billing.Budgets.V1beta1.Budget, deprecated: false
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.UpdateBudgetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :budget, 1, type: Google.Cloud.Billing.Budgets.V1beta1.Budget, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.GetBudgetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.ListBudgetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :scope, 4, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.ListBudgetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :budgets, 1, repeated: true, type: Google.Cloud.Billing.Budgets.V1beta1.Budget
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.DeleteBudgetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Billing.Budgets.V1beta1.BudgetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.billing.budgets.v1beta1.BudgetService",
    protoc_gen_elixir_version: "0.15.0"

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
