defmodule Google.Ads.Googleads.V4.Resources.TopicConstant do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          topic_constant_parent: Google.Protobuf.StringValue.t() | nil,
          path: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:resource_name, :id, :topic_constant_parent, :path]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :topic_constant_parent, 3, type: Google.Protobuf.StringValue
  field :path, 4, repeated: true, type: Google.Protobuf.StringValue
end
