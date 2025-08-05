defmodule Google.Shopping.Merchant.Datasources.V1.PrimaryProductDataSource.Destination.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :ENABLED, 1
  field :DISABLED, 2
end

defmodule Google.Shopping.Merchant.Datasources.V1.PrimaryProductDataSource.DefaultRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :take_from_data_sources, 1,
    repeated: true,
    type: Google.Shopping.Merchant.Datasources.V1.DataSourceReference,
    json_name: "takeFromDataSources",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1.PrimaryProductDataSource.Destination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :destination, 1, type: Google.Shopping.Type.Destination.DestinationEnum, enum: true

  field :state, 2,
    type: Google.Shopping.Merchant.Datasources.V1.PrimaryProductDataSource.Destination.State,
    enum: true
end

defmodule Google.Shopping.Merchant.Datasources.V1.PrimaryProductDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :legacy_local, 11, type: :bool, json_name: "legacyLocal", deprecated: false

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
    type: Google.Shopping.Merchant.Datasources.V1.PrimaryProductDataSource.DefaultRule,
    json_name: "defaultRule",
    deprecated: false

  field :contains_custom_rules, 9,
    type: :bool,
    json_name: "containsCustomRules",
    deprecated: false

  field :destinations, 10,
    repeated: true,
    type: Google.Shopping.Merchant.Datasources.V1.PrimaryProductDataSource.Destination,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1.SupplementalProductDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
    type: Google.Shopping.Merchant.Datasources.V1.DataSourceReference,
    json_name: "referencingPrimaryDataSources",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1.LocalInventoryDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :feed_label, 4, type: :string, json_name: "feedLabel", deprecated: false
  field :content_language, 5, type: :string, json_name: "contentLanguage", deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1.RegionalInventoryDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :feed_label, 4, type: :string, json_name: "feedLabel", deprecated: false
  field :content_language, 5, type: :string, json_name: "contentLanguage", deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1.PromotionDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :target_country, 1, type: :string, json_name: "targetCountry", deprecated: false
  field :content_language, 2, type: :string, json_name: "contentLanguage", deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1.ProductReviewDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Datasources.V1.MerchantReviewDataSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Shopping.Merchant.Datasources.V1.DataSourceReference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
