defmodule Google.Ads.Googleads.V8.Enums.CampaignExperimentTypeEnum.CampaignExperimentType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :BASE | :DRAFT | :EXPERIMENT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BASE, 2
  field :DRAFT, 3
  field :EXPERIMENT, 4
end

defmodule Google.Ads.Googleads.V8.Enums.CampaignExperimentTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
