defmodule Google.Ads.Googleads.V9.Resources.CustomConversionGoal do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: integer,
          name: String.t(),
          conversion_actions: [String.t()],
          status:
            Google.Ads.Googleads.V9.Enums.CustomConversionGoalStatusEnum.CustomConversionGoalStatus.t()
        }

  defstruct [:resource_name, :id, :name, :conversion_actions, :status]

  field :resource_name, 1, type: :string, json_name: "resourceName"
  field :id, 2, type: :int64
  field :name, 3, type: :string
  field :conversion_actions, 4, repeated: true, type: :string, json_name: "conversionActions"

  field :status, 5,
    type: Google.Ads.Googleads.V9.Enums.CustomConversionGoalStatusEnum.CustomConversionGoalStatus,
    enum: true

  def transform_module(), do: nil
end
