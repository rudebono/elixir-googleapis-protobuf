defmodule Google.Ads.Googleads.V17.Common.AudienceDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :dimension, 0

  field :age, 1, type: Google.Ads.Googleads.V17.Common.AgeDimension, oneof: 0
  field :gender, 2, type: Google.Ads.Googleads.V17.Common.GenderDimension, oneof: 0

  field :household_income, 3,
    type: Google.Ads.Googleads.V17.Common.HouseholdIncomeDimension,
    json_name: "householdIncome",
    oneof: 0

  field :parental_status, 4,
    type: Google.Ads.Googleads.V17.Common.ParentalStatusDimension,
    json_name: "parentalStatus",
    oneof: 0

  field :audience_segments, 5,
    type: Google.Ads.Googleads.V17.Common.AudienceSegmentDimension,
    json_name: "audienceSegments",
    oneof: 0
end

defmodule Google.Ads.Googleads.V17.Common.AudienceExclusionDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :exclusions, 1, repeated: true, type: Google.Ads.Googleads.V17.Common.ExclusionSegment
end

defmodule Google.Ads.Googleads.V17.Common.ExclusionSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :segment, 0

  field :user_list, 1,
    type: Google.Ads.Googleads.V17.Common.UserListSegment,
    json_name: "userList",
    oneof: 0
end

defmodule Google.Ads.Googleads.V17.Common.AgeDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :age_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.AgeSegment,
    json_name: "ageRanges"

  field :include_undetermined, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeUndetermined"
end

defmodule Google.Ads.Googleads.V17.Common.AgeSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :min_age, 1, proto3_optional: true, type: :int32, json_name: "minAge"
  field :max_age, 2, proto3_optional: true, type: :int32, json_name: "maxAge"
end

defmodule Google.Ads.Googleads.V17.Common.GenderDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :genders, 1,
    repeated: true,
    type: Google.Ads.Googleads.V17.Enums.GenderTypeEnum.GenderType,
    enum: true

  field :include_undetermined, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeUndetermined"
end

defmodule Google.Ads.Googleads.V17.Common.HouseholdIncomeDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :income_ranges, 1,
    repeated: true,
    type: Google.Ads.Googleads.V17.Enums.IncomeRangeTypeEnum.IncomeRangeType,
    json_name: "incomeRanges",
    enum: true

  field :include_undetermined, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeUndetermined"
end

defmodule Google.Ads.Googleads.V17.Common.ParentalStatusDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parental_statuses, 1,
    repeated: true,
    type: Google.Ads.Googleads.V17.Enums.ParentalStatusTypeEnum.ParentalStatusType,
    json_name: "parentalStatuses",
    enum: true

  field :include_undetermined, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeUndetermined"
end

defmodule Google.Ads.Googleads.V17.Common.AudienceSegmentDimension do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :segments, 1, repeated: true, type: Google.Ads.Googleads.V17.Common.AudienceSegment
end

defmodule Google.Ads.Googleads.V17.Common.AudienceSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :segment, 0

  field :user_list, 1,
    type: Google.Ads.Googleads.V17.Common.UserListSegment,
    json_name: "userList",
    oneof: 0

  field :user_interest, 2,
    type: Google.Ads.Googleads.V17.Common.UserInterestSegment,
    json_name: "userInterest",
    oneof: 0

  field :life_event, 3,
    type: Google.Ads.Googleads.V17.Common.LifeEventSegment,
    json_name: "lifeEvent",
    oneof: 0

  field :detailed_demographic, 4,
    type: Google.Ads.Googleads.V17.Common.DetailedDemographicSegment,
    json_name: "detailedDemographic",
    oneof: 0

  field :custom_audience, 5,
    type: Google.Ads.Googleads.V17.Common.CustomAudienceSegment,
    json_name: "customAudience",
    oneof: 0
end

defmodule Google.Ads.Googleads.V17.Common.UserListSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_list, 1, proto3_optional: true, type: :string, json_name: "userList"
end

defmodule Google.Ads.Googleads.V17.Common.UserInterestSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :user_interest_category, 1,
    proto3_optional: true,
    type: :string,
    json_name: "userInterestCategory"
end

defmodule Google.Ads.Googleads.V17.Common.LifeEventSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :life_event, 1,
    proto3_optional: true,
    type: :string,
    json_name: "lifeEvent",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Common.DetailedDemographicSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :detailed_demographic, 1,
    proto3_optional: true,
    type: :string,
    json_name: "detailedDemographic",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Common.CustomAudienceSegment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :custom_audience, 1, proto3_optional: true, type: :string, json_name: "customAudience"
end