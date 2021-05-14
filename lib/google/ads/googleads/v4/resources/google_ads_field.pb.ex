defmodule Google.Ads.Googleads.V4.Resources.GoogleAdsField do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          name: Google.Protobuf.StringValue.t() | nil,
          category:
            Google.Ads.Googleads.V4.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory.t(),
          selectable: Google.Protobuf.BoolValue.t() | nil,
          filterable: Google.Protobuf.BoolValue.t() | nil,
          sortable: Google.Protobuf.BoolValue.t() | nil,
          selectable_with: [Google.Protobuf.StringValue.t()],
          attribute_resources: [Google.Protobuf.StringValue.t()],
          metrics: [Google.Protobuf.StringValue.t()],
          segments: [Google.Protobuf.StringValue.t()],
          enum_values: [Google.Protobuf.StringValue.t()],
          data_type:
            Google.Ads.Googleads.V4.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType.t(),
          type_url: Google.Protobuf.StringValue.t() | nil,
          is_repeated: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :resource_name,
    :name,
    :category,
    :selectable,
    :filterable,
    :sortable,
    :selectable_with,
    :attribute_resources,
    :metrics,
    :segments,
    :enum_values,
    :data_type,
    :type_url,
    :is_repeated
  ]

  field :resource_name, 1, type: :string
  field :name, 2, type: Google.Protobuf.StringValue

  field :category, 3,
    type: Google.Ads.Googleads.V4.Enums.GoogleAdsFieldCategoryEnum.GoogleAdsFieldCategory,
    enum: true

  field :selectable, 4, type: Google.Protobuf.BoolValue
  field :filterable, 5, type: Google.Protobuf.BoolValue
  field :sortable, 6, type: Google.Protobuf.BoolValue
  field :selectable_with, 7, repeated: true, type: Google.Protobuf.StringValue
  field :attribute_resources, 8, repeated: true, type: Google.Protobuf.StringValue
  field :metrics, 9, repeated: true, type: Google.Protobuf.StringValue
  field :segments, 10, repeated: true, type: Google.Protobuf.StringValue
  field :enum_values, 11, repeated: true, type: Google.Protobuf.StringValue

  field :data_type, 12,
    type: Google.Ads.Googleads.V4.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType,
    enum: true

  field :type_url, 13, type: Google.Protobuf.StringValue
  field :is_repeated, 14, type: Google.Protobuf.BoolValue
end
