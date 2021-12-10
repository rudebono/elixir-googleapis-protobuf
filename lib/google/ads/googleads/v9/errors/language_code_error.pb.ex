defmodule Google.Ads.Googleads.V9.Errors.LanguageCodeErrorEnum.LanguageCodeError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :LANGUAGE_CODE_NOT_FOUND | :INVALID_LANGUAGE_CODE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :LANGUAGE_CODE_NOT_FOUND, 2
  field :INVALID_LANGUAGE_CODE, 3
end
defmodule Google.Ads.Googleads.V9.Errors.LanguageCodeErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
