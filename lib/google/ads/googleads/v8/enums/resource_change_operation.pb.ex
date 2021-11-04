defmodule Google.Ads.Googleads.V8.Enums.ResourceChangeOperationEnum.ResourceChangeOperation do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CREATE | :UPDATE | :REMOVE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CREATE, 2
  field :UPDATE, 3
  field :REMOVE, 4
end

defmodule Google.Ads.Googleads.V8.Enums.ResourceChangeOperationEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
