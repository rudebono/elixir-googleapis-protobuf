defmodule Google.Ads.Googleads.V10.Resources.CustomizerAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          type:
            Google.Ads.Googleads.V10.Enums.CustomizerAttributeTypeEnum.CustomizerAttributeType.t(),
          status:
            Google.Ads.Googleads.V10.Enums.CustomizerAttributeStatusEnum.CustomizerAttributeStatus.t()
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            type: :UNSPECIFIED,
            status: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false

  field :type, 4,
    type: Google.Ads.Googleads.V10.Enums.CustomizerAttributeTypeEnum.CustomizerAttributeType,
    enum: true,
    deprecated: false

  field :status, 5,
    type: Google.Ads.Googleads.V10.Enums.CustomizerAttributeStatusEnum.CustomizerAttributeStatus,
    enum: true,
    deprecated: false
end
