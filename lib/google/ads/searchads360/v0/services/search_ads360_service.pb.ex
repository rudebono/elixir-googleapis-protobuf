defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360Request do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :validate_only, 5, type: :bool, json_name: "validateOnly"
  field :return_total_results_count, 7, type: :bool, json_name: "returnTotalResultsCount"

  field :summary_row_setting, 8,
    type: Google.Ads.Searchads360.V0.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    json_name: "summaryRowSetting",
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360Response do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Searchads360.V0.Services.SearchAds360Row
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_results_count, 3, type: :int64, json_name: "totalResultsCount"
  field :field_mask, 5, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :summary_row, 6,
    type: Google.Ads.Searchads360.V0.Services.SearchAds360Row,
    json_name: "summaryRow"

  field :custom_column_headers, 7,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.CustomColumnHeader,
    json_name: "customColumnHeaders"
end

defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360StreamRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :batch_size, 4, type: :int32, json_name: "batchSize"

  field :summary_row_setting, 3,
    type: Google.Ads.Searchads360.V0.Enums.SummaryRowSettingEnum.SummaryRowSetting,
    json_name: "summaryRowSetting",
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Services.SearchSearchAds360StreamResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Searchads360.V0.Services.SearchAds360Row
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"

  field :summary_row, 3,
    type: Google.Ads.Searchads360.V0.Services.SearchAds360Row,
    json_name: "summaryRow"

  field :custom_column_headers, 5,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Services.CustomColumnHeader,
    json_name: "customColumnHeaders"

  field :request_id, 4, type: :string, json_name: "requestId"
end

defmodule Google.Ads.Searchads360.V0.Services.SearchAds360Row do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ad_group, 3, type: Google.Ads.Searchads360.V0.Resources.AdGroup, json_name: "adGroup"

  field :ad_group_bid_modifier, 24,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupBidModifier,
    json_name: "adGroupBidModifier"

  field :ad_group_criterion, 17,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupCriterion,
    json_name: "adGroupCriterion"

  field :bidding_strategy, 18,
    type: Google.Ads.Searchads360.V0.Resources.BiddingStrategy,
    json_name: "biddingStrategy"

  field :campaign_budget, 19,
    type: Google.Ads.Searchads360.V0.Resources.CampaignBudget,
    json_name: "campaignBudget"

  field :campaign, 2, type: Google.Ads.Searchads360.V0.Resources.Campaign

  field :campaign_criterion, 20,
    type: Google.Ads.Searchads360.V0.Resources.CampaignCriterion,
    json_name: "campaignCriterion"

  field :conversion_action, 103,
    type: Google.Ads.Searchads360.V0.Resources.ConversionAction,
    json_name: "conversionAction"

  field :customer, 1, type: Google.Ads.Searchads360.V0.Resources.Customer

  field :customer_manager_link, 61,
    type: Google.Ads.Searchads360.V0.Resources.CustomerManagerLink,
    json_name: "customerManagerLink"

  field :customer_client, 70,
    type: Google.Ads.Searchads360.V0.Resources.CustomerClient,
    json_name: "customerClient"

  field :keyword_view, 21,
    type: Google.Ads.Searchads360.V0.Resources.KeywordView,
    json_name: "keywordView"

  field :product_group_view, 54,
    type: Google.Ads.Searchads360.V0.Resources.ProductGroupView,
    json_name: "productGroupView"

  field :metrics, 4, type: Google.Ads.Searchads360.V0.Common.Metrics
  field :segments, 102, type: Google.Ads.Searchads360.V0.Common.Segments

  field :custom_columns, 156,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.Value,
    json_name: "customColumns"
end

defmodule Google.Ads.Searchads360.V0.Services.CustomColumnHeader do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :int64
  field :name, 2, type: :string
  field :references_metrics, 3, type: :bool, json_name: "referencesMetrics"
end

defmodule Google.Ads.Searchads360.V0.Services.SearchAds360Service.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.searchads360.v0.services.SearchAds360Service",
    protoc_gen_elixir_version: "0.11.0"

  rpc :Search,
      Google.Ads.Searchads360.V0.Services.SearchSearchAds360Request,
      Google.Ads.Searchads360.V0.Services.SearchSearchAds360Response

  rpc :SearchStream,
      Google.Ads.Searchads360.V0.Services.SearchSearchAds360StreamRequest,
      stream(Google.Ads.Searchads360.V0.Services.SearchSearchAds360StreamResponse)
end

defmodule Google.Ads.Searchads360.V0.Services.SearchAds360Service.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Searchads360.V0.Services.SearchAds360Service.Service
end