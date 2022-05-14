defmodule Google.Ads.Googleads.V9.Services.GetKeywordThemeConstantRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
end
defmodule Google.Ads.Googleads.V9.Services.SuggestKeywordThemeConstantsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :query_text, 1, type: :string, json_name: "queryText"
  field :country_code, 2, type: :string, json_name: "countryCode"
  field :language_code, 3, type: :string, json_name: "languageCode"
end
defmodule Google.Ads.Googleads.V9.Services.SuggestKeywordThemeConstantsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :keyword_theme_constants, 1,
    repeated: true,
    type: Google.Ads.Googleads.V9.Resources.KeywordThemeConstant,
    json_name: "keywordThemeConstants"
end
defmodule Google.Ads.Googleads.V9.Services.KeywordThemeConstantService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v9.services.KeywordThemeConstantService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetKeywordThemeConstant,
      Google.Ads.Googleads.V9.Services.GetKeywordThemeConstantRequest,
      Google.Ads.Googleads.V9.Resources.KeywordThemeConstant

  rpc :SuggestKeywordThemeConstants,
      Google.Ads.Googleads.V9.Services.SuggestKeywordThemeConstantsRequest,
      Google.Ads.Googleads.V9.Services.SuggestKeywordThemeConstantsResponse
end

defmodule Google.Ads.Googleads.V9.Services.KeywordThemeConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V9.Services.KeywordThemeConstantService.Service
end
