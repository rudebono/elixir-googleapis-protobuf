defmodule Google.Ads.Searchads360.V0.Common.SearchAds360TextAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :headline, 1, proto3_optional: true, type: :string
  field :description1, 2, proto3_optional: true, type: :string
  field :description2, 3, proto3_optional: true, type: :string
  field :display_url, 4, proto3_optional: true, type: :string, json_name: "displayUrl"

  field :display_mobile_url, 5,
    proto3_optional: true,
    type: :string,
    json_name: "displayMobileUrl"

  field :ad_tracking_id, 6, proto3_optional: true, type: :int64, json_name: "adTrackingId"
end

defmodule Google.Ads.Searchads360.V0.Common.SearchAds360ExpandedTextAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :headline, 1, proto3_optional: true, type: :string
  field :headline2, 2, proto3_optional: true, type: :string
  field :headline3, 3, proto3_optional: true, type: :string
  field :description1, 4, proto3_optional: true, type: :string
  field :description2, 5, proto3_optional: true, type: :string
  field :path1, 6, proto3_optional: true, type: :string
  field :path2, 7, proto3_optional: true, type: :string
  field :ad_tracking_id, 8, proto3_optional: true, type: :int64, json_name: "adTrackingId"
end

defmodule Google.Ads.Searchads360.V0.Common.SearchAds360ExpandedDynamicSearchAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :description1, 1, proto3_optional: true, type: :string
  field :description2, 2, proto3_optional: true, type: :string
  field :ad_tracking_id, 3, proto3_optional: true, type: :int64, json_name: "adTrackingId"
end

defmodule Google.Ads.Searchads360.V0.Common.SearchAds360ProductAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3
end

defmodule Google.Ads.Searchads360.V0.Common.SearchAds360ResponsiveSearchAdInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :path1, 1, proto3_optional: true, type: :string
  field :path2, 2, proto3_optional: true, type: :string
  field :ad_tracking_id, 3, proto3_optional: true, type: :int64, json_name: "adTrackingId"
  field :headlines, 4, repeated: true, type: Google.Ads.Searchads360.V0.Common.AdTextAsset
  field :descriptions, 5, repeated: true, type: Google.Ads.Searchads360.V0.Common.AdTextAsset
end
