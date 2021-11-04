defmodule Google.Ads.Googleads.V9.Errors.CampaignCustomizerErrorEnum.CampaignCustomizerError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
end

defmodule Google.Ads.Googleads.V9.Errors.CampaignCustomizerErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
