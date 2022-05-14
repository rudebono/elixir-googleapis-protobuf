defmodule Google.Ads.Googleads.V9.Enums.FeedItemQualityDisapprovalReasonEnum.FeedItemQualityDisapprovalReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PRICE_TABLE_REPETITIVE_HEADERS, 2
  field :PRICE_TABLE_REPETITIVE_DESCRIPTION, 3
  field :PRICE_TABLE_INCONSISTENT_ROWS, 4
  field :PRICE_DESCRIPTION_HAS_PRICE_QUALIFIERS, 5
  field :PRICE_UNSUPPORTED_LANGUAGE, 6
  field :PRICE_TABLE_ROW_HEADER_TABLE_TYPE_MISMATCH, 7
  field :PRICE_TABLE_ROW_HEADER_HAS_PROMOTIONAL_TEXT, 8
  field :PRICE_TABLE_ROW_DESCRIPTION_NOT_RELEVANT, 9
  field :PRICE_TABLE_ROW_DESCRIPTION_HAS_PROMOTIONAL_TEXT, 10
  field :PRICE_TABLE_ROW_HEADER_DESCRIPTION_REPETITIVE, 11
  field :PRICE_TABLE_ROW_UNRATEABLE, 12
  field :PRICE_TABLE_ROW_PRICE_INVALID, 13
  field :PRICE_TABLE_ROW_URL_INVALID, 14
  field :PRICE_HEADER_OR_DESCRIPTION_HAS_PRICE, 15
  field :STRUCTURED_SNIPPETS_HEADER_POLICY_VIOLATED, 16
  field :STRUCTURED_SNIPPETS_REPEATED_VALUES, 17
  field :STRUCTURED_SNIPPETS_EDITORIAL_GUIDELINES, 18
  field :STRUCTURED_SNIPPETS_HAS_PROMOTIONAL_TEXT, 19
end
defmodule Google.Ads.Googleads.V9.Enums.FeedItemQualityDisapprovalReasonEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
