defmodule Google.Ads.Googleads.V7.Resources.FeedItemSetLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          feed_item: String.t(),
          feed_item_set: String.t()
        }

  defstruct [:resource_name, :feed_item, :feed_item_set]

  field :resource_name, 1, type: :string
  field :feed_item, 2, type: :string
  field :feed_item_set, 3, type: :string
end
