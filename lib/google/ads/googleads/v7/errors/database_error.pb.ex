defmodule Google.Ads.Googleads.V7.Errors.DatabaseErrorEnum.DatabaseError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CONCURRENT_MODIFICATION
          | :DATA_CONSTRAINT_VIOLATION
          | :REQUEST_TOO_LARGE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CONCURRENT_MODIFICATION, 2
  field :DATA_CONSTRAINT_VIOLATION, 3
  field :REQUEST_TOO_LARGE, 4
end
defmodule Google.Ads.Googleads.V7.Errors.DatabaseErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
