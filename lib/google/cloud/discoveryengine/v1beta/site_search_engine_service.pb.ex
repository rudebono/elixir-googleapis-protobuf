defmodule Google.Cloud.Discoveryengine.V1beta.RecrawlUrisResponse.FailureInfo.FailureReason.CorpusType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CORPUS_TYPE_UNSPECIFIED, 0
  field :DESKTOP, 1
  field :MOBILE, 2
end

defmodule Google.Cloud.Discoveryengine.V1beta.GetSiteSearchEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.CreateTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :target_site, 2,
    type: Google.Cloud.Discoveryengine.V1beta.TargetSite,
    json_name: "targetSite",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.CreateTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchCreateTargetSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.CreateTargetSiteRequest,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.GetTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.UpdateTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_site, 1,
    type: Google.Cloud.Discoveryengine.V1beta.TargetSite,
    json_name: "targetSite",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.UpdateTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListTargetSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListTargetSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_sites, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.TargetSite,
    json_name: "targetSites"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchCreateTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchCreateTargetSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_sites, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.TargetSite,
    json_name: "targetSites"
end

defmodule Google.Cloud.Discoveryengine.V1beta.EnableAdvancedSiteSearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.EnableAdvancedSiteSearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1beta.EnableAdvancedSiteSearchMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DisableAdvancedSiteSearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.DisableAdvancedSiteSearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1beta.DisableAdvancedSiteSearchMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.RecrawlUrisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
  field :uris, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.RecrawlUrisResponse.FailureInfo.FailureReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :corpus_type, 1,
    type:
      Google.Cloud.Discoveryengine.V1beta.RecrawlUrisResponse.FailureInfo.FailureReason.CorpusType,
    json_name: "corpusType",
    enum: true

  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Discoveryengine.V1beta.RecrawlUrisResponse.FailureInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :uri, 1, type: :string

  field :failure_reasons, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.RecrawlUrisResponse.FailureInfo.FailureReason,
    json_name: "failureReasons"
end

defmodule Google.Cloud.Discoveryengine.V1beta.RecrawlUrisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :failure_samples, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.RecrawlUrisResponse.FailureInfo,
    json_name: "failureSamples"

  field :failed_uris, 2, repeated: true, type: :string, json_name: "failedUris"
end

defmodule Google.Cloud.Discoveryengine.V1beta.RecrawlUrisMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :invalid_uris, 3, repeated: true, type: :string, json_name: "invalidUris"
  field :valid_uris_count, 4, type: :int32, json_name: "validUrisCount"
  field :success_count, 5, type: :int32, json_name: "successCount"
  field :pending_count, 6, type: :int32, json_name: "pendingCount"
  field :quota_exceeded_count, 7, type: :int32, json_name: "quotaExceededCount"
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchVerifyTargetSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchVerifyTargetSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1beta.BatchVerifyTargetSitesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1beta.FetchDomainVerificationStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.FetchDomainVerificationStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :target_sites, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.TargetSite,
    json_name: "targetSites"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Discoveryengine.V1beta.SiteSearchEngineService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.SiteSearchEngineService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetSiteSearchEngine,
      Google.Cloud.Discoveryengine.V1beta.GetSiteSearchEngineRequest,
      Google.Cloud.Discoveryengine.V1beta.SiteSearchEngine

  rpc :CreateTargetSite,
      Google.Cloud.Discoveryengine.V1beta.CreateTargetSiteRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateTargetSites,
      Google.Cloud.Discoveryengine.V1beta.BatchCreateTargetSitesRequest,
      Google.Longrunning.Operation

  rpc :GetTargetSite,
      Google.Cloud.Discoveryengine.V1beta.GetTargetSiteRequest,
      Google.Cloud.Discoveryengine.V1beta.TargetSite

  rpc :UpdateTargetSite,
      Google.Cloud.Discoveryengine.V1beta.UpdateTargetSiteRequest,
      Google.Longrunning.Operation

  rpc :DeleteTargetSite,
      Google.Cloud.Discoveryengine.V1beta.DeleteTargetSiteRequest,
      Google.Longrunning.Operation

  rpc :ListTargetSites,
      Google.Cloud.Discoveryengine.V1beta.ListTargetSitesRequest,
      Google.Cloud.Discoveryengine.V1beta.ListTargetSitesResponse

  rpc :EnableAdvancedSiteSearch,
      Google.Cloud.Discoveryengine.V1beta.EnableAdvancedSiteSearchRequest,
      Google.Longrunning.Operation

  rpc :DisableAdvancedSiteSearch,
      Google.Cloud.Discoveryengine.V1beta.DisableAdvancedSiteSearchRequest,
      Google.Longrunning.Operation

  rpc :RecrawlUris,
      Google.Cloud.Discoveryengine.V1beta.RecrawlUrisRequest,
      Google.Longrunning.Operation

  rpc :BatchVerifyTargetSites,
      Google.Cloud.Discoveryengine.V1beta.BatchVerifyTargetSitesRequest,
      Google.Longrunning.Operation

  rpc :FetchDomainVerificationStatus,
      Google.Cloud.Discoveryengine.V1beta.FetchDomainVerificationStatusRequest,
      Google.Cloud.Discoveryengine.V1beta.FetchDomainVerificationStatusResponse
end

defmodule Google.Cloud.Discoveryengine.V1beta.SiteSearchEngineService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.SiteSearchEngineService.Service
end