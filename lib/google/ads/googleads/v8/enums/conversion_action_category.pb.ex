defmodule Google.Ads.Googleads.V8.Enums.ConversionActionCategoryEnum.ConversionActionCategory do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DEFAULT
          | :PAGE_VIEW
          | :PURCHASE
          | :SIGNUP
          | :LEAD
          | :DOWNLOAD
          | :ADD_TO_CART
          | :BEGIN_CHECKOUT
          | :SUBSCRIBE_PAID
          | :PHONE_CALL_LEAD
          | :IMPORTED_LEAD
          | :SUBMIT_LEAD_FORM
          | :BOOK_APPOINTMENT
          | :REQUEST_QUOTE
          | :GET_DIRECTIONS
          | :OUTBOUND_CLICK
          | :CONTACT
          | :ENGAGEMENT
          | :STORE_VISIT
          | :STORE_SALE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :DEFAULT, 2
  field :PAGE_VIEW, 3
  field :PURCHASE, 4
  field :SIGNUP, 5
  field :LEAD, 6
  field :DOWNLOAD, 7
  field :ADD_TO_CART, 8
  field :BEGIN_CHECKOUT, 9
  field :SUBSCRIBE_PAID, 10
  field :PHONE_CALL_LEAD, 11
  field :IMPORTED_LEAD, 12
  field :SUBMIT_LEAD_FORM, 13
  field :BOOK_APPOINTMENT, 14
  field :REQUEST_QUOTE, 15
  field :GET_DIRECTIONS, 16
  field :OUTBOUND_CLICK, 17
  field :CONTACT, 18
  field :ENGAGEMENT, 19
  field :STORE_VISIT, 20
  field :STORE_SALE, 21
end

defmodule Google.Ads.Googleads.V8.Enums.ConversionActionCategoryEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
