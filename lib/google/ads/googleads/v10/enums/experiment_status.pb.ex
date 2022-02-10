defmodule Google.Ads.Googleads.V10.Enums.ExperimentStatusEnum.ExperimentStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :ENABLED
          | :REMOVED
          | :HALTED
          | :PROMOTED
          | :SETUP
          | :INITIATED
          | :GRADUATED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ENABLED, 2
  field :REMOVED, 3
  field :HALTED, 4
  field :PROMOTED, 5
  field :SETUP, 6
  field :INITIATED, 7
  field :GRADUATED, 8
end
defmodule Google.Ads.Googleads.V10.Enums.ExperimentStatusEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
