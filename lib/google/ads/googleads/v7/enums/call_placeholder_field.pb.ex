defmodule Google.Ads.Googleads.V7.Enums.CallPlaceholderFieldEnum.CallPlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :PHONE_NUMBER
          | :COUNTRY_CODE
          | :TRACKED
          | :CONVERSION_TYPE_ID
          | :CONVERSION_REPORTING_STATE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :PHONE_NUMBER, 2

  field :COUNTRY_CODE, 3

  field :TRACKED, 4

  field :CONVERSION_TYPE_ID, 5

  field :CONVERSION_REPORTING_STATE, 6
end

defmodule Google.Ads.Googleads.V7.Enums.CallPlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
