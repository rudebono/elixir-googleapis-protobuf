defmodule Google.Ads.Googleads.V10.Resources.AssetFieldTypeView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          field_type: Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType.t()
        }

  defstruct resource_name: "",
            field_type: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :field_type, 3,
    type: Google.Ads.Googleads.V10.Enums.AssetFieldTypeEnum.AssetFieldType,
    json_name: "fieldType",
    enum: true,
    deprecated: false
end
