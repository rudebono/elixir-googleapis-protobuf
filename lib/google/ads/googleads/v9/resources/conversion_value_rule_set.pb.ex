defmodule Google.Ads.Googleads.V9.Resources.ConversionValueRuleSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          conversion_value_rules: [String.t()],
          dimensions: [
            Google.Ads.Googleads.V9.Enums.ValueRuleSetDimensionEnum.ValueRuleSetDimension.t()
          ],
          owner_customer: String.t(),
          attachment_type:
            Google.Ads.Googleads.V9.Enums.ValueRuleSetAttachmentTypeEnum.ValueRuleSetAttachmentType.t(),
          campaign: String.t(),
          status:
            Google.Ads.Googleads.V9.Enums.ConversionValueRuleSetStatusEnum.ConversionValueRuleSetStatus.t()
        }

  defstruct [
    :resource_name,
    :id,
    :conversion_value_rules,
    :dimensions,
    :owner_customer,
    :attachment_type,
    :campaign,
    :status
  ]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :id, 2, type: :int64

  field :conversion_value_rules, 3,
    repeated: true,
    type: :string,
    json_name: "conversionValueRules"

  field :dimensions, 4,
    repeated: true,
    type: Google.Ads.Googleads.V9.Enums.ValueRuleSetDimensionEnum.ValueRuleSetDimension,
    enum: true

  field :owner_customer, 5, type: :string, json_name: "ownerCustomer"

  field :attachment_type, 6,
    type: Google.Ads.Googleads.V9.Enums.ValueRuleSetAttachmentTypeEnum.ValueRuleSetAttachmentType,
    enum: true,
    json_name: "attachmentType"

  field :campaign, 7, type: :string

  field :status, 8,
    type:
      Google.Ads.Googleads.V9.Enums.ConversionValueRuleSetStatusEnum.ConversionValueRuleSetStatus,
    enum: true

  def transform_module(), do: nil
end
