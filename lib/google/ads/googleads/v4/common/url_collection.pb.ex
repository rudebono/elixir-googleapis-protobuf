defmodule Google.Ads.Googleads.V4.Common.UrlCollection do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url_collection_id: Google.Protobuf.StringValue.t() | nil,
          final_urls: [Google.Protobuf.StringValue.t()],
          final_mobile_urls: [Google.Protobuf.StringValue.t()],
          tracking_url_template: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:url_collection_id, :final_urls, :final_mobile_urls, :tracking_url_template]

  field :url_collection_id, 1, type: Google.Protobuf.StringValue
  field :final_urls, 2, repeated: true, type: Google.Protobuf.StringValue
  field :final_mobile_urls, 3, repeated: true, type: Google.Protobuf.StringValue
  field :tracking_url_template, 4, type: Google.Protobuf.StringValue
end
