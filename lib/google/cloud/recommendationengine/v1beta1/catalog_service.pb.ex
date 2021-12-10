defmodule Google.Cloud.Recommendationengine.V1beta1.CreateCatalogItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          catalog_item: Google.Cloud.Recommendationengine.V1beta1.CatalogItem.t() | nil
        }

  defstruct parent: "",
            catalog_item: nil

  field :parent, 1, type: :string, deprecated: false

  field :catalog_item, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem,
    json_name: "catalogItem",
    deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.GetCatalogItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
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

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.ListCatalogItemsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog_items: [Google.Cloud.Recommendationengine.V1beta1.CatalogItem.t()],
          next_page_token: String.t()
        }

  defstruct catalog_items: [],
            next_page_token: ""

  field :catalog_items, 1,
    repeated: true,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem,
    json_name: "catalogItems"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Recommendationengine.V1beta1.UpdateCatalogItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          catalog_item: Google.Cloud.Recommendationengine.V1beta1.CatalogItem.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct name: "",
            catalog_item: nil,
            update_mask: nil

  field :name, 1, type: :string, deprecated: false

  field :catalog_item, 2,
    type: Google.Cloud.Recommendationengine.V1beta1.CatalogItem,
    json_name: "catalogItem",
    deprecated: false

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Recommendationengine.V1beta1.DeleteCatalogItemRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.recommendationengine.v1beta1.CatalogService"

  rpc :CreateCatalogItem,
      Google.Cloud.Recommendationengine.V1beta1.CreateCatalogItemRequest,
      Google.Cloud.Recommendationengine.V1beta1.CatalogItem

  rpc :GetCatalogItem,
      Google.Cloud.Recommendationengine.V1beta1.GetCatalogItemRequest,
      Google.Cloud.Recommendationengine.V1beta1.CatalogItem

  rpc :ListCatalogItems,
      Google.Cloud.Recommendationengine.V1beta1.ListCatalogItemsRequest,
      Google.Cloud.Recommendationengine.V1beta1.ListCatalogItemsResponse

  rpc :UpdateCatalogItem,
      Google.Cloud.Recommendationengine.V1beta1.UpdateCatalogItemRequest,
      Google.Cloud.Recommendationengine.V1beta1.CatalogItem

  rpc :DeleteCatalogItem,
      Google.Cloud.Recommendationengine.V1beta1.DeleteCatalogItemRequest,
      Google.Protobuf.Empty

  rpc :ImportCatalogItems,
      Google.Cloud.Recommendationengine.V1beta1.ImportCatalogItemsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Recommendationengine.V1beta1.CatalogService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Recommendationengine.V1beta1.CatalogService.Service
end
