defmodule Google.Ads.Googleads.V8.Enums.CustomAudienceMemberTypeEnum.CustomAudienceMemberType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :KEYWORD | :URL | :PLACE_CATEGORY | :APP

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :KEYWORD, 2
  field :URL, 3
  field :PLACE_CATEGORY, 4
  field :APP, 5
end

defmodule Google.Ads.Googleads.V8.Enums.CustomAudienceMemberTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
