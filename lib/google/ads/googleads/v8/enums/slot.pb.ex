defmodule Google.Ads.Googleads.V8.Enums.SlotEnum.Slot do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :SEARCH_SIDE
          | :SEARCH_TOP
          | :SEARCH_OTHER
          | :CONTENT
          | :SEARCH_PARTNER_TOP
          | :SEARCH_PARTNER_OTHER
          | :MIXED

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :SEARCH_SIDE, 2
  field :SEARCH_TOP, 3
  field :SEARCH_OTHER, 4
  field :CONTENT, 5
  field :SEARCH_PARTNER_TOP, 6
  field :SEARCH_PARTNER_OTHER, 7
  field :MIXED, 8
end

defmodule Google.Ads.Googleads.V8.Enums.SlotEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end
