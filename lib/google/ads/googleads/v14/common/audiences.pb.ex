defmodule Google.Ads.Googleads.V14.Common.AudienceDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :dimension, 0

  field :age, 1, type: Google.Ads.Googleads.V14.Common.AgeDimension, oneof: 0
  field :gender, 2, type: Google.Ads.Googleads.V14.Common.GenderDimension, oneof: 0

  field :household_income, 3,
    type: Google.Ads.Googleads.V14.Common.HouseholdIncomeDimension,
    json_name: "householdIncome",
    oneof: 0

  field :parental_status, 4,
    type: Google.Ads.Googleads.V14.Common.ParentalStatusDimension,
    json_name: "parentalStatus",
    oneof: 0

  field :audience_segments, 5,
    type: Google.Ads.Googleads.V14.Common.AudienceSegmentDimension,
    json_name: "audienceSegments",
    oneof: 0
end

defmodule Google.Ads.Googleads.V14.Common.AudienceExclusionDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :exclusions, 1, repeated: true, type: Google.Ads.Googleads.V14.Common.ExclusionSegment
end

defmodule Google.Ads.Googleads.V14.Common.ExclusionSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :segment, 0

  field :user_list, 1,
    type: Google.Ads.Googleads.V14.Common.UserListSegment,
    json_name: "userList",
    oneof: 0
end

defmodule Google.Ads.Googleads.V14.Common.AgeDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V14.Common.AgeSegment,
    json_name: "ageRanges"

  field :include_undetermined, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeUndetermined"
end

defmodule Google.Ads.Googleads.V14.Common.AgeSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :min_age, 1, proto3_optional: true, type: :int32, json_name: "minAge"
  field :max_age, 2, proto3_optional: true, type: :int32, json_name: "maxAge"
end

defmodule Google.Ads.Googleads.V14.Common.GenderDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :genders, 1,
    repeated: true,
    type: Google.Ads.Googleads.V14.Enums.GenderTypeEnum.GenderType,
    enum: true

  field :include_undetermined, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeUndetermined"
end

defmodule Google.Ads.Googleads.V14.Common.HouseholdIncomeDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :income_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V14.Enums.IncomeRangeTypeEnum.IncomeRangeType,
    json_name: "incomeRanges",
    enum: true

  field :include_undetermined, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeUndetermined"
end

defmodule Google.Ads.Googleads.V14.Common.ParentalStatusDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parental_statuses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V14.Enums.ParentalStatusTypeEnum.ParentalStatusType,
    json_name: "parentalStatuses",
    enum: true

  field :include_undetermined, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeUndetermined"
end

defmodule Google.Ads.Googleads.V14.Common.AudienceSegmentDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :segments, 1, repeated: true, type: Google.Ads.Googleads.V14.Common.AudienceSegment
end

defmodule Google.Ads.Googleads.V14.Common.AudienceSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :segment, 0

  field :user_list, 1,
    type: Google.Ads.Googleads.V14.Common.UserListSegment,
    json_name: "userList",
    oneof: 0

  field :user_interest, 2,
    type: Google.Ads.Googleads.V14.Common.UserInterestSegment,
    json_name: "userInterest",
    oneof: 0

  field :life_event, 3,
    type: Google.Ads.Googleads.V14.Common.LifeEventSegment,
    json_name: "lifeEvent",
    oneof: 0

  field :detailed_demographic, 4,
    type: Google.Ads.Googleads.V14.Common.DetailedDemographicSegment,
    json_name: "detailedDemographic",
    oneof: 0

  field :custom_audience, 5,
    type: Google.Ads.Googleads.V14.Common.CustomAudienceSegment,
    json_name: "customAudience",
    oneof: 0
end

defmodule Google.Ads.Googleads.V14.Common.UserListSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_list, 1, proto3_optional: true, type: :string, json_name: "userList"
end

defmodule Google.Ads.Googleads.V14.Common.UserInterestSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_interest_category, 1,
    proto3_optional: true,
    type: :string,
    json_name: "userInterestCategory"
end

defmodule Google.Ads.Googleads.V14.Common.LifeEventSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :life_event, 1, proto3_optional: true, type: :string, json_name: "lifeEvent"
end

defmodule Google.Ads.Googleads.V14.Common.DetailedDemographicSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :detailed_demographic, 1,
    proto3_optional: true,
    type: :string,
    json_name: "detailedDemographic"
end

defmodule Google.Ads.Googleads.V14.Common.CustomAudienceSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :custom_audience, 1, proto3_optional: true, type: :string, json_name: "customAudience"
end