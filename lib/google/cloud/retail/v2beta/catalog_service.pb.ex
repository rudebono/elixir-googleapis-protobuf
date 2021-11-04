defmodule Google.Cloud.Retail.V2beta.ListCatalogsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2beta.ListCatalogsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalogs: [Google.Cloud.Retail.V2beta.Catalog.t()],
          next_page_token: String.t()
        }

  defstruct [:catalogs, :next_page_token]

  field :catalogs, 1, repeated: true, type: Google.Cloud.Retail.V2beta.Catalog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2beta.UpdateCatalogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog: Google.Cloud.Retail.V2beta.Catalog.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:catalog, :update_mask]

  field :catalog, 1, type: Google.Cloud.Retail.V2beta.Catalog
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2beta.SetDefaultBranchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog: String.t(),
          branch_id: String.t(),
          note: String.t()
        }

  defstruct [:catalog, :branch_id, :note]

  field :catalog, 1, type: :string
  field :branch_id, 2, type: :string, json_name: "branchId"
  field :note, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2beta.GetDefaultBranchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog: String.t()
        }

  defstruct [:catalog]

  field :catalog, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2beta.GetDefaultBranchResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          branch: String.t(),
          set_time: Google.Protobuf.Timestamp.t() | nil,
          note: String.t()
        }

  defstruct [:branch, :set_time, :note]

  field :branch, 1, type: :string
  field :set_time, 2, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :note, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Retail.V2beta.CatalogService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2beta.CatalogService"

  rpc :ListCatalogs,
      Google.Cloud.Retail.V2beta.ListCatalogsRequest,
      Google.Cloud.Retail.V2beta.ListCatalogsResponse

  rpc :UpdateCatalog,
      Google.Cloud.Retail.V2beta.UpdateCatalogRequest,
      Google.Cloud.Retail.V2beta.Catalog

  rpc :SetDefaultBranch, Google.Cloud.Retail.V2beta.SetDefaultBranchRequest, Google.Protobuf.Empty

  rpc :GetDefaultBranch,
      Google.Cloud.Retail.V2beta.GetDefaultBranchRequest,
      Google.Cloud.Retail.V2beta.GetDefaultBranchResponse
end

defmodule Google.Cloud.Retail.V2beta.CatalogService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2beta.CatalogService.Service
end
