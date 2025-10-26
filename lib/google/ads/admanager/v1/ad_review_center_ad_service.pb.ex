defmodule Google.Ads.Admanager.V1.SearchAdReviewCenterAdsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false

  field :status, 4,
    type: Google.Ads.Admanager.V1.AdReviewCenterAdStatusEnum.AdReviewCenterAdStatus,
    enum: true,
    deprecated: false

  field :ad_review_center_ad_id, 5,
    repeated: true,
    type: :string,
    json_name: "adReviewCenterAdId",
    deprecated: false

  field :date_time_range, 6,
    type: Google.Type.Interval,
    json_name: "dateTimeRange",
    deprecated: false

  field :search_text, 7, repeated: true, type: :string, json_name: "searchText", deprecated: false

  field :buyer_account_id, 8,
    repeated: true,
    type: :int64,
    json_name: "buyerAccountId",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.SearchAdReviewCenterAdsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_review_center_ads, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.AdReviewCenterAd,
    json_name: "adReviewCenterAds"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ads.Admanager.V1.BatchAllowAdReviewCenterAdsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchAllowAdReviewCenterAdsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.BatchBlockAdReviewCenterAdsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :names, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Ads.Admanager.V1.BatchBlockAdReviewCenterAdsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.BatchAdReviewCenterAdsOperationMetadata.FailedRequestsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :int32
  field :value, 2, type: Google.Rpc.Status
end

defmodule Google.Ads.Admanager.V1.BatchAdReviewCenterAdsOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :failed_requests, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.BatchAdReviewCenterAdsOperationMetadata.FailedRequestsEntry,
    json_name: "failedRequests",
    map: true
end

defmodule Google.Ads.Admanager.V1.AdReviewCenterAdService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.admanager.v1.AdReviewCenterAdService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :SearchAdReviewCenterAds,
      Google.Ads.Admanager.V1.SearchAdReviewCenterAdsRequest,
      Google.Ads.Admanager.V1.SearchAdReviewCenterAdsResponse

  rpc :BatchAllowAdReviewCenterAds,
      Google.Ads.Admanager.V1.BatchAllowAdReviewCenterAdsRequest,
      Google.Longrunning.Operation

  rpc :BatchBlockAdReviewCenterAds,
      Google.Ads.Admanager.V1.BatchBlockAdReviewCenterAdsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Ads.Admanager.V1.AdReviewCenterAdService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Admanager.V1.AdReviewCenterAdService.Service
end
