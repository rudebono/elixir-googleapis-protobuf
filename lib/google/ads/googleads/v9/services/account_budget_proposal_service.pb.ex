defmodule Google.Ads.Googleads.V9.Services.GetAccountBudgetProposalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end

defmodule Google.Ads.Googleads.V9.Services.MutateAccountBudgetProposalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operation, 2,
    type: Google.Ads.Googleads.V9.Services.AccountBudgetProposalOperation,
    deprecated: false

  field :validate_only, 3, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V9.Services.AccountBudgetProposalOperation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 2, type: Google.Ads.Googleads.V9.Resources.AccountBudgetProposal, oneof: 0
  field :remove, 1, type: :string, oneof: 0
end

defmodule Google.Ads.Googleads.V9.Services.MutateAccountBudgetProposalResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :result, 2, type: Google.Ads.Googleads.V9.Services.MutateAccountBudgetProposalResult
end

defmodule Google.Ads.Googleads.V9.Services.MutateAccountBudgetProposalResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName"
end

defmodule Google.Ads.Googleads.V9.Services.AccountBudgetProposalService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.AccountBudgetProposalService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :GetAccountBudgetProposal,
      Google.Ads.Googleads.V9.Services.GetAccountBudgetProposalRequest,
      Google.Ads.Googleads.V9.Resources.AccountBudgetProposal

  rpc :MutateAccountBudgetProposal,
      Google.Ads.Googleads.V9.Services.MutateAccountBudgetProposalRequest,
      Google.Ads.Googleads.V9.Services.MutateAccountBudgetProposalResponse
end

defmodule Google.Ads.Googleads.V9.Services.AccountBudgetProposalService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.AccountBudgetProposalService.Service
end