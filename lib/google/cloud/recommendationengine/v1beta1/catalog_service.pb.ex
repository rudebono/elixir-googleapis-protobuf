defmodule Google.Cloud.Recommendationengine.V1beta1.CreateCatalogItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          catalog_item: Google.Cloud.Recommendationengine.V1beta1.CatalogItem.t() | nil
        }

  defstruct [:parent, :catalog_item]

  field :parent, 1, type: :string
  field :catalog_item, 2, type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem
end

defmodule Google.Cloud.Recommendationengine.V1beta1.GetCatalogItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListCatalogItemsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Recommendationengine.V1beta1.ListCatalogItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog_items: [Google.Cloud.Recommendationengine.V1beta1.CatalogItem.t()],
          next_page_token: String.t()
        }

  defstruct [:catalog_items, :next_page_token]

  field :catalog_items, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Recommendationengine.V1beta1.UpdateCatalogItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          catalog_item: Google.Cloud.Recommendationengine.V1beta1.CatalogItem.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:name, :catalog_item, :update_mask]

  field :name, 1, type: :string
  field :catalog_item, 2, type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem
  field :update_mask, 3, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Recommendationengine.V1beta1.DeleteCatalogItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end
