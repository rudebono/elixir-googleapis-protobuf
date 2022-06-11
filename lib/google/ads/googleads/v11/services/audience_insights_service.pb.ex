defmodule Google.Ads.Googleads.V11.Services.GenerateInsightsFinderReportRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :baseline_audience, 2,
    type: Google.Ads.Googleads.V11.Services.BasicInsightsAudience,
    json_name: "baselineAudience",
    deprecated: false

  field :specific_audience, 3,
    type: Google.Ads.Googleads.V11.Services.BasicInsightsAudience,
    json_name: "specificAudience",
    deprecated: false

  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"
end
defmodule Google.Ads.Googleads.V11.Services.GenerateInsightsFinderReportResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :saved_report_url, 1, type: :string, json_name: "savedReportUrl"
end
defmodule Google.Ads.Googleads.V11.Services.ListAudienceInsightsAttributesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :dimensions, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true,
    deprecated: false

  field :query_text, 3, type: :string, json_name: "queryText", deprecated: false
  field :customer_insights_group, 4, type: :string, json_name: "customerInsightsGroup"
end
defmodule Google.Ads.Googleads.V11.Services.ListAudienceInsightsAttributesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :attributes, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.AudienceInsightsAttributeMetadata
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsAttribute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :attribute, 0

  field :age_range, 1,
    type: Google.Ads.Googleads.V11.Common.AgeRangeInfo,
    json_name: "ageRange",
    oneof: 0

  field :gender, 2, type: Google.Ads.Googleads.V11.Common.GenderInfo, oneof: 0
  field :location, 3, type: Google.Ads.Googleads.V11.Common.LocationInfo, oneof: 0

  field :user_interest, 4,
    type: Google.Ads.Googleads.V11.Common.UserInterestInfo,
    json_name: "userInterest",
    oneof: 0

  field :entity, 5, type: Google.Ads.Googleads.V11.Services.AudienceInsightsEntity, oneof: 0
  field :category, 6, type: Google.Ads.Googleads.V11.Services.AudienceInsightsCategory, oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsTopic do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :topic, 0

  field :entity, 1, type: Google.Ads.Googleads.V11.Services.AudienceInsightsEntity, oneof: 0
  field :category, 2, type: Google.Ads.Googleads.V11.Services.AudienceInsightsCategory, oneof: 0
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsEntity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :knowledge_graph_machine_id, 1,
    type: :string,
    json_name: "knowledgeGraphMachineId",
    deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsCategory do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :category_id, 1, type: :string, json_name: "categoryId", deprecated: false
end
defmodule Google.Ads.Googleads.V11.Services.BasicInsightsAudience do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :country_location, 1,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.LocationInfo,
    json_name: "countryLocation",
    deprecated: false

  field :sub_country_locations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.LocationInfo,
    json_name: "subCountryLocations"

  field :gender, 3, type: Google.Ads.Googleads.V11.Common.GenderInfo

  field :age_ranges, 4,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.AgeRangeInfo,
    json_name: "ageRanges"

  field :user_interests, 5,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.UserInterestInfo,
    json_name: "userInterests"

  field :topics, 6, repeated: true, type: Google.Ads.Googleads.V11.Services.AudienceInsightsTopic
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsAttributeMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :dimension, 1,
    type: Google.Ads.Googleads.V11.Enums.AudienceInsightsDimensionEnum.AudienceInsightsDimension,
    enum: true

  field :attribute, 2, type: Google.Ads.Googleads.V11.Services.AudienceInsightsAttribute
  field :display_name, 3, type: :string, json_name: "displayName"
  field :score, 4, type: :double
  field :display_info, 5, type: :string, json_name: "displayInfo"
end
defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.AudienceInsightsService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GenerateInsightsFinderReport,
      Google.Ads.Googleads.V11.Services.GenerateInsightsFinderReportRequest,
      Google.Ads.Googleads.V11.Services.GenerateInsightsFinderReportResponse

  rpc :ListAudienceInsightsAttributes,
      Google.Ads.Googleads.V11.Services.ListAudienceInsightsAttributesRequest,
      Google.Ads.Googleads.V11.Services.ListAudienceInsightsAttributesResponse
end

defmodule Google.Ads.Googleads.V11.Services.AudienceInsightsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.AudienceInsightsService.Service
end
