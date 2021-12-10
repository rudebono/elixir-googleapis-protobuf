defmodule Google.Ads.Googleads.V9.Resources.ConversionCustomVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          tag: String.t(),
          status:
            Google.Ads.Googleads.V9.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus.t(),
          owner_customer: String.t()
        }

  defstruct resource_name: "",
            id: 0,
            name: "",
            tag: "",
            status: :UNSPECIFIED,
            owner_customer: ""

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 2, type: :int64, deprecated: false
  field :name, 3, type: :string, deprecated: false
  field :tag, 4, type: :string, deprecated: false

  field :status, 5,
    type:
      Google.Ads.Googleads.V9.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus,
    enum: true

  field :owner_customer, 6, type: :string, json_name: "ownerCustomer", deprecated: false
end
