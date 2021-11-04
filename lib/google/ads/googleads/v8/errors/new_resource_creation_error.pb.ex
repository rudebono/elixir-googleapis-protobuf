defmodule Google.Ads.Googleads.V8.Errors.NewResourceCreationErrorEnum.NewResourceCreationError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CANNOT_SET_ID_FOR_CREATE
          | :DUPLICATE_TEMP_IDS
          | :TEMP_ID_RESOURCE_HAD_ERRORS

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_SET_ID_FOR_CREATE, 2
  field :DUPLICATE_TEMP_IDS, 3
  field :TEMP_ID_RESOURCE_HAD_ERRORS, 4
end

defmodule Google.Ads.Googleads.V8.Errors.NewResourceCreationErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
