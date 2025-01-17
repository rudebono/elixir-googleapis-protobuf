defmodule Google.Ads.Googleads.V16.Resources.DomainCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 10, proto3_optional: true, type: :string, deprecated: false
  field :category, 11, proto3_optional: true, type: :string, deprecated: false

  field :language_code, 12,
    proto3_optional: true,
    type: :string,
    json_name: "languageCode",
    deprecated: false

  field :domain, 13, proto3_optional: true, type: :string, deprecated: false

  field :coverage_fraction, 14,
    proto3_optional: true,
    type: :double,
    json_name: "coverageFraction",
    deprecated: false

  field :category_rank, 15,
    proto3_optional: true,
    type: :int64,
    json_name: "categoryRank",
    deprecated: false

  field :has_children, 16,
    proto3_optional: true,
    type: :bool,
    json_name: "hasChildren",
    deprecated: false

  field :recommended_cpc_bid_micros, 17,
    proto3_optional: true,
    type: :int64,
    json_name: "recommendedCpcBidMicros",
    deprecated: false
end
