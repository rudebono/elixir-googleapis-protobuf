defmodule Google.Ads.Googleads.V9.Resources.CustomizerAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          type:
            Google.Ads.Googleads.V9.Enums.CustomizerAttributeTypeEnum.CustomizerAttributeType.t(),
          status:
            Google.Ads.Googleads.V9.Enums.CustomizerAttributeStatusEnum.CustomizerAttributeStatus.t()
        }

  defstruct [:resource_name, :id, :name, :type, :status]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :id, 2, type: :int64
  field :name, 3, type: :string

  field :type, 4,
    type: Google.Ads.Googleads.V9.Enums.CustomizerAttributeTypeEnum.CustomizerAttributeType,
    enum: true

  field :status, 5,
    type: Google.Ads.Googleads.V9.Enums.CustomizerAttributeStatusEnum.CustomizerAttributeStatus,
    enum: true

  def transform_module(), do: nil
end
