defmodule Google.Ads.Googleads.V10.Resources.FeedPlaceholderView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          placeholder_type: Google.Ads.Googleads.V10.Enums.PlaceholderTypeEnum.PlaceholderType.t()
        }

  defstruct resource_name: "",
            placeholder_type: :UNSPECIFIED

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :placeholder_type, 2,
    type: Google.Ads.Googleads.V10.Enums.PlaceholderTypeEnum.PlaceholderType,
    json_name: "placeholderType",
    enum: true,
    deprecated: false
end
