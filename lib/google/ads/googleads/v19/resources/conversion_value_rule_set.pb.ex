defmodule Google.Ads.Googleads.V19.Resources.ConversionValueRuleSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false

  field :conversion_value_rules, 3,
    repeated: true,
    type: :string,
    json_name: "conversionValueRules",
    deprecated: false

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V19.Enums.ValueRuleSetDimensionEnum.ValueRuleSetDimension,
    enum: true

  field :owner_customer, 5, type: :string, json_name: "ownerCustomer", deprecated: false

  field :attachment_type, 6,
    type:
      Google.Ads.Googleads.V19.Enums.ValueRuleSetAttachmentTypeEnum.ValueRuleSetAttachmentType,
    json_name: "attachmentType",
    enum: true,
    deprecated: false

  field :campaign, 7, type: :string, deprecated: false

  field :status, 8,
    type:
      Google.Ads.Googleads.V19.Enums.ConversionValueRuleSetStatusEnum.ConversionValueRuleSetStatus,
    enum: true,
    deprecated: false

  field :conversion_action_categories, 9,
    repeated: true,
    type: Google.Ads.Googleads.V19.Enums.ConversionActionCategoryEnum.ConversionActionCategory,
    json_name: "conversionActionCategories",
    enum: true,
    deprecated: false
end
