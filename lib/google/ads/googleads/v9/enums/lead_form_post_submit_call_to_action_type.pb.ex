defmodule Google.Ads.Googleads.V9.Enums.LeadFormPostSubmitCallToActionTypeEnum.LeadFormPostSubmitCallToActionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :VISIT_SITE | :DOWNLOAD | :LEARN_MORE | :SHOP_NOW

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :VISIT_SITE, 2
  field :DOWNLOAD, 3
  field :LEARN_MORE, 4
  field :SHOP_NOW, 5
end

defmodule Google.Ads.Googleads.V9.Enums.LeadFormPostSubmitCallToActionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
