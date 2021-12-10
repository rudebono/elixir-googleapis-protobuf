defmodule Google.Ads.Googleads.V9.Errors.SharedSetErrorEnum.SharedSetError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CUSTOMER_CANNOT_CREATE_SHARED_SET_OF_THIS_TYPE
          | :DUPLICATE_NAME
          | :SHARED_SET_REMOVED
          | :SHARED_SET_IN_USE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CUSTOMER_CANNOT_CREATE_SHARED_SET_OF_THIS_TYPE, 2
  field :DUPLICATE_NAME, 3
  field :SHARED_SET_REMOVED, 4
  field :SHARED_SET_IN_USE, 5
end
defmodule Google.Ads.Googleads.V9.Errors.SharedSetErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
