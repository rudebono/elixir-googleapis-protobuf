defmodule Google.Ads.Googleads.V8.Services.GetKeywordThemeConstantRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SuggestKeywordThemeConstantsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_text: String.t(),
          country_code: String.t(),
          language_code: String.t()
        }

  defstruct [:query_text, :country_code, :language_code]

  field :query_text, 1, type: :string
  field :country_code, 2, type: :string
  field :language_code, 3, type: :string
end

defmodule Google.Ads.Googleads.V8.Services.SuggestKeywordThemeConstantsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keyword_theme_constants: [Google.Ads.Googleads.V8.Resources.KeywordThemeConstant.t()]
        }

  defstruct [:keyword_theme_constants]

  field :keyword_theme_constants, 1,
    repeated: true,
    type: Google.Ads.Googleads.V8.Resources.KeywordThemeConstant
end

defmodule Google.Ads.Googleads.V8.Services.KeywordThemeConstantService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v8.services.KeywordThemeConstantService"

  rpc :GetKeywordThemeConstant,
      Google.Ads.Googleads.V8.Services.GetKeywordThemeConstantRequest,
      Google.Ads.Googleads.V8.Resources.KeywordThemeConstant

  rpc :SuggestKeywordThemeConstants,
      Google.Ads.Googleads.V8.Services.SuggestKeywordThemeConstantsRequest,
      Google.Ads.Googleads.V8.Services.SuggestKeywordThemeConstantsResponse
end

defmodule Google.Ads.Googleads.V8.Services.KeywordThemeConstantService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V8.Services.KeywordThemeConstantService.Service
end
