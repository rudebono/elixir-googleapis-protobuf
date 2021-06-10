defmodule Google.Ads.Googleads.V8.Errors.CountryCodeErrorEnum.CountryCodeError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :INVALID_COUNTRY_CODE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :INVALID_COUNTRY_CODE, 2
end

defmodule Google.Ads.Googleads.V8.Errors.CountryCodeErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
