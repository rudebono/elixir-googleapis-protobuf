defmodule Google.Ads.Googleads.V18.Services.GenerateCreatorInsightsRequest.SearchAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :audience_attributes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.AudienceInsightsAttribute,
    json_name: "audienceAttributes",
    deprecated: false

  field :creator_attributes, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.AudienceInsightsAttribute,
    json_name: "creatorAttributes",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateCreatorInsightsRequest.YouTubeChannels do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :youtube_channels, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.YouTubeChannelInfo,
    json_name: "youtubeChannels",
    deprecated: false
end

defmodule Google.Ads.Googleads.V18.Services.GenerateCreatorInsightsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :criteria, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :customer_insights_group, 2,
    type: :string,
    json_name: "customerInsightsGroup",
    deprecated: false

  field :search_attributes, 3,
    type: Google.Ads.Googleads.V18.Services.GenerateCreatorInsightsRequest.SearchAttributes,
    json_name: "searchAttributes",
    oneof: 0

  field :search_channels, 4,
    type: Google.Ads.Googleads.V18.Services.GenerateCreatorInsightsRequest.YouTubeChannels,
    json_name: "searchChannels",
    oneof: 0
end

defmodule Google.Ads.Googleads.V18.Services.GenerateCreatorInsightsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :creator_insights, 1,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.YouTubeCreatorInsights,
    json_name: "creatorInsights"
end

defmodule Google.Ads.Googleads.V18.Services.YouTubeCreatorInsights do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :creator_name, 1, type: :string, json_name: "creatorName"

  field :creator_channels, 2,
    repeated: true,
    type: Google.Ads.Googleads.V18.Services.YouTubeChannelInsights,
    json_name: "creatorChannels"
end

defmodule Google.Ads.Googleads.V18.Services.YouTubeMetrics do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :subscriber_count, 1, type: :int64, json_name: "subscriberCount"
  field :views_count, 2, type: :int64, json_name: "viewsCount"
end

defmodule Google.Ads.Googleads.V18.Services.YouTubeChannelInsights do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :display_name, 1, type: :string, json_name: "displayName"

  field :youtube_channel, 2,
    type: Google.Ads.Googleads.V18.Common.YouTubeChannelInfo,
    json_name: "youtubeChannel"

  field :channel_metrics, 3,
    type: Google.Ads.Googleads.V18.Services.YouTubeMetrics,
    json_name: "channelMetrics"

  field :channel_audience_demographics, 4,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.AudienceInsightsAttributeMetadata,
    json_name: "channelAudienceDemographics"

  field :channel_attributes, 5,
    repeated: true,
    type: Google.Ads.Googleads.V18.Common.AudienceInsightsAttributeMetadata,
    json_name: "channelAttributes"

  field :channel_type, 6, type: :string, json_name: "channelType"
end

defmodule Google.Ads.Googleads.V18.Services.ContentCreatorInsightsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v18.services.ContentCreatorInsightsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateCreatorInsights,
      Google.Ads.Googleads.V18.Services.GenerateCreatorInsightsRequest,
      Google.Ads.Googleads.V18.Services.GenerateCreatorInsightsResponse
end

defmodule Google.Ads.Googleads.V18.Services.ContentCreatorInsightsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V18.Services.ContentCreatorInsightsService.Service
end
