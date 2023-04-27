defmodule Google.Ads.Searchads360.V0.Resources.ConversionAction.AttributionModelSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :attribution_model, 1,
    type: Google.Ads.Searchads360.V0.Enums.AttributionModelEnum.AttributionModel,
    json_name: "attributionModel",
    enum: true

  field :data_driven_model_status, 2,
    type: Google.Ads.Searchads360.V0.Enums.DataDrivenModelStatusEnum.DataDrivenModelStatus,
    json_name: "dataDrivenModelStatus",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Resources.ConversionAction.ValueSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :default_value, 4, proto3_optional: true, type: :double, json_name: "defaultValue"

  field :default_currency_code, 5,
    proto3_optional: true,
    type: :string,
    json_name: "defaultCurrencyCode"

  field :always_use_default_value, 6,
    proto3_optional: true,
    type: :bool,
    json_name: "alwaysUseDefaultValue"
end

defmodule Google.Ads.Searchads360.V0.Resources.ConversionAction.FloodlightSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :activity_group_tag, 1, type: :string, json_name: "activityGroupTag", deprecated: false
  field :activity_tag, 2, type: :string, json_name: "activityTag", deprecated: false
  field :activity_id, 3, type: :int64, json_name: "activityId", deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Resources.ConversionAction do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 21, proto3_optional: true, type: :int64, deprecated: false
  field :name, 22, proto3_optional: true, type: :string
  field :creation_time, 33, type: :string, json_name: "creationTime", deprecated: false

  field :status, 4,
    type: Google.Ads.Searchads360.V0.Enums.ConversionActionStatusEnum.ConversionActionStatus,
    enum: true

  field :type, 5,
    type: Google.Ads.Searchads360.V0.Enums.ConversionActionTypeEnum.ConversionActionType,
    enum: true,
    deprecated: false

  field :primary_for_goal, 31, proto3_optional: true, type: :bool, json_name: "primaryForGoal"

  field :category, 6,
    type: Google.Ads.Searchads360.V0.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    enum: true

  field :owner_customer, 23,
    proto3_optional: true,
    type: :string,
    json_name: "ownerCustomer",
    deprecated: false

  field :include_in_client_account_conversions_metric, 24,
    proto3_optional: true,
    type: :bool,
    json_name: "includeInClientAccountConversionsMetric"

  field :include_in_conversions_metric, 32,
    proto3_optional: true,
    type: :bool,
    json_name: "includeInConversionsMetric",
    deprecated: false

  field :click_through_lookback_window_days, 25,
    proto3_optional: true,
    type: :int64,
    json_name: "clickThroughLookbackWindowDays"

  field :value_settings, 11,
    type: Google.Ads.Searchads360.V0.Resources.ConversionAction.ValueSettings,
    json_name: "valueSettings"

  field :attribution_model_settings, 13,
    type: Google.Ads.Searchads360.V0.Resources.ConversionAction.AttributionModelSettings,
    json_name: "attributionModelSettings"

  field :app_id, 28, proto3_optional: true, type: :string, json_name: "appId"

  field :floodlight_settings, 29,
    type: Google.Ads.Searchads360.V0.Resources.ConversionAction.FloodlightSettings,
    json_name: "floodlightSettings",
    deprecated: false
end