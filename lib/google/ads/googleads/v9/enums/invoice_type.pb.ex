defmodule Google.Ads.Googleads.V9.Enums.InvoiceTypeEnum.InvoiceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :UNSPECIFIED | :UNKNOWN | :CREDIT_MEMO | :INVOICE

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CREDIT_MEMO, 2
  field :INVOICE, 3
end
defmodule Google.Ads.Googleads.V9.Enums.InvoiceTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
