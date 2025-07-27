defmodule Google.Ads.Searchads360.V0.Resources.ConversionCustomVariable.FloodlightConversionCustomVariableInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :floodlight_variable_type, 1,
    proto3_optional: true,
    type: Google.Ads.Searchads360.V0.Enums.FloodlightVariableTypeEnum.FloodlightVariableType,
    json_name: "floodlightVariableType",
    enum: true,
    deprecated: false

  field :floodlight_variable_data_type, 2,
    proto3_optional: true,
    type:
      Google.Ads.Searchads360.V0.Enums.FloodlightVariableDataTypeEnum.FloodlightVariableDataType,
    json_name: "floodlightVariableDataType",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Searchads360.V0.Resources.ConversionCustomVariable do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :tag, 4, type: :string, deprecated: false

  field :status, 5,
    type:
      Google.Ads.Searchads360.V0.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus,
    enum: true

  field :owner_customer, 6, type: :string, json_name: "ownerCustomer", deprecated: false

  field :family, 7,
    type:
      Google.Ads.Searchads360.V0.Enums.ConversionCustomVariableFamilyEnum.ConversionCustomVariableFamily,
    enum: true,
    deprecated: false

  field :cardinality, 8,
    type:
      Google.Ads.Searchads360.V0.Enums.ConversionCustomVariableCardinalityEnum.ConversionCustomVariableCardinality,
    enum: true,
    deprecated: false

  field :floodlight_conversion_custom_variable_info, 9,
    type:
      Google.Ads.Searchads360.V0.Resources.ConversionCustomVariable.FloodlightConversionCustomVariableInfo,
    json_name: "floodlightConversionCustomVariableInfo",
    deprecated: false

  field :custom_column_ids, 10,
    repeated: true,
    type: :int64,
    json_name: "customColumnIds",
    deprecated: false
end
