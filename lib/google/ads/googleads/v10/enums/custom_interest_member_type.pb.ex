defmodule Google.Ads.Googleads.V10.Enums.CustomInterestMemberTypeEnum.CustomInterestMemberType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :KEYWORD | :URL

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :KEYWORD, 2
  field :URL, 3
end
defmodule Google.Ads.Googleads.V10.Enums.CustomInterestMemberTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
