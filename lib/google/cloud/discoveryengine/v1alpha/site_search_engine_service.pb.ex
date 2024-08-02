defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo.FailureReason.CorpusType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CORPUS_TYPE_UNSPECIFIED, 0
  field :DESKTOP, 1
  field :MOBILE, 2
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetSiteSearchEngineRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :target_site, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.TargetSite,
    json_name: "targetSite",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.BatchCreateTargetSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.CreateTargetSiteRequest,
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_site, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.TargetSite,
    json_name: "targetSite",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteTargetSiteRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListTargetSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListTargetSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_sites, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.TargetSite,
    json_name: "targetSites"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.BatchCreateTargetSiteMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.BatchCreateTargetSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_sites, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.TargetSite,
    json_name: "targetSites"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EnableAdvancedSiteSearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EnableAdvancedSiteSearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.EnableAdvancedSiteSearchMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DisableAdvancedSiteSearchRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DisableAdvancedSiteSearchResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DisableAdvancedSiteSearchMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
  field :uris, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo.FailureReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :corpus_type, 1,
    type:
      Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo.FailureReason.CorpusType,
    json_name: "corpusType",
    enum: true

  field :error_message, 2, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :uri, 1, type: :string

  field :failure_reasons, 2,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo.FailureReason,
    json_name: "failureReasons"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :failure_samples, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisResponse.FailureInfo,
    json_name: "failureSamples"

  field :failed_uris, 2, repeated: true, type: :string, json_name: "failedUris"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisMetadata do
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

defmodule Google.Cloud.Discoveryengine.V1alpha.BatchVerifyTargetSitesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.BatchVerifyTargetSitesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.BatchVerifyTargetSitesMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FetchDomainVerificationStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.FetchDomainVerificationStatusResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :target_sites, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.TargetSite,
    json_name: "targetSites"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SetUriPatternDocumentDataRequest.DocumentDataMapEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SetUriPatternDocumentDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false

  field :document_data_map, 2,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.SetUriPatternDocumentDataRequest.DocumentDataMapEntry,
    json_name: "documentDataMap",
    map: true

  field :empty_document_data_map, 4, type: :bool, json_name: "emptyDocumentDataMap"
  field :schema, 3, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SetUriPatternDocumentDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SetUriPatternDocumentDataMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 2, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetUriPatternDocumentDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :site_search_engine, 1, type: :string, json_name: "siteSearchEngine", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetUriPatternDocumentDataResponse.DocumentDataMapEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Discoveryengine.V1alpha.GetUriPatternDocumentDataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :document_data_map, 1,
    repeated: true,
    type:
      Google.Cloud.Discoveryengine.V1alpha.GetUriPatternDocumentDataResponse.DocumentDataMapEntry,
    json_name: "documentDataMap",
    map: true
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SiteSearchEngineService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.SiteSearchEngineService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetSiteSearchEngine,
      Google.Cloud.Discoveryengine.V1alpha.GetSiteSearchEngineRequest,
      Google.Cloud.Discoveryengine.V1alpha.SiteSearchEngine

  rpc :CreateTargetSite,
      Google.Cloud.Discoveryengine.V1alpha.CreateTargetSiteRequest,
      Google.Longrunning.Operation

  rpc :BatchCreateTargetSites,
      Google.Cloud.Discoveryengine.V1alpha.BatchCreateTargetSitesRequest,
      Google.Longrunning.Operation

  rpc :GetTargetSite,
      Google.Cloud.Discoveryengine.V1alpha.GetTargetSiteRequest,
      Google.Cloud.Discoveryengine.V1alpha.TargetSite

  rpc :UpdateTargetSite,
      Google.Cloud.Discoveryengine.V1alpha.UpdateTargetSiteRequest,
      Google.Longrunning.Operation

  rpc :DeleteTargetSite,
      Google.Cloud.Discoveryengine.V1alpha.DeleteTargetSiteRequest,
      Google.Longrunning.Operation

  rpc :ListTargetSites,
      Google.Cloud.Discoveryengine.V1alpha.ListTargetSitesRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListTargetSitesResponse

  rpc :EnableAdvancedSiteSearch,
      Google.Cloud.Discoveryengine.V1alpha.EnableAdvancedSiteSearchRequest,
      Google.Longrunning.Operation

  rpc :DisableAdvancedSiteSearch,
      Google.Cloud.Discoveryengine.V1alpha.DisableAdvancedSiteSearchRequest,
      Google.Longrunning.Operation

  rpc :RecrawlUris,
      Google.Cloud.Discoveryengine.V1alpha.RecrawlUrisRequest,
      Google.Longrunning.Operation

  rpc :BatchVerifyTargetSites,
      Google.Cloud.Discoveryengine.V1alpha.BatchVerifyTargetSitesRequest,
      Google.Longrunning.Operation

  rpc :FetchDomainVerificationStatus,
      Google.Cloud.Discoveryengine.V1alpha.FetchDomainVerificationStatusRequest,
      Google.Cloud.Discoveryengine.V1alpha.FetchDomainVerificationStatusResponse

  rpc :SetUriPatternDocumentData,
      Google.Cloud.Discoveryengine.V1alpha.SetUriPatternDocumentDataRequest,
      Google.Longrunning.Operation

  rpc :GetUriPatternDocumentData,
      Google.Cloud.Discoveryengine.V1alpha.GetUriPatternDocumentDataRequest,
      Google.Cloud.Discoveryengine.V1alpha.GetUriPatternDocumentDataResponse
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SiteSearchEngineService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.SiteSearchEngineService.Service
end