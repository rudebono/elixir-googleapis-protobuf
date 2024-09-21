defmodule Google.Shopping.Merchant.Datasources.V1beta.PrimaryProductDataSource.Channel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CHANNEL_UNSPECIFIED, 0
  field :ONLINE_PRODUCTS, 1
  field :LOCAL_PRODUCTS, 2
  field :PRODUCTS, 3
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