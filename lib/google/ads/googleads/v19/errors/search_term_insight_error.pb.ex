defmodule Google.Ads.Googleads.V19.Errors.SearchTermInsightErrorEnum.SearchTermInsightError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :FILTERING_NOT_ALLOWED_WITH_SEGMENTS, 2
  field :LIMIT_NOT_ALLOWED_WITH_SEGMENTS, 3
  field :MISSING_FIELD_IN_SELECT_CLAUSE, 4
  field :REQUIRES_FILTER_BY_SINGLE_RESOURCE, 5
  field :SORTING_NOT_ALLOWED_WITH_SEGMENTS, 6
  field :SUMMARY_ROW_NOT_ALLOWED_WITH_SEGMENTS, 7
end

defmodule Google.Ads.Googleads.V19.Errors.SearchTermInsightErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
