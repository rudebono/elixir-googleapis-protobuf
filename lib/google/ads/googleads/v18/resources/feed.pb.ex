defmodule Google.Ads.Googleads.V18.Resources.FeedAttributeOperation.Operator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ADD, 2
end

defmodule Google.Ads.Googleads.V18.Resources.Feed.PlacesLocationFeedData.OAuthInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :http_method, 4, proto3_optional: true, type: :string, json_name: "httpMethod"
  field :http_request_url, 5, proto3_optional: true, type: :string, json_name: "httpRequestUrl"

  field :http_authorization_header, 6,
    proto3_optional: true,
    type: :string,
    json_name: "httpAuthorizationHeader"
end

defmodule Google.Ads.Googleads.V18.Resources.Feed.PlacesLocationFeedData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :oauth_info, 1,
    type: Google.Ads.Googleads.V18.Resources.Feed.PlacesLocationFeedData.OAuthInfo,
    json_name: "oauthInfo",
    deprecated: false

  field :email_address, 7, proto3_optional: true, type: :string, json_name: "emailAddress"
  field :business_account_id, 8, type: :string, json_name: "businessAccountId"

  field :business_name_filter, 9,
    proto3_optional: true,
    type: :string,
    json_name: "businessNameFilter"

  field :category_filters, 11, repeated: true, type: :string, json_name: "categoryFilters"
  field :label_filters, 12, repeated: true, type: :string, json_name: "labelFilters"
end

defmodule Google.Ads.Googleads.V18.Resources.Feed.AffiliateLocationFeedData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chain_ids, 3, repeated: true, type: :int64, json_name: "chainIds"

  field :relationship_type, 2,
    type:
      Google.Ads.Googleads.V18.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType,
    json_name: "relationshipType",
    enum: true
end

defmodule Google.Ads.Googleads.V18.Resources.Feed do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :system_feed_generation_data, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 11, proto3_optional: true, type: :int64, deprecated: false
  field :name, 12, proto3_optional: true, type: :string, deprecated: false
  field :attributes, 4, repeated: true, type: Google.Ads.Googleads.V18.Resources.FeedAttribute

  field :attribute_operations, 9,
    repeated: true,
    type: Google.Ads.Googleads.V18.Resources.FeedAttributeOperation,
    json_name: "attributeOperations"

  field :origin, 5,
    type: Google.Ads.Googleads.V18.Enums.FeedOriginEnum.FeedOrigin,
    enum: true,
    deprecated: false

  field :status, 8,
    type: Google.Ads.Googleads.V18.Enums.FeedStatusEnum.FeedStatus,
    enum: true,
    deprecated: false

  field :places_location_feed_data, 6,
    type: Google.Ads.Googleads.V18.Resources.Feed.PlacesLocationFeedData,
    json_name: "placesLocationFeedData",
    oneof: 0

  field :affiliate_location_feed_data, 7,
    type: Google.Ads.Googleads.V18.Resources.Feed.AffiliateLocationFeedData,
    json_name: "affiliateLocationFeedData",
    oneof: 0
end

defmodule Google.Ads.Googleads.V18.Resources.FeedAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :id, 5, proto3_optional: true, type: :int64
  field :name, 6, proto3_optional: true, type: :string

  field :type, 3,
    type: Google.Ads.Googleads.V18.Enums.FeedAttributeTypeEnum.FeedAttributeType,
    enum: true

  field :is_part_of_key, 7, proto3_optional: true, type: :bool, json_name: "isPartOfKey"
end

defmodule Google.Ads.Googleads.V18.Resources.FeedAttributeOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :operator, 1,
    type: Google.Ads.Googleads.V18.Resources.FeedAttributeOperation.Operator,
    enum: true,
    deprecated: false

  field :value, 2, type: Google.Ads.Googleads.V18.Resources.FeedAttribute, deprecated: false
end
