defmodule Google.Ads.Googleads.V9.Enums.MessagePlaceholderFieldEnum.MessagePlaceholderField do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :BUSINESS_NAME
          | :COUNTRY_CODE
          | :PHONE_NUMBER
          | :MESSAGE_EXTENSION_TEXT
          | :MESSAGE_TEXT

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :BUSINESS_NAME, 2
  field :COUNTRY_CODE, 3
  field :PHONE_NUMBER, 4
  field :MESSAGE_EXTENSION_TEXT, 5
  field :MESSAGE_TEXT, 6
end

defmodule Google.Ads.Googleads.V9.Enums.MessagePlaceholderFieldEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
