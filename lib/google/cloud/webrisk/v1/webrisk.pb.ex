defmodule Google.Cloud.Webrisk.V1.ThreatType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :THREAT_TYPE_UNSPECIFIED, 0
  field :MALWARE, 1
  field :SOCIAL_ENGINEERING, 2
  field :UNWANTED_SOFTWARE, 3
  field :SOCIAL_ENGINEERING_EXTENDED_COVERAGE, 4
end

defmodule Google.Cloud.Webrisk.V1.CompressionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :COMPRESSION_TYPE_UNSPECIFIED, 0
  field :RAW, 1
  field :RICE, 2
end

defmodule Google.Cloud.Webrisk.V1.ComputeThreatListDiffResponse.ResponseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :RESPONSE_TYPE_UNSPECIFIED, 0
  field :DIFF, 1
  field :RESET, 2
end

defmodule Google.Cloud.Webrisk.V1.ThreatInfo.AbuseType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ABUSE_TYPE_UNSPECIFIED, 0
  field :MALWARE, 1
  field :SOCIAL_ENGINEERING, 2
  field :UNWANTED_SOFTWARE, 3
end

defmodule Google.Cloud.Webrisk.V1.ThreatInfo.Confidence.ConfidenceLevel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :CONFIDENCE_LEVEL_UNSPECIFIED, 0
  field :LOW, 1
  field :MEDIUM, 2
  field :HIGH, 3
end

defmodule Google.Cloud.Webrisk.V1.ThreatInfo.ThreatJustification.JustificationLabel do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :JUSTIFICATION_LABEL_UNSPECIFIED, 0
  field :MANUAL_VERIFICATION, 1
  field :USER_REPORT, 2
  field :AUTOMATED_REPORT, 3
end

defmodule Google.Cloud.Webrisk.V1.ThreatDiscovery.Platform do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PLATFORM_UNSPECIFIED, 0
  field :ANDROID, 1
  field :IOS, 2
  field :MACOS, 3
  field :WINDOWS, 4
end

defmodule Google.Cloud.Webrisk.V1.SubmitUriMetadata.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :RUNNING, 1
  field :SUCCEEDED, 2
  field :CANCELLED, 3
  field :FAILED, 4
  field :CLOSED, 5
end

defmodule Google.Cloud.Webrisk.V1.ComputeThreatListDiffRequest.Constraints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :max_diff_entries, 1, type: :int32, json_name: "maxDiffEntries"
  field :max_database_entries, 2, type: :int32, json_name: "maxDatabaseEntries"

  field :supported_compressions, 3,
    repeated: true,
    type: Google.Cloud.Webrisk.V1.CompressionType,
    json_name: "supportedCompressions",
    enum: true
end

defmodule Google.Cloud.Webrisk.V1.ComputeThreatListDiffRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :threat_type, 1,
    type: Google.Cloud.Webrisk.V1.ThreatType,
    json_name: "threatType",
    enum: true,
    deprecated: false

  field :version_token, 2, type: :bytes, json_name: "versionToken"

  field :constraints, 3,
    type: Google.Cloud.Webrisk.V1.ComputeThreatListDiffRequest.Constraints,
    deprecated: false
end

defmodule Google.Cloud.Webrisk.V1.ComputeThreatListDiffResponse.Checksum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :sha256, 1, type: :bytes
end

defmodule Google.Cloud.Webrisk.V1.ComputeThreatListDiffResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :response_type, 4,
    type: Google.Cloud.Webrisk.V1.ComputeThreatListDiffResponse.ResponseType,
    json_name: "responseType",
    enum: true

  field :additions, 5, type: Google.Cloud.Webrisk.V1.ThreatEntryAdditions
  field :removals, 6, type: Google.Cloud.Webrisk.V1.ThreatEntryRemovals
  field :new_version_token, 7, type: :bytes, json_name: "newVersionToken"
  field :checksum, 8, type: Google.Cloud.Webrisk.V1.ComputeThreatListDiffResponse.Checksum

  field :recommended_next_diff, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "recommendedNextDiff"
end

defmodule Google.Cloud.Webrisk.V1.SearchUrisRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :threat_types, 2,
    repeated: true,
    type: Google.Cloud.Webrisk.V1.ThreatType,
    json_name: "threatTypes",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Webrisk.V1.SearchUrisResponse.ThreatUri do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :threat_types, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1.ThreatType,
    json_name: "threatTypes",
    enum: true

  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Cloud.Webrisk.V1.SearchUrisResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :threat, 1, type: Google.Cloud.Webrisk.V1.SearchUrisResponse.ThreatUri
end

defmodule Google.Cloud.Webrisk.V1.SearchHashesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :hash_prefix, 1, type: :bytes, json_name: "hashPrefix"

  field :threat_types, 2,
    repeated: true,
    type: Google.Cloud.Webrisk.V1.ThreatType,
    json_name: "threatTypes",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Webrisk.V1.SearchHashesResponse.ThreatHash do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :threat_types, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1.ThreatType,
    json_name: "threatTypes",
    enum: true

  field :hash, 2, type: :bytes
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end

