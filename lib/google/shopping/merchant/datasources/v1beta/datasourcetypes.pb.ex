defmodule Google.Shopping.Merchant.Datasources.V1beta.PrimaryProductDataSource.Channel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CHANNEL_UNSPECIFIED, 0
  field :ONLINE_PRODUCTS, 1
  field :LOCAL_PRODUCTS, 2
  field :PRODUCTS, 3
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.PrimaryProductDataSource.DefaultRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :take_from_data_sources, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Datasources.V1beta.DataSourceReference,
    json_name: "takeFromDataSources",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.PrimaryProductDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :channel, 3,
    type: Google.Shopping.Merchant.Datasources.V1beta.PrimaryProductDataSource.Channel,
    enum: true,
    deprecated: false

  field :feed_label, 4,
    proto3_optional: true,
    type: :string,
    json_name: "feedLabel",
    deprecated: false

  field :content_language, 5,
    proto3_optional: true,
    type: :string,
    json_name: "contentLanguage",
    deprecated: false

  field :countries, 6, repeated: true, type: :string, deprecated: false

  field :default_rule, 7,
    type: Google.Shopping.Merchant.Datasources.V1beta.PrimaryProductDataSource.DefaultRule,
    json_name: "defaultRule",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.SupplementalProductDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feed_label, 4,
    proto3_optional: true,
    type: :string,
    json_name: "feedLabel",
    deprecated: false

  field :content_language, 5,
    proto3_optional: true,
    type: :string,
    json_name: "contentLanguage",
    deprecated: false

  field :referencing_primary_data_sources, 7,
    repeated: true,
    type: Google.Shopping.Merchant.Datasources.V1beta.DataSourceReference,
    json_name: "referencingPrimaryDataSources",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.LocalInventoryDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feed_label, 4, type: :string, json_name: "feedLabel", deprecated: false
  field :content_language, 5, type: :string, json_name: "contentLanguage", deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.RegionalInventoryDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :feed_label, 4, type: :string, json_name: "feedLabel", deprecated: false
  field :content_language, 5, type: :string, json_name: "contentLanguage", deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.PromotionDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_country, 1, type: :string, json_name: "targetCountry", deprecated: false
  field :content_language, 2, type: :string, json_name: "contentLanguage", deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.DataSourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :data_source_id, 0

  field :self, 1, type: :bool, oneof: 0

  field :primary_data_source_name, 3,
    type: :string,
    json_name: "primaryDataSourceName",
    oneof: 0,
    deprecated: false

  field :supplemental_data_source_name, 2,
    type: :string,
    json_name: "supplementalDataSourceName",
    oneof: 0,
    deprecated: false
end