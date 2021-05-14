defmodule Google.Ads.Googleads.V5.Resources.Video do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.StringValue.t() | nil,
          channel_id: Google.Protobuf.StringValue.t() | nil,
          duration_millis: Google.Protobuf.Int64Value.t() | nil,
          title: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :id, :channel_id, :duration_millis, :title]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.StringValue
  field :channel_id, 3, type: Google.Protobuf.StringValue
  field :duration_millis, 4, type: Google.Protobuf.Int64Value
  field :title, 5, type: Google.Protobuf.StringValue
end