defmodule Google.Cloud.Webrisk.V1.SearchHashesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :threats, 1, repeated: true, type: Google.Cloud.Webrisk.V1.SearchHashesResponse.ThreatHash
  field :negative_expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "negativeExpireTime"
end

defmodule Google.Cloud.Webrisk.V1.ThreatEntryAdditions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :raw_hashes, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1.RawHashes,
    json_name: "rawHashes"

  field :rice_hashes, 2, type: Google.Cloud.Webrisk.V1.RiceDeltaEncoding, json_name: "riceHashes"
end

defmodule Google.Cloud.Webrisk.V1.ThreatEntryRemovals do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :raw_indices, 1, type: Google.Cloud.Webrisk.V1.RawIndices, json_name: "rawIndices"

  field :rice_indices, 2,
    type: Google.Cloud.Webrisk.V1.RiceDeltaEncoding,
    json_name: "riceIndices"
end

defmodule Google.Cloud.Webrisk.V1.RawIndices do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :indices, 1, repeated: true, type: :int32
end

defmodule Google.Cloud.Webrisk.V1.RawHashes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :prefix_size, 1, type: :int32, json_name: "prefixSize"
  field :raw_hashes, 2, type: :bytes, json_name: "rawHashes"
end

defmodule Google.Cloud.Webrisk.V1.RiceDeltaEncoding do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :first_value, 1, type: :int64, json_name: "firstValue"
  field :rice_parameter, 2, type: :int32, json_name: "riceParameter"
  field :entry_count, 3, type: :int32, json_name: "entryCount"
  field :encoded_data, 4, type: :bytes, json_name: "encodedData"
end

defmodule Google.Cloud.Webrisk.V1.Submission do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false

  field :threat_types, 2,
    repeated: true,
    type: Google.Cloud.Webrisk.V1.ThreatType,
    json_name: "threatTypes",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Webrisk.V1.ThreatInfo.Confidence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :value, 0

  field :score, 1, type: :float, oneof: 0

  field :level, 2,
    type: Google.Cloud.Webrisk.V1.ThreatInfo.Confidence.ConfidenceLevel,
    enum: true,
    oneof: 0
end

defmodule Google.Cloud.Webrisk.V1.ThreatInfo.ThreatJustification do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1.ThreatInfo.ThreatJustification.JustificationLabel,
    enum: true

  field :comments, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Webrisk.V1.ThreatInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :abuse_type, 1,
    type: Google.Cloud.Webrisk.V1.ThreatInfo.AbuseType,
    json_name: "abuseType",
    enum: true

  field :threat_confidence, 2,
    type: Google.Cloud.Webrisk.V1.ThreatInfo.Confidence,
    json_name: "threatConfidence"

  field :threat_justification, 3,
    type: Google.Cloud.Webrisk.V1.ThreatInfo.ThreatJustification,
    json_name: "threatJustification"
end

defmodule Google.Cloud.Webrisk.V1.ThreatDiscovery do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :platform, 1, type: Google.Cloud.Webrisk.V1.ThreatDiscovery.Platform, enum: true
  field :region_codes, 2, repeated: true, type: :string, json_name: "regionCodes"
end

defmodule Google.Cloud.Webrisk.V1.CreateSubmissionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :submission, 2, type: Google.Cloud.Webrisk.V1.Submission, deprecated: false
end

defmodule Google.Cloud.Webrisk.V1.SubmitUriRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :submission, 2, type: Google.Cloud.Webrisk.V1.Submission, deprecated: false
  field :threat_info, 3, type: Google.Cloud.Webrisk.V1.ThreatInfo, json_name: "threatInfo"

  field :threat_discovery, 4,
    type: Google.Cloud.Webrisk.V1.ThreatDiscovery,
    json_name: "threatDiscovery"
end

defmodule Google.Cloud.Webrisk.V1.SubmitUriMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :state, 1, type: Google.Cloud.Webrisk.V1.SubmitUriMetadata.State, enum: true
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end

defmodule Google.Cloud.Webrisk.V1.WebRiskService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.webrisk.v1.WebRiskService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ComputeThreatListDiff,
      Google.Cloud.Webrisk.V1.ComputeThreatListDiffRequest,
      Google.Cloud.Webrisk.V1.ComputeThreatListDiffResponse

  rpc :SearchUris,
      Google.Cloud.Webrisk.V1.SearchUrisRequest,
      Google.Cloud.Webrisk.V1.SearchUrisResponse

  rpc :SearchHashes,
      Google.Cloud.Webrisk.V1.SearchHashesRequest,
      Google.Cloud.Webrisk.V1.SearchHashesResponse

  rpc :CreateSubmission,
      Google.Cloud.Webrisk.V1.CreateSubmissionRequest,
      Google.Cloud.Webrisk.V1.Submission

  rpc :SubmitUri, Google.Cloud.Webrisk.V1.SubmitUriRequest, Google.Longrunning.Operation
end

defmodule Google.Cloud.Webrisk.V1.WebRiskService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Webrisk.V1.WebRiskService.Service
end
