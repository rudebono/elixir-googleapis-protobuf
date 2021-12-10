defmodule Google.Cloud.Webrisk.V1beta1.ThreatType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer | :THREAT_TYPE_UNSPECIFIED | :MALWARE | :SOCIAL_ENGINEERING | :UNWANTED_SOFTWARE

  field :THREAT_TYPE_UNSPECIFIED, 0
  field :MALWARE, 1
  field :SOCIAL_ENGINEERING, 2
  field :UNWANTED_SOFTWARE, 3
end
defmodule Google.Cloud.Webrisk.V1beta1.CompressionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :COMPRESSION_TYPE_UNSPECIFIED | :RAW | :RICE

  field :COMPRESSION_TYPE_UNSPECIFIED, 0
  field :RAW, 1
  field :RICE, 2
end
defmodule Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse.ResponseType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :RESPONSE_TYPE_UNSPECIFIED | :DIFF | :RESET

  field :RESPONSE_TYPE_UNSPECIFIED, 0
  field :DIFF, 1
  field :RESET, 2
end
defmodule Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffRequest.Constraints do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          max_diff_entries: integer,
          max_database_entries: integer,
          supported_compressions: [Google.Cloud.Webrisk.V1beta1.CompressionType.t()]
        }

  defstruct max_diff_entries: 0,
            max_database_entries: 0,
            supported_compressions: []

  field :max_diff_entries, 1, type: :int32, json_name: "maxDiffEntries"
  field :max_database_entries, 2, type: :int32, json_name: "maxDatabaseEntries"

  field :supported_compressions, 3,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.CompressionType,
    json_name: "supportedCompressions",
    enum: true
end
defmodule Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threat_type: Google.Cloud.Webrisk.V1beta1.ThreatType.t(),
          version_token: binary,
          constraints:
            Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffRequest.Constraints.t() | nil
        }

  defstruct threat_type: :THREAT_TYPE_UNSPECIFIED,
            version_token: "",
            constraints: nil

  field :threat_type, 1,
    type: Google.Cloud.Webrisk.V1beta1.ThreatType,
    json_name: "threatType",
    enum: true,
    deprecated: false

  field :version_token, 2, type: :bytes, json_name: "versionToken"

  field :constraints, 3,
    type: Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffRequest.Constraints,
    deprecated: false
end
defmodule Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse.Checksum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sha256: binary
        }

  defstruct sha256: ""

  field :sha256, 1, type: :bytes
end
defmodule Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          response_type:
            Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse.ResponseType.t(),
          additions: Google.Cloud.Webrisk.V1beta1.ThreatEntryAdditions.t() | nil,
          removals: Google.Cloud.Webrisk.V1beta1.ThreatEntryRemovals.t() | nil,
          new_version_token: binary,
          checksum: Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse.Checksum.t() | nil,
          recommended_next_diff: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct response_type: :RESPONSE_TYPE_UNSPECIFIED,
            additions: nil,
            removals: nil,
            new_version_token: "",
            checksum: nil,
            recommended_next_diff: nil

  field :response_type, 4,
    type: Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse.ResponseType,
    json_name: "responseType",
    enum: true

  field :additions, 5, type: Google.Cloud.Webrisk.V1beta1.ThreatEntryAdditions
  field :removals, 6, type: Google.Cloud.Webrisk.V1beta1.ThreatEntryRemovals
  field :new_version_token, 7, type: :bytes, json_name: "newVersionToken"
  field :checksum, 8, type: Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse.Checksum

  field :recommended_next_diff, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "recommendedNextDiff"
end
defmodule Google.Cloud.Webrisk.V1beta1.SearchUrisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          threat_types: [Google.Cloud.Webrisk.V1beta1.ThreatType.t()]
        }

  defstruct uri: "",
            threat_types: []

  field :uri, 1, type: :string, deprecated: false

  field :threat_types, 2,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.ThreatType,
    json_name: "threatTypes",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Webrisk.V1beta1.SearchUrisResponse.ThreatUri do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threat_types: [Google.Cloud.Webrisk.V1beta1.ThreatType.t()],
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct threat_types: [],
            expire_time: nil

  field :threat_types, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.ThreatType,
    json_name: "threatTypes",
    enum: true

  field :expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end
defmodule Google.Cloud.Webrisk.V1beta1.SearchUrisResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threat: Google.Cloud.Webrisk.V1beta1.SearchUrisResponse.ThreatUri.t() | nil
        }

  defstruct threat: nil

  field :threat, 1, type: Google.Cloud.Webrisk.V1beta1.SearchUrisResponse.ThreatUri
