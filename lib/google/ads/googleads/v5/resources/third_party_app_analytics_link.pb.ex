defmodule Google.Ads.Googleads.V5.Resources.ThirdPartyAppAnalyticsLink do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          shareable_link_id: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :shareable_link_id]

  field :resource_name, 1, type: :string
  field :shareable_link_id, 2, type: Google.Protobuf.StringValue
end
