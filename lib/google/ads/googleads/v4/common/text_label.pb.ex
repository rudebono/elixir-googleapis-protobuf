defmodule Google.Ads.Googleads.V4.Common.TextLabel do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          background_color: Google.Protobuf.StringValue.t() | nil,
          description: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:background_color, :description]

  field :background_color, 1, type: Google.Protobuf.StringValue
  field :description, 2, type: Google.Protobuf.StringValue
end
