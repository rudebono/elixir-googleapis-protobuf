defmodule Google.Ads.Googleads.V5.Services.GenerateKeywordIdeasRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          seed: {atom, any},
          customer_id: String.t(),
          language: Google.Protobuf.StringValue.t() | nil,
          geo_target_constants: [Google.Protobuf.StringValue.t()],
          include_adult_keywords: boolean,
          page_token: String.t(),
          page_size: integer,
          keyword_plan_network:
            Google.Ads.Googleads.V5.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork.t()
        }

  defstruct [
    :seed,
    :customer_id,
    :language,
    :geo_target_constants,
    :include_adult_keywords,
    :page_token,
    :page_size,
    :keyword_plan_network
  ]

  oneof :seed, 0
  field :customer_id, 1, type: :string
  field :language, 7, type: Google.Protobuf.StringValue
  field :geo_target_constants, 8, repeated: true, type: Google.Protobuf.StringValue
  field :include_adult_keywords, 10, type: :bool
  field :page_token, 12, type: :string
  field :page_size, 13, type: :int32

  field :keyword_plan_network, 9,
    type: Google.Ads.Googleads.V5.Enums.KeywordPlanNetworkEnum.KeywordPlanNetwork,
    enum: true

  field :keyword_and_url_seed, 2,
    type: Google.Ads.Googleads.V5.Services.KeywordAndUrlSeed,
    oneof: 0

  field :keyword_seed, 3, type: Google.Ads.Googleads.V5.Services.KeywordSeed, oneof: 0
  field :url_seed, 5, type: Google.Ads.Googleads.V5.Services.UrlSeed, oneof: 0
  field :site_seed, 11, type: Google.Ads.Googleads.V5.Services.SiteSeed, oneof: 0
end

defmodule Google.Ads.Googleads.V5.Services.KeywordAndUrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: Google.Protobuf.StringValue.t() | nil,
          keywords: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:url, :keywords]

  field :url, 1, type: Google.Protobuf.StringValue
  field :keywords, 2, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Services.KeywordSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          keywords: [Google.Protobuf.StringValue.t()]
        }

  defstruct [:keywords]

  field :keywords, 1, repeated: true, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Services.SiteSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          site: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:site]

  field :site, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Services.UrlSeed do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          url: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:url]

  field :url, 1, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V5.Services.GenerateKeywordIdeaResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V5.Services.GenerateKeywordIdeaResult.t()],
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:results, :next_page_token, :total_size]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V5.Services.GenerateKeywordIdeaResult

  field :next_page_token, 2, type: :string
  field :total_size, 3, type: :int64
end

defmodule Google.Ads.Googleads.V5.Services.GenerateKeywordIdeaResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: Google.Protobuf.StringValue.t() | nil,
          keyword_idea_metrics:
            Google.Ads.Googleads.V5.Common.KeywordPlanHistoricalMetrics.t() | nil
        }

  defstruct [:text, :keyword_idea_metrics]

  field :text, 2, type: Google.Protobuf.StringValue

  field :keyword_idea_metrics, 3,
    type: Google.Ads.Googleads.V5.Common.KeywordPlanHistoricalMetrics
end

defmodule Google.Ads.Googleads.V5.Services.KeywordPlanIdeaService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v5.services.KeywordPlanIdeaService"

  rpc :GenerateKeywordIdeas,
      Google.Ads.Googleads.V5.Services.GenerateKeywordIdeasRequest,
      Google.Ads.Googleads.V5.Services.GenerateKeywordIdeaResponse
end

defmodule Google.Ads.Googleads.V5.Services.KeywordPlanIdeaService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V5.Services.KeywordPlanIdeaService.Service
end
