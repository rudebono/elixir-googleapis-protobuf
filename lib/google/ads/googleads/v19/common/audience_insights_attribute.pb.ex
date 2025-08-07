defmodule Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :dimension_metadata, 0

  field :dimension, 1,
    type: Google.Ads.Googleads.V19.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :attribute, 2, type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttribute
  field :display_name, 3, type: :string, json_name: "displayName"
  field :display_info, 4, type: :string, json_name: "displayInfo"
  field :potential_youtube_reach, 8, type: :int64, json_name: "potentialYoutubeReach"
  field :subscriber_share, 9, type: :double, json_name: "subscriberShare"
  field :viewer_share, 13, type: :double, json_name: "viewerShare"

  field :youtube_channel_metadata, 5,
    type: Google.Ads.Googleads.V19.Common.YouTubeChannelAttributeMetadata,
    json_name: "youtubeChannelMetadata",
    oneof: 0

  field :youtube_video_metadata, 10,
    type: Google.Ads.Googleads.V19.Common.YouTubeVideoAttributeMetadata,
    json_name: "youtubeVideoMetadata",
    oneof: 0

  field :dynamic_attribute_metadata, 6,
    type: Google.Ads.Googleads.V19.Common.DynamicLineupAttributeMetadata,
    json_name: "dynamicAttributeMetadata",
    oneof: 0

  field :location_attribute_metadata, 7,
    type: Google.Ads.Googleads.V19.Common.LocationAttributeMetadata,
    json_name: "locationAttributeMetadata",
    oneof: 0

  field :user_interest_attribute_metadata, 11,
    type: Google.Ads.Googleads.V19.Common.UserInterestAttributeMetadata,
    json_name: "userInterestAttributeMetadata",
    oneof: 0

  field :knowledge_graph_attribute_metadata, 12,
    type: Google.Ads.Googleads.V19.Common.KnowledgeGraphAttributeMetadata,
    json_name: "knowledgeGraphAttributeMetadata",
    oneof: 0
end

defmodule Google.Ads.Googleads.V19.Common.AudienceInsightsAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :attribute, 0

  field :age_range, 1,
    type: Google.Ads.Googleads.V19.Common.AgeRangeInfo,
    json_name: "ageRange",
    oneof: 0

  field :gender, 2, type: Google.Ads.Googleads.V19.Common.GenderInfo, oneof: 0
  field :location, 3, type: Google.Ads.Googleads.V19.Common.LocationInfo, oneof: 0

  field :user_interest, 4,
    type: Google.Ads.Googleads.V19.Common.UserInterestInfo,
    json_name: "userInterest",
    oneof: 0

  field :entity, 5, type: Google.Ads.Googleads.V19.Common.AudienceInsightsEntity, oneof: 0
  field :category, 6, type: Google.Ads.Googleads.V19.Common.AudienceInsightsCategory, oneof: 0

  field :dynamic_lineup, 7,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsDynamicLineup,
    json_name: "dynamicLineup",
    oneof: 0

  field :parental_status, 8,
    type: Google.Ads.Googleads.V19.Common.ParentalStatusInfo,
    json_name: "parentalStatus",
    oneof: 0

  field :income_range, 9,
    type: Google.Ads.Googleads.V19.Common.IncomeRangeInfo,
    json_name: "incomeRange",
    oneof: 0

  field :youtube_channel, 10,
    type: Google.Ads.Googleads.V19.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel",
    oneof: 0

  field :youtube_video, 11,
    type: Google.Ads.Googleads.V19.Common.YouTubeVideoInfo,
    json_name: "youtubeVideo",
    oneof: 0
end

defmodule Google.Ads.Googleads.V19.Common.AudienceInsightsTopic do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :topic, 0

  field :entity, 1, type: Google.Ads.Googleads.V19.Common.AudienceInsightsEntity, oneof: 0
  field :category, 2, type: Google.Ads.Googleads.V19.Common.AudienceInsightsCategory, oneof: 0
end

defmodule Google.Ads.Googleads.V19.Common.AudienceInsightsEntity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :knowledge_graph_machine_id, 1,
    type: :string,
    json_name: "knowledgeGraphMachineId",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Common.AudienceInsightsCategory do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :category_id, 1, type: :string, json_name: "categoryId", deprecated: false
end

defmodule Google.Ads.Googleads.V19.Common.AudienceInsightsDynamicLineup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dynamic_lineup_id, 1, type: :string, json_name: "dynamicLineupId", deprecated: false
end

defmodule Google.Ads.Googleads.V19.Common.YouTubeChannelAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subscriber_count, 1, type: :int64, json_name: "subscriberCount"
end

defmodule Google.Ads.Googleads.V19.Common.YouTubeVideoAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :thumbnail_url, 1, type: :string, json_name: "thumbnailUrl"
  field :video_url, 2, type: :string, json_name: "videoUrl"
end

defmodule Google.Ads.Googleads.V19.Common.DynamicLineupAttributeMetadata.SampleChannel do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :youtube_channel, 1,
    type: Google.Ads.Googleads.V19.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel"

  field :display_name, 2, type: :string, json_name: "displayName"

  field :youtube_channel_metadata, 3,
    type: Google.Ads.Googleads.V19.Common.YouTubeChannelAttributeMetadata,
    json_name: "youtubeChannelMetadata"
end

defmodule Google.Ads.Googleads.V19.Common.DynamicLineupAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :inventory_country, 1,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "inventoryCountry"

  field :median_monthly_inventory, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "medianMonthlyInventory"

  field :channel_count_lower_bound, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "channelCountLowerBound"

  field :channel_count_upper_bound, 4,
    proto3_optional: true,
    type: :int64,
    json_name: "channelCountUpperBound"

  field :sample_channels, 5,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.DynamicLineupAttributeMetadata.SampleChannel,
    json_name: "sampleChannels"
end

defmodule Google.Ads.Googleads.V19.Common.LocationAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :country_location, 1,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "countryLocation"
end

defmodule Google.Ads.Googleads.V19.Common.UserInterestAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :user_interest_description, 1, type: :string, json_name: "userInterestDescription"
end

defmodule Google.Ads.Googleads.V19.Common.KnowledgeGraphAttributeMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :entity_capabilities, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V19.Enums.InsightsKnowledgeGraphEntityCapabilitiesEnum.InsightsKnowledgeGraphEntityCapabilities,
    json_name: "entityCapabilities",
    enum: true
end
