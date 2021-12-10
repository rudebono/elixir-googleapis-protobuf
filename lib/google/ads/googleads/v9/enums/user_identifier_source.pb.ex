defmodule Google.Ads.Googleads.V9.Enums.UserIdentifierSourceEnum.UserIdentifierSource do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :FIRST_PARTY | :THIRD_PARTY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :FIRST_PARTY, 2
  field :THIRD_PARTY, 3
end
defmodule Google.Ads.Googleads.V9.Enums.UserIdentifierSourceEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
