defmodule Google.Ads.Googleads.V10.Resources.DynamicSearchAdsSearchTermView do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :search_term, 9,
    proto3_optional: true,
    type: :string,
    json_name: "searchTerm",
    deprecated: false

  field :headline, 10, proto3_optional: true, type: :string, deprecated: false

  field :landing_page, 11,
    proto3_optional: true,
    type: :string,
    json_name: "landingPage",
    deprecated: false

  field :page_url, 12,
    proto3_optional: true,
    type: :string,
    json_name: "pageUrl",
    deprecated: false

  field :has_negative_keyword, 13,
    proto3_optional: true,
    type: :bool,
    json_name: "hasNegativeKeyword",
    deprecated: false

  field :has_matching_keyword, 14,
    proto3_optional: true,
    type: :bool,
    json_name: "hasMatchingKeyword",
    deprecated: false

  field :has_negative_url, 15,
    proto3_optional: true,
    type: :bool,
    json_name: "hasNegativeUrl",
    deprecated: false
end