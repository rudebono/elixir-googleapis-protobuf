defmodule Google.Ads.Googleads.V8.Resources.ConversionValueRuleSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          conversion_value_rules: [String.t()],
          dimensions: [
            Google.Ads.Googleads.V8.Enums.ValueRuleSetDimensionEnum.ValueRuleSetDimension.t()
          ],
          owner_customer: String.t(),
          attachment_type:
            Google.Ads.Googleads.V8.Enums.ValueRuleSetAttachmentTypeEnum.ValueRuleSetAttachmentType.t(),
          campaign: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.ConversionValueRuleSetStatusEnum.ConversionValueRuleSetStatus.t()
        }

  defstruct resource_name: "",
            id: 0,
            conversion_value_rules: [],
            dimensions: [],
            owner_customer: "",
            attachment_type: :UNSPECIFIED,
            campaign: "",
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false

  field :conversion_value_rules, 3,
    repeated: true,
    type: :string,
    json_name: "conversionValueRules",
    deprecated: false

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V8.Enums.ValueRuleSetDimensionEnum.ValueRuleSetDimension,
    enum: true

  field :owner_customer, 5, type: :string, json_name: "ownerCustomer", deprecated: false

  field :attachment_type, 6,
    type: Google.Ads.Googleads.V8.Enums.ValueRuleSetAttachmentTypeEnum.ValueRuleSetAttachmentType,
    json_name: "attachmentType",
    enum: true

  field :campaign, 7, type: :string, deprecated: false

  field :status, 8,
    type:
      Google.Ads.Googleads.V8.Enums.ConversionValueRuleSetStatusEnum.ConversionValueRuleSetStatus,
    enum: true,
    deprecated: false
end
