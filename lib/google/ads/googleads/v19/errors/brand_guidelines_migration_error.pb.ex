defmodule Google.Ads.Googleads.V19.Errors.BrandGuidelinesMigrationErrorEnum.BrandGuidelinesMigrationError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BRAND_GUIDELINES_ALREADY_ENABLED, 2
  field :CANNOT_ENABLE_BRAND_GUIDELINES_FOR_REMOVED_CAMPAIGN, 3
  field :BRAND_GUIDELINES_LOGO_LIMIT_EXCEEDED, 4
  field :CANNOT_AUTO_POPULATE_BRAND_ASSETS_WHEN_BRAND_ASSETS_PROVIDED, 5
  field :AUTO_POPULATE_BRAND_ASSETS_REQUIRED_WHEN_BRAND_ASSETS_OMITTED, 6
  field :TOO_MANY_ENABLE_OPERATIONS, 7
end

defmodule Google.Ads.Googleads.V19.Errors.BrandGuidelinesMigrationErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
