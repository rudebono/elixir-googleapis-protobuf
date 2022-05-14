defmodule Google.Cloud.Retail.V2.ListCatalogsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Retail.V2.ListCatalogsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :catalogs, 1, repeated: true, type: Google.Cloud.Retail.V2.Catalog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Retail.V2.UpdateCatalogRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :catalog, 1, type: Google.Cloud.Retail.V2.Catalog, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Retail.V2.SetDefaultBranchRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
  field :branch_id, 2, type: :string, json_name: "branchId", deprecated: false
  field :note, 3, type: :string
  field :force, 4, type: :bool
end
defmodule Google.Cloud.Retail.V2.GetDefaultBranchRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2.GetDefaultBranchResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :branch, 1, type: :string, deprecated: false
  field :set_time, 2, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :note, 3, type: :string
end
defmodule Google.Cloud.Retail.V2.CatalogService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.retail.v2.CatalogService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListCatalogs,
      Google.Cloud.Retail.V2.ListCatalogsRequest,
      Google.Cloud.Retail.V2.ListCatalogsResponse

  rpc :UpdateCatalog, Google.Cloud.Retail.V2.UpdateCatalogRequest, Google.Cloud.Retail.V2.Catalog

  rpc :SetDefaultBranch, Google.Cloud.Retail.V2.SetDefaultBranchRequest, Google.Protobuf.Empty

  rpc :GetDefaultBranch,
      Google.Cloud.Retail.V2.GetDefaultBranchRequest,
      Google.Cloud.Retail.V2.GetDefaultBranchResponse
end

defmodule Google.Cloud.Retail.V2.CatalogService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2.CatalogService.Service
end
