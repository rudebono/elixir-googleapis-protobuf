defmodule Google.Ads.Googleads.V9.Common.CustomizerValue do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type:
            Google.Ads.Googleads.V9.Enums.CustomizerAttributeTypeEnum.CustomizerAttributeType.t(),
          string_value: String.t()
        }

  defstruct type: :UNSPECIFIED,
            string_value: ""

  field :type, 1,
    type: Google.Ads.Googleads.V9.Enums.CustomizerAttributeTypeEnum.CustomizerAttributeType,
    enum: true,
    deprecated: false

  field :string_value, 2, type: :string, json_name: "stringValue", deprecated: false
end
