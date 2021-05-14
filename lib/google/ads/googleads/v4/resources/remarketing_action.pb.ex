defmodule Google.Ads.Googleads.V4.Resources.RemarketingAction do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          name: Google.Protobuf.StringValue.t() | nil,
          tag_snippets: [Google.Ads.Googleads.V4.Common.TagSnippet.t()]
        }

  defstruct [:resource_name, :id, :name, :tag_snippets]

  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value
  field :name, 3, type: Google.Protobuf.StringValue
  field :tag_snippets, 4, repeated: true, type: Google.Ads.Googleads.V4.Common.TagSnippet
end
