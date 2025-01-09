defmodule Google.Shopping.Merchant.Datasources.V1beta.DataSource.Input do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INPUT_UNSPECIFIED, 0
  field :API, 1
  field :FILE, 2
  field :UI, 3
  field :AUTOFEED, 4
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.DataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :Type, 0

  field :primary_product_data_source, 4,
    type: Google.Shopping.Merchant.Datasources.V1beta.PrimaryProductDataSource,
    json_name: "primaryProductDataSource",
    oneof: 0

  field :supplemental_product_data_source, 5,
    type: Google.Shopping.Merchant.Datasources.V1beta.SupplementalProductDataSource,
    json_name: "supplementalProductDataSource",
    oneof: 0

  field :local_inventory_data_source, 6,
    type: Google.Shopping.Merchant.Datasources.V1beta.LocalInventoryDataSource,
    json_name: "localInventoryDataSource",
    oneof: 0

  field :regional_inventory_data_source, 7,
    type: Google.Shopping.Merchant.Datasources.V1beta.RegionalInventoryDataSource,
    json_name: "regionalInventoryDataSource",
    oneof: 0

  field :promotion_data_source, 8,
    type: Google.Shopping.Merchant.Datasources.V1beta.PromotionDataSource,
    json_name: "promotionDataSource",
    oneof: 0

  field :product_review_data_source, 9,
    type: Google.Shopping.Merchant.Datasources.V1beta.ProductReviewDataSource,
    json_name: "productReviewDataSource",
    oneof: 0

  field :merchant_review_data_source, 12,
    type: Google.Shopping.Merchant.Datasources.V1beta.MerchantReviewDataSource,
    json_name: "merchantReviewDataSource",
    oneof: 0

  field :name, 1, type: :string, deprecated: false
  field :data_source_id, 2, type: :int64, json_name: "dataSourceId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false

  field :input, 10,
    type: Google.Shopping.Merchant.Datasources.V1beta.DataSource.Input,
    enum: true,
    deprecated: false

  field :file_input, 11,
    type: Google.Shopping.Merchant.Datasources.V1beta.FileInput,
    json_name: "fileInput",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.GetDataSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.ListDataSourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.ListDataSourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_sources, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Datasources.V1beta.DataSource,
    json_name: "dataSources"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.CreateDataSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :data_source, 2,
    type: Google.Shopping.Merchant.Datasources.V1beta.DataSource,
    json_name: "dataSource",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.UpdateDataSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :data_source, 1,
    type: Google.Shopping.Merchant.Datasources.V1beta.DataSource,
    json_name: "dataSource",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.FetchDataSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.DeleteDataSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.DataSourcesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.datasources.v1beta.DataSourcesService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetDataSource,
      Google.Shopping.Merchant.Datasources.V1beta.GetDataSourceRequest,
      Google.Shopping.Merchant.Datasources.V1beta.DataSource

  rpc :ListDataSources,
      Google.Shopping.Merchant.Datasources.V1beta.ListDataSourcesRequest,
      Google.Shopping.Merchant.Datasources.V1beta.ListDataSourcesResponse

  rpc :CreateDataSource,
      Google.Shopping.Merchant.Datasources.V1beta.CreateDataSourceRequest,
      Google.Shopping.Merchant.Datasources.V1beta.DataSource

  rpc :UpdateDataSource,
      Google.Shopping.Merchant.Datasources.V1beta.UpdateDataSourceRequest,
      Google.Shopping.Merchant.Datasources.V1beta.DataSource

  rpc :DeleteDataSource,
      Google.Shopping.Merchant.Datasources.V1beta.DeleteDataSourceRequest,
      Google.Protobuf.Empty

  rpc :FetchDataSource,
      Google.Shopping.Merchant.Datasources.V1beta.FetchDataSourceRequest,
      Google.Protobuf.Empty
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.DataSourcesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Datasources.V1beta.DataSourcesService.Service
end