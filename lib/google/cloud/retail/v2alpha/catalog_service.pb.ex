defmodule Google.Cloud.Retail.V2alpha.ListCatalogsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Retail.V2alpha.ListCatalogsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :catalogs, 1, repeated: true, type: Google.Cloud.Retail.V2alpha.Catalog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Retail.V2alpha.UpdateCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :catalog, 1, type: Google.Cloud.Retail.V2alpha.Catalog, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2alpha.SetDefaultBranchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
  field :branch_id, 2, type: :string, json_name: "branchId", deprecated: false
  field :note, 3, type: :string
  field :force, 4, type: :bool
end

defmodule Google.Cloud.Retail.V2alpha.GetDefaultBranchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.GetDefaultBranchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :branch, 1, type: :string, deprecated: false
  field :set_time, 2, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :note, 3, type: :string
end

defmodule Google.Cloud.Retail.V2alpha.GetCompletionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.UpdateCompletionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :completion_config, 1,
    type: Google.Cloud.Retail.V2alpha.CompletionConfig,
    json_name: "completionConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2alpha.GetAttributesConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.UpdateAttributesConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attributes_config, 1,
    type: Google.Cloud.Retail.V2alpha.AttributesConfig,
    json_name: "attributesConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2alpha.AddCatalogAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false

  field :catalog_attribute, 2,
    type: Google.Cloud.Retail.V2alpha.CatalogAttribute,
    json_name: "catalogAttribute",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.RemoveCatalogAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false
  field :key, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.BatchRemoveCatalogAttributesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false

  field :attribute_keys, 2,
    repeated: true,
    type: :string,
    json_name: "attributeKeys",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2alpha.BatchRemoveCatalogAttributesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :deleted_catalog_attributes, 1,
    repeated: true,
    type: :string,
    json_name: "deletedCatalogAttributes"

  field :reset_catalog_attributes, 2,
    repeated: true,
    type: :string,
    json_name: "resetCatalogAttributes"
end

defmodule Google.Cloud.Retail.V2alpha.ReplaceCatalogAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false

  field :catalog_attribute, 2,
    type: Google.Cloud.Retail.V2alpha.CatalogAttribute,
    json_name: "catalogAttribute",
    deprecated: false

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2alpha.CatalogService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2alpha.CatalogService",
    protoc_gen_elixir_version: "0.13.0"

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

  rpc :BatchRemoveCatalogAttributes,
      Google.Cloud.Retail.V2alpha.BatchRemoveCatalogAttributesRequest,
      Google.Cloud.Retail.V2alpha.BatchRemoveCatalogAttributesResponse

  rpc :ReplaceCatalogAttribute,
      Google.Cloud.Retail.V2alpha.ReplaceCatalogAttributeRequest,
      Google.Cloud.Retail.V2alpha.AttributesConfig
end

defmodule Google.Cloud.Retail.V2alpha.CatalogService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2alpha.CatalogService.Service
end