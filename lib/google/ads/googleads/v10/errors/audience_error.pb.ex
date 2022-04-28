defmodule Google.Ads.Googleads.V10.Errors.AudienceErrorEnum.AudienceError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :NAME_ALREADY_IN_USE
          | :DIMENSION_INVALID
          | :AUDIENCE_SEGMENT_NOT_FOUND
          | :AUDIENCE_SEGMENT_TYPE_NOT_SUPPORTED
          | :DUPLICATE_AUDIENCE_SEGMENT
          | :TOO_MANY_SEGMENTS
          | :TOO_MANY_DIMENSIONS_OF_SAME_TYPE
          | :IN_USE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :NAME_ALREADY_IN_USE, 2
  field :DIMENSION_INVALID, 3
  field :AUDIENCE_SEGMENT_NOT_FOUND, 4
  field :AUDIENCE_SEGMENT_TYPE_NOT_SUPPORTED, 5
  field :DUPLICATE_AUDIENCE_SEGMENT, 6
  field :TOO_MANY_SEGMENTS, 7
  field :TOO_MANY_DIMENSIONS_OF_SAME_TYPE, 8
  field :IN_USE, 9
end
defmodule Google.Ads.Googleads.V10.Errors.AudienceErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
