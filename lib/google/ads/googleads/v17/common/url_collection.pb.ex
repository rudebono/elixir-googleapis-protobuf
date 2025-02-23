defmodule Google.Ads.Googleads.V17.Common.UrlCollection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :url_collection_id, 5, proto3_optional: true, type: :string, json_name: "urlCollectionId"
  field :final_urls, 6, repeated: true, type: :string, json_name: "finalUrls"
  field :final_mobile_urls, 7, repeated: true, type: :string, json_name: "finalMobileUrls"

  field :tracking_url_template, 8,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"
end
