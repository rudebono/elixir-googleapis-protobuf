defmodule Google.Cloud.Discoveryengine.V1.RecrawlUrisResponse.FailureInfo.FailureReason.CorpusType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CORPUS_TYPE_UNSPECIFIED, 0
  field :DESKTOP, 1
  field :MOBILE, 2
end

defmodule Google.Cloud.Discoveryengine.V1.GetSiteSearchEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.CreateTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :target_site, 2,
    type: Google.Cloud.Discoveryengine.V1.TargetSite,
    json_name: "targetSite",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.CreateTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.BatchCreateTargetSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.CreateTargetSiteRequest,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.GetTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_site, 1,
    type: Google.Cloud.Discoveryengine.V1.TargetSite,
    json_name: "targetSite",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.UpdateTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.DeleteTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.ListTargetSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.ListTargetSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_sites, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.TargetSite,
    json_name: "targetSites"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Discoveryengine.V1.BatchCreateTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.BatchCreateTargetSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_sites, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.TargetSite,
    json_name: "targetSites"
end

defmodule Google.Cloud.Discoveryengine.V1.EnableAdvancedSiteSearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.EnableAdvancedSiteSearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1.EnableAdvancedSiteSearchMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.DisableAdvancedSiteSearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.DisableAdvancedSiteSearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1.DisableAdvancedSiteSearchMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.RecrawlUrisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
  field :uris, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.RecrawlUrisResponse.FailureInfo.FailureReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :corpus_type, 1,
    type:
      Google.Cloud.Discoveryengine.V1.RecrawlUrisResponse.FailureInfo.FailureReason.CorpusType,
    json_name: "corpusType",
    enum: true

  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Discoveryengine.V1.RecrawlUrisResponse.FailureInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string

  field :failure_reasons, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.RecrawlUrisResponse.FailureInfo.FailureReason,
    json_name: "failureReasons"
end

defmodule Google.Cloud.Discoveryengine.V1.RecrawlUrisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :failure_samples, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.RecrawlUrisResponse.FailureInfo,
    json_name: "failureSamples"

  field :failed_uris, 2, repeated: true, type: :string, json_name: "failedUris"
end

defmodule Google.Cloud.Discoveryengine.V1.RecrawlUrisMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :invalid_uris, 3, repeated: true, type: :string, json_name: "invalidUris"
  field :valid_uris_count, 4, type: :int32, json_name: "validUrisCount"
  field :success_count, 5, type: :int32, json_name: "successCount"
  field :pending_count, 6, type: :int32, json_name: "pendingCount"
  field :quota_exceeded_count, 7, type: :int32, json_name: "quotaExceededCount"
end

defmodule Google.Cloud.Discoveryengine.V1.BatchVerifyTargetSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.BatchVerifyTargetSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1.BatchVerifyTargetSitesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1.FetchDomainVerificationStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1.FetchDomainVerificationStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_sites, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1.TargetSite,
    json_name: "targetSites"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Discoveryengine.V1.SiteSearchEngineService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1.SiteSearchEngineService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetSiteSearchEngine,
      Google.Cloud.Discoveryengine.V1.GetSiteSearchEngineRequest,
      Google.Cloud.Discoveryengine.V1.SiteSearchEngine

  rpc :CreateTargetSite,
      Google.Cloud.Discoveryengine.V1.CreateTargetSiteRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateTargetSites,
      Google.Cloud.Discoveryengine.V1.BatchCreateTargetSitesRequest,
      Google.Longrunning.Operation

  rpc :GetTargetSite,
      Google.Cloud.Discoveryengine.V1.GetTargetSiteRequest,
      Google.Cloud.Discoveryengine.V1.TargetSite

  rpc :UpdateTargetSite,
      Google.Cloud.Discoveryengine.V1.UpdateTargetSiteRequest,
      Google.Longrunning.Operation

  rpc :DeleteTargetSite,
      Google.Cloud.Discoveryengine.V1.DeleteTargetSiteRequest,
      Google.Longrunning.Operation

  rpc :ListTargetSites,
      Google.Cloud.Discoveryengine.V1.ListTargetSitesRequest,
      Google.Cloud.Discoveryengine.V1.ListTargetSitesResponse

  rpc :EnableAdvancedSiteSearch,
      Google.Cloud.Discoveryengine.V1.EnableAdvancedSiteSearchRequest,
      Google.Longrunning.Operation

  rpc :DisableAdvancedSiteSearch,
      Google.Cloud.Discoveryengine.V1.DisableAdvancedSiteSearchRequest,
      Google.Longrunning.Operation

  rpc :RecrawlUris,
      Google.Cloud.Discoveryengine.V1.RecrawlUrisRequest,
      Google.Longrunning.Operation

  rpc :BatchVerifyTargetSites,
      Google.Cloud.Discoveryengine.V1.BatchVerifyTargetSitesRequest,
      Google.Longrunning.Operation

  rpc :FetchDomainVerificationStatus,
      Google.Cloud.Discoveryengine.V1.FetchDomainVerificationStatusRequest,
      Google.Cloud.Discoveryengine.V1.FetchDomainVerificationStatusResponse
end

defmodule Google.Cloud.Discoveryengine.V1.SiteSearchEngineService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1.SiteSearchEngineService.Service
end