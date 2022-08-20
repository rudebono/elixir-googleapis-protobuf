defmodule Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :suggestion_data, 0

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :campaign, 2, type: :string, oneof: 0, deprecated: false

  field :suggestion_info, 3,
    type: Google.Ads.Googleads.V11.Services.SmartCampaignSuggestionInfo,
    json_name: "suggestionInfo",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.SmartCampaignSuggestionInfo.LocationList do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.LocationInfo,
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.SmartCampaignSuggestionInfo.BusinessContext do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :business_name, 1, type: :string, json_name: "businessName", deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.SmartCampaignSuggestionInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :business_setting, 0

  oneof :geo_target, 1

  field :final_url, 1, type: :string, json_name: "finalUrl", deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false

  field :ad_schedules, 6,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.AdScheduleInfo,
    json_name: "adSchedules",
    deprecated: false

  field :keyword_themes, 7,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.KeywordThemeInfo,
    json_name: "keywordThemes",
    deprecated: false

  field :business_context, 8,
    type: Google.Ads.Googleads.V11.Services.SmartCampaignSuggestionInfo.BusinessContext,
    json_name: "businessContext",
    oneof: 0,
    deprecated: false

  field :business_profile_location, 9,
    type: :string,
    json_name: "businessProfileLocation",
    oneof: 0,
    deprecated: false

  field :location_list, 4,
    type: Google.Ads.Googleads.V11.Services.SmartCampaignSuggestionInfo.LocationList,
    json_name: "locationList",
    oneof: 1,
    deprecated: false

  field :proximity, 5,
    type: Google.Ads.Googleads.V11.Common.ProximityInfo,
    oneof: 1,
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :min_daily_clicks, 1, type: :int64, json_name: "minDailyClicks"
  field :max_daily_clicks, 2, type: :int64, json_name: "maxDailyClicks"
end

defmodule Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :daily_amount_micros, 1, type: :int64, json_name: "dailyAmountMicros"

  field :metrics, 2,
    type: Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsResponse.Metrics
end

defmodule Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :low, 1,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption,
    deprecated: false

  field :recommended, 2,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption,
    deprecated: false

  field :high, 3,
    proto3_optional: true,
    type:
      Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsResponse.BudgetOption,
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.SuggestSmartCampaignAdRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :suggestion_info, 2,
    type: Google.Ads.Googleads.V11.Services.SmartCampaignSuggestionInfo,
    json_name: "suggestionInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.SuggestSmartCampaignAdResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ad_info, 1,
    type: Google.Ads.Googleads.V11.Common.SmartCampaignAdInfo,
    json_name: "adInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.SuggestKeywordThemesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :suggestion_info, 2,
    type: Google.Ads.Googleads.V11.Services.SmartCampaignSuggestionInfo,
    json_name: "suggestionInfo",
    deprecated: false
end

defmodule Google.Ads.Googleads.V11.Services.SuggestKeywordThemesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :keyword_themes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Resources.KeywordThemeConstant,
    json_name: "keywordThemes"
end

defmodule Google.Ads.Googleads.V11.Services.SmartCampaignSuggestService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.SmartCampaignSuggestService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :SuggestSmartCampaignBudgetOptions,
      Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsRequest,
      Google.Ads.Googleads.V11.Services.SuggestSmartCampaignBudgetOptionsResponse

  rpc :SuggestSmartCampaignAd,
      Google.Ads.Googleads.V11.Services.SuggestSmartCampaignAdRequest,
      Google.Ads.Googleads.V11.Services.SuggestSmartCampaignAdResponse

  rpc :SuggestKeywordThemes,
      Google.Ads.Googleads.V11.Services.SuggestKeywordThemesRequest,
      Google.Ads.Googleads.V11.Services.SuggestKeywordThemesResponse
end

defmodule Google.Ads.Googleads.V11.Services.SmartCampaignSuggestService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.SmartCampaignSuggestService.Service
end