end
defmodule Google.Cloud.Webrisk.V1beta1.SearchHashesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hash_prefix: binary,
          threat_types: [Google.Cloud.Webrisk.V1beta1.ThreatType.t()]
        }

  defstruct hash_prefix: "",
            threat_types: []

  field :hash_prefix, 1, type: :bytes, json_name: "hashPrefix"

  field :threat_types, 2,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.ThreatType,
    json_name: "threatTypes",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Webrisk.V1beta1.SearchHashesResponse.ThreatHash do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threat_types: [Google.Cloud.Webrisk.V1beta1.ThreatType.t()],
          hash: binary,
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct threat_types: [],
            hash: "",
            expire_time: nil

  field :threat_types, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.ThreatType,
    json_name: "threatTypes",
    enum: true

  field :hash, 2, type: :bytes
  field :expire_time, 3, type: Google.Protobuf.Timestamp, json_name: "expireTime"
end
defmodule Google.Cloud.Webrisk.V1beta1.SearchHashesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threats: [Google.Cloud.Webrisk.V1beta1.SearchHashesResponse.ThreatHash.t()],
          negative_expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct threats: [],
            negative_expire_time: nil

  field :threats, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.SearchHashesResponse.ThreatHash

  field :negative_expire_time, 2, type: Google.Protobuf.Timestamp, json_name: "negativeExpireTime"
end
defmodule Google.Cloud.Webrisk.V1beta1.ThreatEntryAdditions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          raw_hashes: [Google.Cloud.Webrisk.V1beta1.RawHashes.t()],
          rice_hashes: Google.Cloud.Webrisk.V1beta1.RiceDeltaEncoding.t() | nil
        }

  defstruct raw_hashes: [],
            rice_hashes: nil

  field :raw_hashes, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.RawHashes,
    json_name: "rawHashes"

  field :rice_hashes, 2,
    type: Google.Cloud.Webrisk.V1beta1.RiceDeltaEncoding,
    json_name: "riceHashes"
end
defmodule Google.Cloud.Webrisk.V1beta1.ThreatEntryRemovals do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          raw_indices: Google.Cloud.Webrisk.V1beta1.RawIndices.t() | nil,
          rice_indices: Google.Cloud.Webrisk.V1beta1.RiceDeltaEncoding.t() | nil
        }

  defstruct raw_indices: nil,
            rice_indices: nil

  field :raw_indices, 1, type: Google.Cloud.Webrisk.V1beta1.RawIndices, json_name: "rawIndices"

  field :rice_indices, 2,
    type: Google.Cloud.Webrisk.V1beta1.RiceDeltaEncoding,
    json_name: "riceIndices"
end
defmodule Google.Cloud.Webrisk.V1beta1.RawIndices do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          indices: [integer]
        }

  defstruct indices: []

  field :indices, 1, repeated: true, type: :int32
end
defmodule Google.Cloud.Webrisk.V1beta1.RawHashes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          prefix_size: integer,
          raw_hashes: binary
        }

  defstruct prefix_size: 0,
            raw_hashes: ""

  field :prefix_size, 1, type: :int32, json_name: "prefixSize"
  field :raw_hashes, 2, type: :bytes, json_name: "rawHashes"
end
defmodule Google.Cloud.Webrisk.V1beta1.RiceDeltaEncoding do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          first_value: integer,
          rice_parameter: integer,
          entry_count: integer,
          encoded_data: binary
        }

  defstruct first_value: 0,
            rice_parameter: 0,
            entry_count: 0,
            encoded_data: ""

  field :first_value, 1, type: :int64, json_name: "firstValue"
  field :rice_parameter, 2, type: :int32, json_name: "riceParameter"
  field :entry_count, 3, type: :int32, json_name: "entryCount"
  field :encoded_data, 4, type: :bytes, json_name: "encodedData"
end
defmodule Google.Cloud.Webrisk.V1beta1.WebRiskServiceV1Beta1.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.webrisk.v1beta1.WebRiskServiceV1Beta1"

  rpc :ComputeThreatListDiff,
      Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffRequest,
      Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse

  rpc :SearchUris,
      Google.Cloud.Webrisk.V1beta1.SearchUrisRequest,
      Google.Cloud.Webrisk.V1beta1.SearchUrisResponse

  rpc :SearchHashes,
      Google.Cloud.Webrisk.V1beta1.SearchHashesRequest,
      Google.Cloud.Webrisk.V1beta1.SearchHashesResponse
end

defmodule Google.Cloud.Webrisk.V1beta1.WebRiskServiceV1Beta1.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Webrisk.V1beta1.WebRiskServiceV1Beta1.Service
end
