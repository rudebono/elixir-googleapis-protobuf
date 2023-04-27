defmodule Google.Ads.Searchads360.V0.Common.KeywordInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 3, proto3_optional: true, type: :string

  field :match_type, 2,
    type: Google.Ads.Searchads360.V0.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    json_name: "matchType",
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Common.LocationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :geo_target_constant, 2,
    proto3_optional: true,
    type: :string,
    json_name: "geoTargetConstant"
end

defmodule Google.Ads.Searchads360.V0.Common.DeviceInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Ads.Searchads360.V0.Enums.DeviceEnum.Device, enum: true
end

defmodule Google.Ads.Searchads360.V0.Common.ListingGroupInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1,
    type: Google.Ads.Searchads360.V0.Enums.ListingGroupTypeEnum.ListingGroupType,
    enum: true
end

defmodule Google.Ads.Searchads360.V0.Common.AgeRangeInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Ads.Searchads360.V0.Enums.AgeRangeTypeEnum.AgeRangeType, enum: true
end

defmodule Google.Ads.Searchads360.V0.Common.GenderInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Ads.Searchads360.V0.Enums.GenderTypeEnum.GenderType, enum: true
end

defmodule Google.Ads.Searchads360.V0.Common.UserListInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_list, 2, proto3_optional: true, type: :string, json_name: "userList"
end

defmodule Google.Ads.Searchads360.V0.Common.LanguageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :language_constant, 2, proto3_optional: true, type: :string, json_name: "languageConstant"
end

defmodule Google.Ads.Searchads360.V0.Common.WebpageInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :criterion_name, 3, proto3_optional: true, type: :string, json_name: "criterionName"

  field :conditions, 2,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Common.WebpageConditionInfo

  field :coverage_percentage, 4, type: :double, json_name: "coveragePercentage"
end

defmodule Google.Ads.Searchads360.V0.Common.WebpageConditionInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :operand, 1,
    type: Google.Ads.Searchads360.V0.Enums.WebpageConditionOperandEnum.WebpageConditionOperand,
    enum: true

  field :operator, 2,
    type: Google.Ads.Searchads360.V0.Enums.WebpageConditionOperatorEnum.WebpageConditionOperator,
    enum: true

  field :argument, 4, proto3_optional: true, type: :string
end

defmodule Google.Ads.Searchads360.V0.Common.LocationGroupInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :geo_target_constants, 6, repeated: true, type: :string, json_name: "geoTargetConstants"
  field :radius, 7, proto3_optional: true, type: :int64

  field :radius_units, 4,
    type: Google.Ads.Searchads360.V0.Enums.LocationGroupRadiusUnitsEnum.LocationGroupRadiusUnits,
    json_name: "radiusUnits",
    enum: true

  field :feed_item_sets, 8, repeated: true, type: :string, json_name: "feedItemSets"
end