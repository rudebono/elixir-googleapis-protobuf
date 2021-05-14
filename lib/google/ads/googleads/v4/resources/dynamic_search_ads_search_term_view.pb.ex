defmodule Google.Ads.Googleads.V4.Resources.DynamicSearchAdsSearchTermView do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          search_term: Google.Protobuf.StringValue.t() | nil,
          headline: Google.Protobuf.StringValue.t() | nil,
          landing_page: Google.Protobuf.StringValue.t() | nil,
          page_url: Google.Protobuf.StringValue.t() | nil,
          has_negative_keyword: Google.Protobuf.BoolValue.t() | nil,
          has_matching_keyword: Google.Protobuf.BoolValue.t() | nil,
          has_negative_url: Google.Protobuf.BoolValue.t() | nil
        }

  defstruct [
    :resource_name,
    :search_term,
    :headline,
    :landing_page,
    :page_url,
    :has_negative_keyword,
    :has_matching_keyword,
    :has_negative_url
  ]

  field :resource_name, 1, type: :string
  field :search_term, 2, type: Google.Protobuf.StringValue
  field :headline, 3, type: Google.Protobuf.StringValue
  field :landing_page, 4, type: Google.Protobuf.StringValue
  field :page_url, 5, type: Google.Protobuf.StringValue
  field :has_negative_keyword, 6, type: Google.Protobuf.BoolValue
  field :has_matching_keyword, 7, type: Google.Protobuf.BoolValue
  field :has_negative_url, 8, type: Google.Protobuf.BoolValue
end
