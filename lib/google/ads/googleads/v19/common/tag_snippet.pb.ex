defmodule Google.Ads.Googleads.V19.Common.TagSnippet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Googleads.V19.Enums.TrackingCodeTypeEnum.TrackingCodeType,
    enum: true

  field :page_format, 2,
    type: Google.Ads.Googleads.V19.Enums.TrackingCodePageFormatEnum.TrackingCodePageFormat,
    json_name: "pageFormat",
    enum: true

  field :global_site_tag, 5, proto3_optional: true, type: :string, json_name: "globalSiteTag"
  field :event_snippet, 6, proto3_optional: true, type: :string, json_name: "eventSnippet"
end
