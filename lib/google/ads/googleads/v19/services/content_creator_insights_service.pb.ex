defmodule Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsRequest.SearchAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :audience_attributes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttribute,
    json_name: "audienceAttributes",
    deprecated: false

  field :creator_attributes, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttribute,
    json_name: "creatorAttributes",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsRequest.SearchBrand do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :brand_entities, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttribute,
    json_name: "brandEntities",
    deprecated: false

  field :include_related_topics, 2,
    type: :bool,
    json_name: "includeRelatedTopics",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsRequest.YouTubeChannels do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :youtube_channels, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.YouTubeChannelInfo,
    json_name: "youtubeChannels",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :criteria, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_insights_group, 2,
    type: :string,
    json_name: "customerInsightsGroup",
    deprecated: false

  field :country_locations, 6,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "countryLocations",
    deprecated: false

  field :search_attributes, 3,
    type: Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsRequest.SearchAttributes,
    json_name: "searchAttributes",
    oneof: 0

  field :search_brand, 5,
    type: Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsRequest.SearchBrand,
    json_name: "searchBrand",
    oneof: 0

  field :search_channels, 4,
    type: Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsRequest.YouTubeChannels,
    json_name: "searchChannels",
    oneof: 0
end

defmodule Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :creator_insights, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.YouTubeCreatorInsights,
    json_name: "creatorInsights"
end

defmodule Google.Ads.Googleads.V19.Services.GenerateTrendingInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :criteria, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_insights_group, 2,
    type: :string,
    json_name: "customerInsightsGroup",
    deprecated: false

  field :country_location, 3,
    type: Google.Ads.Googleads.V19.Common.LocationInfo,
    json_name: "countryLocation",
    deprecated: false

  field :search_audience, 4,
    type: Google.Ads.Googleads.V19.Services.SearchAudience,
    json_name: "searchAudience",
    oneof: 0

  field :search_topics, 5,
    type: Google.Ads.Googleads.V19.Services.SearchTopics,
    json_name: "searchTopics",
    oneof: 0
end

defmodule Google.Ads.Googleads.V19.Services.GenerateTrendingInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :trend_insights, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.TrendInsight,
    json_name: "trendInsights"
end

defmodule Google.Ads.Googleads.V19.Services.YouTubeCreatorInsights do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :creator_name, 1, type: :string, json_name: "creatorName"

  field :creator_channels, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Services.YouTubeChannelInsights,
    json_name: "creatorChannels"
end

defmodule Google.Ads.Googleads.V19.Services.YouTubeMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :subscriber_count, 1, type: :int64, json_name: "subscriberCount"
  field :views_count, 2, type: :int64, json_name: "viewsCount"
  field :video_count, 3, type: :int64, json_name: "videoCount"
  field :is_active_shorts_creator, 4, type: :bool, json_name: "isActiveShortsCreator"
end

defmodule Google.Ads.Googleads.V19.Services.YouTubeChannelInsights do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"

  field :youtube_channel, 2,
    type: Google.Ads.Googleads.V19.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel"

  field :channel_url, 9, type: :string, json_name: "channelUrl"
  field :channel_description, 10, type: :string, json_name: "channelDescription"

  field :channel_metrics, 3,
    type: Google.Ads.Googleads.V19.Services.YouTubeMetrics,
    json_name: "channelMetrics"

  field :channel_audience_attributes, 7,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata,
    json_name: "channelAudienceAttributes"

  field :channel_attributes, 5,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata,
    json_name: "channelAttributes"

  field :top_videos, 8,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata,
    json_name: "topVideos"

  field :channel_type, 6, type: :string, json_name: "channelType"
end

defmodule Google.Ads.Googleads.V19.Services.SearchAudience do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :audience_attributes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttribute,
    json_name: "audienceAttributes",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.SearchTopics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :entities, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsEntity,
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Services.TrendInsight do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :trend_attribute, 1,
    type: Google.Ads.Googleads.V19.Common.AudienceInsightsAttributeMetadata,
    json_name: "trendAttribute"

  field :trend_metrics, 2,
    type: Google.Ads.Googleads.V19.Services.TrendInsightMetrics,
    json_name: "trendMetrics"

  field :trend, 3,
    type: Google.Ads.Googleads.V19.Enums.InsightsTrendEnum.InsightsTrend,
    enum: true
end

defmodule Google.Ads.Googleads.V19.Services.TrendInsightMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :views_count, 1, type: :int64, json_name: "viewsCount"
end

defmodule Google.Ads.Googleads.V19.Services.ContentCreatorInsightsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v19.services.ContentCreatorInsightsService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :GenerateCreatorInsights,
      Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsRequest,
      Google.Ads.Googleads.V19.Services.GenerateCreatorInsightsResponse

  rpc :GenerateTrendingInsights,
      Google.Ads.Googleads.V19.Services.GenerateTrendingInsightsRequest,
      Google.Ads.Googleads.V19.Services.GenerateTrendingInsightsResponse
end

defmodule Google.Ads.Googleads.V19.Services.ContentCreatorInsightsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V19.Services.ContentCreatorInsightsService.Service
end
