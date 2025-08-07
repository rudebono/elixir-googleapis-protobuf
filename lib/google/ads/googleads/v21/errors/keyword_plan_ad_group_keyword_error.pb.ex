defmodule Google.Ads.Googleads.V21.Errors.KeywordPlanAdGroupKeywordErrorEnum.KeywordPlanAdGroupKeywordError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :INVALID_KEYWORD_MATCH_TYPE, 2
  field :DUPLICATE_KEYWORD, 3
  field :KEYWORD_TEXT_TOO_LONG, 4
  field :KEYWORD_HAS_INVALID_CHARS, 5
  field :KEYWORD_HAS_TOO_MANY_WORDS, 6
  field :INVALID_KEYWORD_TEXT, 7
  field :NEGATIVE_KEYWORD_HAS_CPC_BID, 8
  field :NEW_BMM_KEYWORDS_NOT_ALLOWED, 9
end

defmodule Google.Ads.Googleads.V21.Errors.KeywordPlanAdGroupKeywordErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
