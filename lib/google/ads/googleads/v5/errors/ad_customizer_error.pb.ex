defmodule Google.Ads.Googleads.V5.Errors.AdCustomizerErrorEnum.AdCustomizerError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :COUNTDOWN_INVALID_DATE_FORMAT
          | :COUNTDOWN_DATE_IN_PAST
          | :COUNTDOWN_INVALID_LOCALE
          | :COUNTDOWN_INVALID_START_DAYS_BEFORE
          | :UNKNOWN_USER_LIST

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :COUNTDOWN_INVALID_DATE_FORMAT, 2

  field :COUNTDOWN_DATE_IN_PAST, 3

  field :COUNTDOWN_INVALID_LOCALE, 4

  field :COUNTDOWN_INVALID_START_DAYS_BEFORE, 5

  field :UNKNOWN_USER_LIST, 6
end

defmodule Google.Ads.Googleads.V5.Errors.AdCustomizerErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
