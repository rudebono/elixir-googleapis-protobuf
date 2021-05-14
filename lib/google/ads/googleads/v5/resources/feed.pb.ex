defmodule Google.Ads.Googleads.V5.Resources.FeedAttributeOperation.Operator do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :ADD

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :ADD, 2
end

defmodule Google.Ads.Googleads.V5.Resources.Feed.PlacesLocationFeedData.OAuthInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          http_method: Google.Protobuf.StringValue.t() | nil,
          http_request_url: Google.Protobuf.StringValue.t() | nil,
          http_authorization_header: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:http_method, :http_request_url, :http_authorization_header]

  field :http_method, 1, type: Google.Protobuf.StringValue
  field :http_request_url, 2, type: Google.Protobuf.StringValue
  field :http_authorization_header, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Resources.Feed.PlacesLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oauth_info:
            Google.Ads.Googleads.V5.Resources.Feed.PlacesLocationFeedData.OAuthInfo.t() | nil,
          email_address: Google.Protobuf.StringValue.t() | nil,
          business_account_id: Google.Protobuf.StringValue.t() | nil,
          business_name_filter: Google.Protobuf.StringValue.t() | nil,
          category_filters: [Google.Protobuf.StringValue.t()],
          label_filters: [Google.Protobuf.StringValue.t()]
        }

  defstruct [
    :oauth_info,
    :email_address,
    :business_account_id,
    :business_name_filter,
    :category_filters,
    :label_filters
  ]

  field :oauth_info, 1,
    type: Google.Ads.Googleads.V5.Resources.Feed.PlacesLocationFeedData.OAuthInfo

  field :email_address, 2, type: Google.Protobuf.StringValue
  field :business_account_id, 10, type: Google.Protobuf.StringValue
  field :business_name_filter, 4, type: Google.Protobuf.StringValue
  field :category_filters, 5, repeated: true, type: Google.Protobuf.StringValue
  field :label_filters, 6, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Resources.Feed.AffiliateLocationFeedData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          chain_ids: [Google.Protobuf.Int64Value.t()],
          relationship_type:
            Google.Ads.Googleads.V5.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType.t()
        }

  defstruct [:chain_ids, :relationship_type]

  field :chain_ids, 1, repeated: true, type: Google.Protobuf.Int64Value

  field :relationship_type, 2,
    type:
      Google.Ads.Googleads.V5.Enums.AffiliateLocationFeedRelationshipTypeEnum.AffiliateLocationFeedRelationshipType,
    enum: true
end

defmodule Google.Ads.Googleads.V5.Resources.Feed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          system_feed_generation_data: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          attributes: [Google.Ads.Googleads.V5.Resources.FeedAttribute.t()],
          attribute_operations: [Google.Ads.Googleads.V5.Resources.FeedAttributeOperation.t()],
          origin: Google.Ads.Googleads.V5.Enums.FeedOriginEnum.FeedOrigin.t(),
          status: Google.Ads.Googleads.V5.Enums.FeedStatusEnum.FeedStatus.t()
        }

  defstruct [
    :system_feed_generation_data,
    :resource_name,
    :id,
    :name,
    :attributes,
    :attribute_operations,
    :origin,
    :status
  ]

  oneof :system_feed_generation_data, 0
  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :attributes, 4, repeated: true, type: Google.Ads.Googleads.V5.Resources.FeedAttribute

  field :attribute_operations, 9,
    repeated: true,
    type: Google.Ads.Googleads.V5.Resources.FeedAttributeOperation

  field :origin, 5, type: Google.Ads.Googleads.V5.Enums.FeedOriginEnum.FeedOrigin, enum: true
  field :status, 8, type: Google.Ads.Googleads.V5.Enums.FeedStatusEnum.FeedStatus, enum: true

  field :places_location_feed_data, 6,
    type: Google.Ads.Googleads.V5.Resources.Feed.PlacesLocationFeedData,
    oneof: 0

  field :affiliate_location_feed_data, 7,
    type: Google.Ads.Googleads.V5.Resources.Feed.AffiliateLocationFeedData,
    oneof: 0
end

defmodule Google.Ads.Googleads.V5.Resources.FeedAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          type: Google.Ads.Googleads.V5.Enums.FeedAttributeTypeEnum.FeedAttributeType.t(),
          is_part_of_key: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [:id, :name, :type, :is_part_of_key]

  field :id, 1, type: Google.Protobuf.Int64Value
  field :name, 2, type: Google.Protobuf.StringValue

  field :type, 3,
    type: Google.Ads.Googleads.V5.Enums.FeedAttributeTypeEnum.FeedAttributeType,
    enum: true

  field :is_part_of_key, 4, type: Google.Protobuf.BoolValue
end

defmodule Google.Ads.Googleads.V5.Resources.FeedAttributeOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operator: Google.Ads.Googleads.V5.Resources.FeedAttributeOperation.Operator.t(),
          value: Google.Ads.Googleads.V5.Resources.FeedAttribute.t() | nil
        }

  defstruct [:operator, :value]

  field :operator, 1,
    type: Google.Ads.Googleads.V5.Resources.FeedAttributeOperation.Operator,
    enum: true

  field :value, 2, type: Google.Ads.Googleads.V5.Resources.FeedAttribute
end
