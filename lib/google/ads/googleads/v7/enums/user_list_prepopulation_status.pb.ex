defmodule Google.Ads.Googleads.V7.Enums.UserListPrepopulationStatusEnum.UserListPrepopulationStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :REQUESTED | :FINISHED | :FAILED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :REQUESTED, 2
  field :FINISHED, 3
  field :FAILED, 4
end
defmodule Google.Ads.Googleads.V7.Enums.UserListPrepopulationStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
