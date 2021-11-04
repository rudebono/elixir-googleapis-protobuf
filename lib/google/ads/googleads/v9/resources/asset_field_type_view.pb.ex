defmodule Google.Ads.Googleads.V9.Resources.AssetFieldTypeView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          field_type: Google.Ads.Googleads.V9.Enums.AssetFieldTypeEnum.AssetFieldType.t()
        }

  defstruct [:resource_name, :field_type]

  field :resource_name, 1, type: :string, json_name: "resourceName"

  field :field_type, 3,
    type: Google.Ads.Googleads.V9.Enums.AssetFieldTypeEnum.AssetFieldType,
    enum: true,
    json_name: "fieldType"

  def transform_module(), do: nil
end
