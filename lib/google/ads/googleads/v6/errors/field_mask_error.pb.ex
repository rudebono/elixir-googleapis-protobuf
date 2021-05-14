defmodule Google.Ads.Googleads.V6.Errors.FieldMaskErrorEnum.FieldMaskError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :FIELD_MASK_MISSING
          | :FIELD_MASK_NOT_ALLOWED
          | :FIELD_NOT_FOUND
          | :FIELD_HAS_SUBFIELDS

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :FIELD_MASK_MISSING, 5

  field :FIELD_MASK_NOT_ALLOWED, 4

  field :FIELD_NOT_FOUND, 2

  field :FIELD_HAS_SUBFIELDS, 3
end

defmodule Google.Ads.Googleads.V6.Errors.FieldMaskErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
