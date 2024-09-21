defmodule Google.Cloud.Retail.V2.ListCatalogsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Retail.V2.ListCatalogsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :catalogs, 1, repeated: true, type: Google.Cloud.Retail.V2.Catalog
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Retail.V2.UpdateCatalogRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :catalog, 1, type: Google.Cloud.Retail.V2.Catalog, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2.SetDefaultBranchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
  field :branch_id, 2, type: :string, json_name: "branchId", deprecated: false
  field :note, 3, type: :string
  field :force, 4, type: :bool
end

defmodule Google.Cloud.Retail.V2.GetDefaultBranchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :catalog, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.GetDefaultBranchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :branch, 1, type: :string, deprecated: false
  field :set_time, 2, type: Google.Protobuf.Timestamp, json_name: "setTime"
  field :note, 3, type: :string
end

defmodule Google.Cloud.Retail.V2.GetCompletionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.UpdateCompletionConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :completion_config, 1,
    type: Google.Cloud.Retail.V2.CompletionConfig,
    json_name: "completionConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2.GetAttributesConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.UpdateAttributesConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attributes_config, 1,
    type: Google.Cloud.Retail.V2.AttributesConfig,
    json_name: "attributesConfig",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2.AddCatalogAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false

  field :catalog_attribute, 2,
    type: Google.Cloud.Retail.V2.CatalogAttribute,
    json_name: "catalogAttribute",
    deprecated: false
end

defmodule Google.Cloud.Retail.V2.RemoveCatalogAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false
  field :key, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Retail.V2.ReplaceCatalogAttributeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :attributes_config, 1, type: :string, json_name: "attributesConfig", deprecated: false

  field :catalog_attribute, 2,
    type: Google.Cloud.Retail.V2.CatalogAttribute,
    json_name: "catalogAttribute",
    deprecated: false

  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Retail.V2.CatalogService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.retail.v2.CatalogService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListCatalogs,
      Google.Cloud.Retail.V2.ListCatalogsRequest,
      Google.Cloud.Retail.V2.ListCatalogsResponse

  rpc :UpdateCatalog, Google.Cloud.Retail.V2.UpdateCatalogRequest, Google.Cloud.Retail.V2.Catalog

  rpc :SetDefaultBranch, Google.Cloud.Retail.V2.SetDefaultBranchRequest, Google.Protobuf.Empty

  rpc :GetDefaultBranch,
      Google.Cloud.Retail.V2.GetDefaultBranchRequest,
      Google.Cloud.Retail.V2.GetDefaultBranchResponse

  rpc :GetCompletionConfig,
      Google.Cloud.Retail.V2.GetCompletionConfigRequest,
      Google.Cloud.Retail.V2.CompletionConfig

  rpc :UpdateCompletionConfig,
      Google.Cloud.Retail.V2.UpdateCompletionConfigRequest,
      Google.Cloud.Retail.V2.CompletionConfig

  rpc :GetAttributesConfig,
      Google.Cloud.Retail.V2.GetAttributesConfigRequest,
      Google.Cloud.Retail.V2.AttributesConfig

  rpc :UpdateAttributesConfig,
      Google.Cloud.Retail.V2.UpdateAttributesConfigRequest,
      Google.Cloud.Retail.V2.AttributesConfig

  rpc :AddCatalogAttribute,
      Google.Cloud.Retail.V2.AddCatalogAttributeRequest,
      Google.Cloud.Retail.V2.AttributesConfig

  rpc :RemoveCatalogAttribute,
      Google.Cloud.Retail.V2.RemoveCatalogAttributeRequest,
      Google.Cloud.Retail.V2.AttributesConfig

  rpc :ReplaceCatalogAttribute,
      Google.Cloud.Retail.V2.ReplaceCatalogAttributeRequest,
      Google.Cloud.Retail.V2.AttributesConfig
end

defmodule Google.Cloud.Retail.V2.CatalogService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Retail.V2.CatalogService.Service
end