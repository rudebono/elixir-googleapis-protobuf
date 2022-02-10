defmodule Google.Ads.Googleads.V10.Enums.OfflineUserDataJobStatusEnum.OfflineUserDataJobStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PENDING | :RUNNING | :SUCCESS | :FAILED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PENDING, 2
  field :RUNNING, 3
  field :SUCCESS, 4
  field :FAILED, 5
end
defmodule Google.Ads.Googleads.V10.Enums.OfflineUserDataJobStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
