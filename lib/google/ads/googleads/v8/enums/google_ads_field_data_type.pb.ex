defmodule Google.Ads.Googleads.V8.Enums.GoogleAdsFieldDataTypeEnum.GoogleAdsFieldDataType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :BOOLEAN
          | :DATE
          | :DOUBLE
          | :ENUM
          | :FLOAT
          | :INT32
          | :INT64
          | :MESSAGE
          | :RESOURCE_NAME
          | :STRING
          | :UINT64

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BOOLEAN, 2
  field :DATE, 3
  field :DOUBLE, 4
  field :ENUM, 5
  field :FLOAT, 6
  field :INT32, 7
  field :INT64, 8
  field :MESSAGE, 9
  field :RESOURCE_NAME, 10
  field :STRING, 11
  field :UINT64, 12
end
defmodule Google.Ads.Googleads.V8.Enums.GoogleAdsFieldDataTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
