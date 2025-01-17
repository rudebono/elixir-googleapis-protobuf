defmodule Google.Ads.Admanager.V1.TaxonomyCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :taxonomy_category_id, 2, type: :int64, json_name: "taxonomyCategoryId", deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
  field :grouping_only, 5, type: :bool, json_name: "groupingOnly", deprecated: false

  field :parent_taxonomy_category_id, 6,
    type: :int64,
    json_name: "parentTaxonomyCategoryId",
    deprecated: false

  field :taxonomy_type, 9,
    type: Google.Ads.Admanager.V1.TaxonomyTypeEnum.TaxonomyType,
    json_name: "taxonomyType",
    enum: true,
    deprecated: false

  field :ancestor_names, 7,
    repeated: true,
    type: :string,
    json_name: "ancestorNames",
    deprecated: false

  field :ancestor_taxonomy_category_ids, 8,
    repeated: true,
    type: :int64,
    json_name: "ancestorTaxonomyCategoryIds",
    deprecated: false
end
