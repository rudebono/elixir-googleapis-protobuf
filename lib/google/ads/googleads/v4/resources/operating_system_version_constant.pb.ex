defmodule Google.Ads.Googleads.V4.Resources.OperatingSystemVersionConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          os_major_version: Google.Protobuf.Int32Value.t() | nil,
          os_minor_version: Google.Protobuf.Int32Value.t() | nil,
          operator_type:
            Google.Ads.Googleads.V4.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType.t()
        }

  defstruct [:resource_name, :id, :name, :os_major_version, :os_minor_version, :operator_type]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :os_major_version, 4, type: Google.Protobuf.Int32Value
  field :os_minor_version, 5, type: Google.Protobuf.Int32Value

  field :operator_type, 6,
    type:
      Google.Ads.Googleads.V4.Enums.OperatingSystemVersionOperatorTypeEnum.OperatingSystemVersionOperatorType,
    enum: true
end
