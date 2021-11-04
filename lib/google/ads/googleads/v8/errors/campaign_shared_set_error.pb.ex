defmodule Google.Ads.Googleads.V8.Errors.CampaignSharedSetErrorEnum.CampaignSharedSetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :SHARED_SET_ACCESS_DENIED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SHARED_SET_ACCESS_DENIED, 2
end

defmodule Google.Ads.Googleads.V8.Errors.CampaignSharedSetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
