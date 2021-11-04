defmodule Google.Ads.Googleads.V8.Enums.BidModifierSourceEnum.BidModifierSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CAMPAIGN | :AD_GROUP

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CAMPAIGN, 2
  field :AD_GROUP, 3
end

defmodule Google.Ads.Googleads.V8.Enums.BidModifierSourceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
