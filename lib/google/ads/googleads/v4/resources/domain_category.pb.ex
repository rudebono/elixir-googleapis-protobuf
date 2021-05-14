defmodule Google.Ads.Googleads.V4.Resources.DomainCategory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          campaign: Google.Protobuf.StringValue.t() | nil,
          category: Google.Protobuf.StringValue.t() | nil,
          language_code: Google.Protobuf.StringValue.t() | nil,
          domain: Google.Protobuf.StringValue.t() | nil,
          coverage_fraction: Google.Protobuf.DoubleValue.t() | nil,
          category_rank: Google.Protobuf.Int64Value.t() | nil,
          has_children: Google.Protobuf.BoolValue.t() | nil,
          recommended_cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [
    :resource_name,
    :campaign,
    :category,
    :language_code,
    :domain,
    :coverage_fraction,
    :category_rank,
    :has_children,
    :recommended_cpc_bid_micros
  ]

  field :resource_name, 1, type: :string
  field :campaign, 2, type: Google.Protobuf.StringValue
  field :category, 3, type: Google.Protobuf.StringValue
  field :language_code, 4, type: Google.Protobuf.StringValue
  field :domain, 5, type: Google.Protobuf.StringValue
  field :coverage_fraction, 6, type: Google.Protobuf.DoubleValue
  field :category_rank, 7, type: Google.Protobuf.Int64Value
  field :has_children, 8, type: Google.Protobuf.BoolValue
  field :recommended_cpc_bid_micros, 9, type: Google.Protobuf.Int64Value
end
