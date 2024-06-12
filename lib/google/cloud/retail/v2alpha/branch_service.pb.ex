defmodule Google.Cloud.Retail.V2alpha.ListBranchesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Retail.V2alpha.BranchView, enum: true
end

defmodule Google.Cloud.Retail.V2alpha.ListBranchesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :branches, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Branch
end

defmodule Google.Cloud.Retail.V2alpha.GetBranchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :view, 2, type: Google.Cloud.Retail.V2alpha.BranchView, enum: true
end

defmodule Google.Cloud.Retail.V2alpha.BranchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.BranchService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListBranches,
      Google.Cloud.Retail.V2alpha.ListBranchesRequest,
      Google.Cloud.Retail.V2alpha.ListBranchesResponse

  rpc :GetBranch, Google.Cloud.Retail.V2alpha.GetBranchRequest, Google.Cloud.Retail.V2alpha.Branch
end

defmodule Google.Cloud.Retail.V2alpha.BranchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.BranchService.Service
end