defmodule Google.Ads.Googleads.V4.Resources.FeedPlaceholderView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          placeholder_type: Google.Ads.Googleads.V4.Enums.PlaceholderTypeEnum.PlaceholderType.t()
        }

  defstruct [:resource_name, :placeholder_type]

  field :resource_name, 1, type: :string

  field :placeholder_type, 2,
    type: Google.Ads.Googleads.V4.Enums.PlaceholderTypeEnum.PlaceholderType,
    enum: true
end
