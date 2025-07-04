defmodule Google.Ads.Googleads.V20.Services.SuggestKeywordThemeConstantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :query_text, 1, type: :string, json_name: "queryText"
  field :country_code, 2, type: :string, json_name: "countryCode"
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Ads.Googleads.V20.Services.SuggestKeywordThemeConstantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :keyword_theme_constants, 1,
    repeated: true,
    type: Google.Ads.Googleads.V20.Resources.KeywordThemeConstant,
    json_name: "keywordThemeConstants"
end

defmodule Google.Ads.Googleads.V20.Services.KeywordThemeConstantService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v20.services.KeywordThemeConstantService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :SuggestKeywordThemeConstants,
      Google.Ads.Googleads.V20.Services.SuggestKeywordThemeConstantsRequest,
      Google.Ads.Googleads.V20.Services.SuggestKeywordThemeConstantsResponse
end

defmodule Google.Ads.Googleads.V20.Services.KeywordThemeConstantService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V20.Services.KeywordThemeConstantService.Service
end
