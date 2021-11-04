defmodule Google.Ads.Googleads.V9.Enums.LeadFormCallToActionTypeEnum.LeadFormCallToActionType do
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
          | :GET_OFFER
          | :REGISTER
          | :GET_INFO
          | :REQUEST_DEMO
          | :JOIN_NOW
          | :GET_STARTED

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
  field :GET_OFFER, 10
  field :REGISTER, 11
  field :GET_INFO, 12
  field :REQUEST_DEMO, 13
  field :JOIN_NOW, 14
  field :GET_STARTED, 15
end

defmodule Google.Ads.Googleads.V9.Enums.LeadFormCallToActionTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
