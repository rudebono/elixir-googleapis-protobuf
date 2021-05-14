defmodule Google.Ads.Googleads.V4.Services.GetRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.t()],
          partial_failure: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure]

  field :customer_id, 1, type: :string

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation

  field :partial_failure, 3, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.CampaignBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          new_budget_amount_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:new_budget_amount_micros]

  field :new_budget_amount_micros, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.TextAdParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad: Google.Ads.Googleads.V4.Resources.Ad.t() | nil
        }

  defstruct [:ad]

  field :ad, 1, type: Google.Ads.Googleads.V4.Resources.Ad
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.KeywordParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ad_group: Google.Protobuf.StringValue.t() | nil,
          match_type: Google.Ads.Googleads.V4.Enums.KeywordMatchTypeEnum.KeywordMatchType.t(),
          cpc_bid_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:ad_group, :match_type, :cpc_bid_micros]

  field :ad_group, 1, type: Google.Protobuf.StringValue

  field :match_type, 2,
    type: Google.Ads.Googleads.V4.Enums.KeywordMatchTypeEnum.KeywordMatchType,
    enum: true

  field :cpc_bid_micros, 3, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.TargetCpaOptInParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          target_cpa_micros: Google.Protobuf.Int64Value.t() | nil,
          new_campaign_budget_amount_micros: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:target_cpa_micros, :new_campaign_budget_amount_micros]

  field :target_cpa_micros, 1, type: Google.Protobuf.Int64Value
  field :new_campaign_budget_amount_micros, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.CalloutExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          callout_extensions: [Google.Ads.Googleads.V4.Common.CalloutFeedItem.t()]
        }

  defstruct [:callout_extensions]

  field :callout_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.CalloutFeedItem
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.CallExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_extensions: [Google.Ads.Googleads.V4.Common.CallFeedItem.t()]
        }

  defstruct [:call_extensions]

  field :call_extensions, 1, repeated: true, type: Google.Ads.Googleads.V4.Common.CallFeedItem
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.SitelinkExtensionParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sitelink_extensions: [Google.Ads.Googleads.V4.Common.SitelinkFeedItem.t()]
        }

  defstruct [:sitelink_extensions]

  field :sitelink_extensions, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Common.SitelinkFeedItem
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          budget_micros_to_move: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:budget_micros_to_move]

  field :budget_micros_to_move, 1, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          apply_parameters: {atom, any},
          resource_name: String.t()
        }

  defstruct [:apply_parameters, :resource_name]

  oneof :apply_parameters, 0
  field :resource_name, 1, type: :string

  field :campaign_budget, 2,
    type: Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.CampaignBudgetParameters,
    oneof: 0

  field :text_ad, 3,
    type: Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.TextAdParameters,
    oneof: 0

  field :keyword, 4,
    type: Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.KeywordParameters,
    oneof: 0

  field :target_cpa_opt_in, 5,
    type: Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.TargetCpaOptInParameters,
    oneof: 0

  field :callout_extension, 6,
    type:
      Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.CalloutExtensionParameters,
    oneof: 0

  field :call_extension, 7,
    type: Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.CallExtensionParameters,
    oneof: 0

  field :sitelink_extension, 8,
    type:
      Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.SitelinkExtensionParameters,
    oneof: 0

  field :move_unused_budget, 9,
    type:
      Google.Ads.Googleads.V4.Services.ApplyRecommendationOperation.MoveUnusedBudgetParameters,
    oneof: 0
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Ads.Googleads.V4.Services.ApplyRecommendationResult.t()],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:results, :partial_failure_error]

  field :results, 1,
    repeated: true,
    type: Google.Ads.Googleads.V4.Services.ApplyRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V4.Services.ApplyRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.DismissRecommendationRequest.DismissRecommendationOperation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.DismissRecommendationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          operations: [
            Google.Ads.Googleads.V4.Services.DismissRecommendationRequest.DismissRecommendationOperation.t()
          ],
          partial_failure: boolean
        }

  defstruct [:customer_id, :operations, :partial_failure]

  field :customer_id, 1, type: :string

  field :operations, 3,
    repeated: true,
    type:
      Google.Ads.Googleads.V4.Services.DismissRecommendationRequest.DismissRecommendationOperation

  field :partial_failure, 2, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.DismissRecommendationResponse.DismissRecommendationResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t()
        }

  defstruct [:resource_name]

  field :resource_name, 1, type: :string
end

defmodule Google.Ads.Googleads.V4.Services.DismissRecommendationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [
            Google.Ads.Googleads.V4.Services.DismissRecommendationResponse.DismissRecommendationResult.t()
          ],
          partial_failure_error: Google.Rpc.Status.t() | nil
        }

  defstruct [:results, :partial_failure_error]

  field :results, 1,
    repeated: true,
    type:
      Google.Ads.Googleads.V4.Services.DismissRecommendationResponse.DismissRecommendationResult

  field :partial_failure_error, 2, type: Google.Rpc.Status
end

defmodule Google.Ads.Googleads.V4.Services.RecommendationService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.ads.googleads.v4.services.RecommendationService"

  rpc :GetRecommendation,
      Google.Ads.Googleads.V4.Services.GetRecommendationRequest,
      Google.Ads.Googleads.V4.Resources.Recommendation

  rpc :ApplyRecommendation,
      Google.Ads.Googleads.V4.Services.ApplyRecommendationRequest,
      Google.Ads.Googleads.V4.Services.ApplyRecommendationResponse

  rpc :DismissRecommendation,
      Google.Ads.Googleads.V4.Services.DismissRecommendationRequest,
      Google.Ads.Googleads.V4.Services.DismissRecommendationResponse
end

defmodule Google.Ads.Googleads.V4.Services.RecommendationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V4.Services.RecommendationService.Service
end
