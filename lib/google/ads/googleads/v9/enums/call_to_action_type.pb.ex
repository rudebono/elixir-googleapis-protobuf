defmodule Google.Ads.Googleads.V9.Enums.CallToActionTypeEnum.CallToActionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :LEARN_MORE
          | :GET_QUOTE
          | :APPLY_NOW
          | :SIGN_UP
          | :CONTACT_US
          | :SUBSCRIBE
          | :DOWNLOAD
          | :BOOK_NOW
          | :SHOP_NOW

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :LEARN_MORE, 2
  field :GET_QUOTE, 3
  field :APPLY_NOW, 4
  field :SIGN_UP, 5
  field :CONTACT_US, 6
  field :SUBSCRIBE, 7
  field :DOWNLOAD, 8
  field :BOOK_NOW, 9
  field :SHOP_NOW, 10
end

defmodule Google.Ads.Googleads.V9.Enums.CallToActionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
