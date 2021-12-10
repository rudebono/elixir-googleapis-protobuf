defmodule Google.Ads.Googleads.V9.Enums.BatchJobStatusEnum.BatchJobStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :PENDING | :RUNNING | :DONE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PENDING, 2
  field :RUNNING, 3
  field :DONE, 4
end
defmodule Google.Ads.Googleads.V9.Enums.BatchJobStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
