defmodule Google.Ads.Googleads.V7.Enums.GenderTypeEnum.GenderType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :MALE | :FEMALE | :UNDETERMINED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :MALE, 10
  field :FEMALE, 11
  field :UNDETERMINED, 20
end
defmodule Google.Ads.Googleads.V7.Enums.GenderTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
