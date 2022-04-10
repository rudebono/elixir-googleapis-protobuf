defmodule Google.Cloud.Retail.V2alpha.ListCatalogsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Retail.V2alpha.ListCatalogsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalogs: [Google.Cloud.Retail.V2alpha.Catalog.t()],
          next_page_token: String.t()
        }

  defstruct catalogs: [],
            next_page_token: ""

  field :catalogs, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Catalog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Retail.V2alpha.UpdateCatalogRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog: Google.Cloud.Retail.V2alpha.Catalog.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct catalog: nil,
            update_mask: nil

  field :catalog, 1, type: Google.Cloud.Retail.V2alpha.Catalog, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Retail.V2alpha.SetDefaultBranchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog: String.t(),
          branch_id: String.t(),
          note: String.t(),
          force: boolean
        }

  defstruct catalog: "",
            branch_id: "",
            note: "",
            force: false

  field :catalog, 1, type: :string, deprecated: false
  field :branch_id, 2, type: :string, json_name: "branchId", deprecated: false
  field :note, 3, type: :string
  field :force, 4, type: :bool
end
defmodule Google.Cloud.Retail.V2alpha.GetDefaultBranchRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          catalog: String.t()
        }

  defstruct catalog: ""

  field :catalog, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.GetDefaultBranchResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          branch: String.t(),
          set_time: Google.Protobuf.Timestamp.t() | nil,
          note: String.t()
        }

  defstruct branch: "",
            set_time: nil,
            note: ""

  field :branch, 1, type: :string, deprecated: false
  field :set_time, 2, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :note, 3, type: :string
end
defmodule Google.Cloud.Retail.V2alpha.GetCompletionConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.UpdateCompletionConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          completion_config: Google.Cloud.Retail.V2alpha.CompletionConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct completion_config: nil,
            update_mask: nil

  field :completion_config, 1,
    type: Google.Cloud.Retail.V2alpha.CompletionConfig,
    json_name: "completionConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Retail.V2alpha.GetAttributesConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.UpdateAttributesConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes_config: Google.Cloud.Retail.V2alpha.AttributesConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct attributes_config: nil,
            update_mask: nil

  field :attributes_config, 1,
    type: Google.Cloud.Retail.V2alpha.AttributesConfig,
    json_name: "attributesConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Retail.V2alpha.AddCatalogAttributeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes_config: String.t(),
          catalog_attribute: Google.Cloud.Retail.V2alpha.CatalogAttribute.t() | nil
        }

  defstruct attributes_config: "",
            catalog_attribute: nil

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false

  field :catalog_attribute, 2,
    type: Google.Cloud.Retail.V2alpha.CatalogAttribute,
    json_name: "catalogAttribute",
    deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.RemoveCatalogAttributeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes_config: String.t(),
          key: String.t()
        }

  defstruct attributes_config: "",
            key: ""

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false
  field :key, 2, type: :string, deprecated: false
end
defmodule Google.Cloud.Retail.V2alpha.ReplaceCatalogAttributeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attributes_config: String.t(),
          catalog_attribute: Google.Cloud.Retail.V2alpha.CatalogAttribute.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct attributes_config: "",
            catalog_attribute: nil,
            update_mask: nil

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false

  field :catalog_attribute, 2,
    type: Google.Cloud.Retail.V2alpha.CatalogAttribute,
    json_name: "catalogAttribute",
    deprecated: false

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Retail.V2alpha.CatalogService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.retail.v2alpha.CatalogService"

  rpc :ListCatalogs,
      Google.Cloud.Retail.V2alpha.ListCatalogsRequest,
      Google.Cloud.Retail.V2alpha.ListCatalogsResponse

  rpc :UpdateCatalog,
      Google.Cloud.Retail.V2alpha.UpdateCatalogRequest,
      Google.Cloud.Retail.V2alpha.Catalog

  rpc :SetDefaultBranch,
      Google.Cloud.Retail.V2alpha.SetDefaultBranchRequest,
      Google.Protobuf.Empty

  rpc :GetDefaultBranch,
      Google.Cloud.Retail.V2alpha.GetDefaultBranchRequest,
      Google.Cloud.Retail.V2alpha.GetDefaultBranchResponse

  rpc :GetCompletionConfig,
      Google.Cloud.Retail.V2alpha.GetCompletionConfigRequest,
      Google.Cloud.Retail.V2alpha.CompletionConfig

  rpc :UpdateCompletionConfig,
      Google.Cloud.Retail.V2alpha.UpdateCompletionConfigRequest,
      Google.Cloud.Retail.V2alpha.CompletionConfig

  rpc :GetAttributesConfig,
      Google.Cloud.Retail.V2alpha.GetAttributesConfigRequest,
      Google.Cloud.Retail.V2alpha.AttributesConfig

  rpc :UpdateAttributesConfig,
      Google.Cloud.Retail.V2alpha.UpdateAttributesConfigRequest,
      Google.Cloud.Retail.V2alpha.AttributesConfig

  rpc :AddCatalogAttribute,
      Google.Cloud.Retail.V2alpha.AddCatalogAttributeRequest,
      Google.Cloud.Retail.V2alpha.AttributesConfig

  rpc :RemoveCatalogAttribute,
      Google.Cloud.Retail.V2alpha.RemoveCatalogAttributeRequest,
      Google.Cloud.Retail.V2alpha.AttributesConfig

  rpc :ReplaceCatalogAttribute,
      Google.Cloud.Retail.V2alpha.ReplaceCatalogAttributeRequest,
      Google.Cloud.Retail.V2alpha.AttributesConfig
end

defmodule Google.Cloud.Retail.V2alpha.CatalogService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.CatalogService.Service
end
