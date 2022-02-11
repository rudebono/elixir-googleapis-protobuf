defmodule Google.Ads.Googleads.V10.Services.SuggestKeywordThemeConstantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_text: String.t(),
          country_code: String.t(),
          language_code: String.t()
        }

  defstruct query_text: "",
            country_code: "",
            language_code: ""

  field :query_text, 1, type: :string, json_name: "queryText"
  field :country_code, 2, type: :string, json_name: "countryCode"
  field :language_code, 3, type: :string, json_name: "languageCode"
end
defmodule Google.Ads.Googleads.V10.Services.SuggestKeywordThemeConstantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_theme_constants: [Google.Ads.Googleads.V10.Resources.KeywordThemeConstant.t()]
        }

  defstruct keyword_theme_constants: []

  field :keyword_theme_constants, 1,
    repeated: true,
    type: Google.Ads.Googleads.V10.Resources.KeywordThemeConstant,
    json_name: "keywordThemeConstants"
end
defmodule Google.Ads.Googleads.V10.Services.KeywordThemeConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v10.services.KeywordThemeConstantService"

  rpc :SuggestKeywordThemeConstants,
      Google.Ads.Googleads.V10.Services.SuggestKeywordThemeConstantsRequest,
      Google.Ads.Googleads.V10.Services.SuggestKeywordThemeConstantsResponse
end

defmodule Google.Ads.Googleads.V10.Services.KeywordThemeConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V10.Services.KeywordThemeConstantService.Service
end
