defmodule Google.Ads.Googleads.V4.Resources.LandingPageView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          unexpanded_final_url: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :unexpanded_final_url]

  field :resource_name, 1, type: :string
  field :unexpanded_final_url, 2, type: Google.Protobuf.StringValue
end
