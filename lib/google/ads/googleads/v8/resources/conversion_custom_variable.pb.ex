defmodule Google.Ads.Googleads.V8.Resources.ConversionCustomVariable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          tag: String.t(),
          status:
            Google.Ads.Googleads.V8.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus.t(),
          owner_customer: String.t()
        }

  defstruct [:resource_name, :id, :name, :tag, :status, :owner_customer]

  field :resource_name, 1, type: :string
  field :id, 2, type: :int64
  field :name, 3, type: :string
  field :tag, 4, type: :string

  field :status, 5,
    type:
      Google.Ads.Googleads.V8.Enums.ConversionCustomVariableStatusEnum.ConversionCustomVariableStatus,
    enum: true

  field :owner_customer, 6, type: :string
end
