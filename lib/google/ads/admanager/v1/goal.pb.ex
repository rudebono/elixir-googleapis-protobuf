defmodule Google.Ads.Admanager.V1.GoalTypeEnum.GoalType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :GOAL_TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :LIFETIME, 2
  field :DAILY, 3
end

defmodule Google.Ads.Admanager.V1.UnitTypeEnum.UnitType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :UNIT_TYPE_UNSPECIFIED, 0
  field :IMPRESSIONS, 1
  field :CLICKS, 2
  field :CLICK_THROUGH_CPA_CONVERSIONS, 3
  field :VIEW_THROUGH_CPA_CONVERSIONS, 4
  field :TOTAL_CPA_CONVERSIONS, 5
  field :VIEWABLE_IMPRESSIONS, 6
  field :IN_TARGET_IMPRESSIONS, 7
end

defmodule Google.Ads.Admanager.V1.Goal do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :goal_type, 1,
    type: Google.Ads.Admanager.V1.GoalTypeEnum.GoalType,
    json_name: "goalType",
    enum: true

  field :unit_type, 2,
    type: Google.Ads.Admanager.V1.UnitTypeEnum.UnitType,
    json_name: "unitType",
    enum: true

  field :units, 3, type: :int64
end

defmodule Google.Ads.Admanager.V1.GoalTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.UnitTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end