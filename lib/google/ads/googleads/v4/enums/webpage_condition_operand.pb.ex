defmodule Google.Ads.Googleads.V4.Enums.WebpageConditionOperandEnum.WebpageConditionOperand do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :URL
          | :CATEGORY
          | :PAGE_TITLE
          | :PAGE_CONTENT
          | :CUSTOM_LABEL

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :URL, 2

  field :CATEGORY, 3

  field :PAGE_TITLE, 4

  field :PAGE_CONTENT, 5

  field :CUSTOM_LABEL, 6
end

defmodule Google.Ads.Googleads.V4.Enums.WebpageConditionOperandEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
