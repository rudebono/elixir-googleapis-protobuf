defmodule Google.Ads.Googleads.V5.Resources.PaidOrganicSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:resource_name, :search_term]

  field :resource_name, 1, type: :string
  field :search_term, 2, type: Google.Protobuf.StringValue
end
