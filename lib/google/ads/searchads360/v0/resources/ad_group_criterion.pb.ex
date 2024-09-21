defmodule Google.Ads.Searchads360.V0.Resources.AdGroupCriterion.QualityInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :quality_score, 5,
    proto3_optional: true,
    type: :int32,
    json_name: "qualityScore",
    deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Resources.AdGroupCriterion.PositionEstimates do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :top_of_page_cpc_micros, 8,
    proto3_optional: true,
    type: :int64,
    json_name: "topOfPageCpcMicros",
    deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Resources.AdGroupCriterion do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :criterion, 0

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :criterion_id, 56,
    proto3_optional: true,
    type: :int64,
    json_name: "criterionId",
    deprecated: false

  field :creation_time, 81, type: :string, json_name: "creationTime", deprecated: false

  field :status, 3,
    type: Google.Ads.Searchads360.V0.Enums.AdGroupCriterionStatusEnum.AdGroupCriterionStatus,
    enum: true

  field :quality_info, 4,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupCriterion.QualityInfo,
    json_name: "qualityInfo",
    deprecated: false

  field :ad_group, 57,
    proto3_optional: true,
    type: :string,
    json_name: "adGroup",
    deprecated: false

  field :type, 25,
    type: Google.Ads.Searchads360.V0.Enums.CriterionTypeEnum.CriterionType,
    enum: true,
    deprecated: false

  field :negative, 58, proto3_optional: true, type: :bool, deprecated: false
  field :labels, 60, repeated: true, type: :string, deprecated: false
  field :bid_modifier, 61, proto3_optional: true, type: :double, json_name: "bidModifier"
  field :cpc_bid_micros, 62, proto3_optional: true, type: :int64, json_name: "cpcBidMicros"

  field :effective_cpc_bid_micros, 66,
    proto3_optional: true,
    type: :int64,
    json_name: "effectiveCpcBidMicros",
    deprecated: false

  field :position_estimates, 10,
    type: Google.Ads.Searchads360.V0.Resources.AdGroupCriterion.PositionEstimates,
    json_name: "positionEstimates",
    deprecated: false

  field :final_urls, 70, repeated: true, type: :string, json_name: "finalUrls"

  field :engine_status, 80,
    proto3_optional: true,
    type:
      Google.Ads.Searchads360.V0.Enums.AdGroupCriterionEngineStatusEnum.AdGroupCriterionEngineStatus,
    json_name: "engineStatus",
    enum: true,
    deprecated: false

  field :final_url_suffix, 72, proto3_optional: true, type: :string, json_name: "finalUrlSuffix"

  field :tracking_url_template, 73,
    proto3_optional: true,
    type: :string,
    json_name: "trackingUrlTemplate"

  field :engine_id, 76, type: :string, json_name: "engineId", deprecated: false
  field :last_modified_time, 78, type: :string, json_name: "lastModifiedTime", deprecated: false

  field :keyword, 27,
    type: Google.Ads.Searchads360.V0.Common.KeywordInfo,
    oneof: 0,
    deprecated: false

  field :listing_group, 32,
    type: Google.Ads.Searchads360.V0.Common.ListingGroupInfo,
    json_name: "listingGroup",
    oneof: 0,
    deprecated: false

  field :age_range, 36,
    type: Google.Ads.Searchads360.V0.Common.AgeRangeInfo,
    json_name: "ageRange",
    oneof: 0,
    deprecated: false

  field :gender, 37,
    type: Google.Ads.Searchads360.V0.Common.GenderInfo,
    oneof: 0,
    deprecated: false

  field :user_list, 42,
    type: Google.Ads.Searchads360.V0.Common.UserListInfo,
    json_name: "userList",
    oneof: 0,
    deprecated: false

  field :webpage, 46,
    type: Google.Ads.Searchads360.V0.Common.WebpageInfo,
    oneof: 0,
    deprecated: false

  field :location, 82,
    type: Google.Ads.Searchads360.V0.Common.LocationInfo,
    oneof: 0,
    deprecated: false
end