defmodule Google.Cloud.Retail.V2alpha.ListCatalogsRequest do
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

defmodule Google.Cloud.Retail.V2alpha.ListCatalogsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalogs: [Google.Cloud.Retail.V2alpha.Catalog.t()],
          next_page_token: String.t()
        }

  defstruct [:catalogs, :next_page_token]

  field :catalogs, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Catalog
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.UpdateCatalogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog: Google.Cloud.Retail.V2alpha.Catalog.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:catalog, :update_mask]

  field :catalog, 1, type: Google.Cloud.Retail.V2alpha.Catalog
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end
