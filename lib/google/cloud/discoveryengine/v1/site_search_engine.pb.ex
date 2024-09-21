defmodule Google.Cloud.Discoveryengine.V1.TargetSite.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INCLUDE, 1
  field :EXCLUDE, 2
end

defmodule Google.Cloud.Discoveryengine.V1.TargetSite.IndexingStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INDEXING_STATUS_UNSPECIFIED, 0
  field :PENDING, 1
  field :FAILED, 2
  field :SUCCEEDED, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Discoveryengine.V1.SiteVerificationInfo.SiteVerificationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SITE_VERIFICATION_STATE_UNSPECIFIED, 0
  field :VERIFIED, 1
  field :UNVERIFIED, 2
  field :EXEMPTED, 3
end

defmodule Google.Cloud.Discoveryengine.V1.SiteSearchEngine do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Cloud.Discoveryengine.V1.TargetSite.FailureReason.QuotaFailure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :total_required_quota, 1, type: :int64, json_name: "totalRequiredQuota"
end

defmodule Google.Cloud.Discoveryengine.V1.TargetSite.FailureReason do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :failure, 0

  field :quota_failure, 1,
    type: Google.Cloud.Discoveryengine.V1.TargetSite.FailureReason.QuotaFailure,
    json_name: "quotaFailure",
    oneof: 0
end

defmodule Google.Cloud.Discoveryengine.V1.TargetSite do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :provided_uri_pattern, 2,
    type: :string,
    json_name: "providedUriPattern",
    deprecated: false

  field :type, 3, type: Google.Cloud.Discoveryengine.V1.TargetSite.Type, enum: true
  field :exact_match, 6, type: :bool, json_name: "exactMatch", deprecated: false

  field :generated_uri_pattern, 4,
    type: :string,
    json_name: "generatedUriPattern",
    deprecated: false

  field :root_domain_uri, 10, type: :string, json_name: "rootDomainUri", deprecated: false

  field :site_verification_info, 7,
    type: Google.Cloud.Discoveryengine.V1.SiteVerificationInfo,
    json_name: "siteVerificationInfo",
    deprecated: false

  field :indexing_status, 8,
    type: Google.Cloud.Discoveryengine.V1.TargetSite.IndexingStatus,
    json_name: "indexingStatus",
    enum: true,
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :failure_reason, 9,
    type: Google.Cloud.Discoveryengine.V1.TargetSite.FailureReason,
    json_name: "failureReason",
    deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1.SiteVerificationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :site_verification_state, 1,
    type: Google.Cloud.Discoveryengine.V1.SiteVerificationInfo.SiteVerificationState,
    json_name: "siteVerificationState",
    enum: true

  field :verify_time, 2, type: Google.Protobuf.Timestamp, json_name: "verifyTime"
end