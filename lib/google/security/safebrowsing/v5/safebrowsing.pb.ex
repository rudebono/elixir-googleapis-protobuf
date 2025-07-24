defmodule Google.Security.Safebrowsing.V5.ThreatType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :THREAT_TYPE_UNSPECIFIED, 0
  field :MALWARE, 1
  field :SOCIAL_ENGINEERING, 2
  field :UNWANTED_SOFTWARE, 3
  field :POTENTIALLY_HARMFUL_APPLICATION, 4
end

defmodule Google.Security.Safebrowsing.V5.LikelySafeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LIKELY_SAFE_TYPE_UNSPECIFIED, 0
  field :GENERAL_BROWSING, 1
  field :CSD, 2
  field :DOWNLOAD, 3
end

defmodule Google.Security.Safebrowsing.V5.ThreatAttribute do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :THREAT_ATTRIBUTE_UNSPECIFIED, 0
  field :CANARY, 1
  field :FRAME_ONLY, 2
end

defmodule Google.Security.Safebrowsing.V5.HashListMetadata.HashLength do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HASH_LENGTH_UNSPECIFIED, 0
  field :FOUR_BYTES, 2
  field :EIGHT_BYTES, 3
  field :SIXTEEN_BYTES, 4
  field :THIRTY_TWO_BYTES, 5
end

defmodule Google.Security.Safebrowsing.V5.SearchHashesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hash_prefixes, 1,
    repeated: true,
    type: :bytes,
    json_name: "hashPrefixes",
    deprecated: false
end

defmodule Google.Security.Safebrowsing.V5.SearchHashesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :full_hashes, 1,
    repeated: true,
    type: Google.Security.Safebrowsing.V5.FullHash,
    json_name: "fullHashes",
    deprecated: false

  field :cache_duration, 2, type: Google.Protobuf.Duration, json_name: "cacheDuration"
end

defmodule Google.Security.Safebrowsing.V5.FullHash.FullHashDetail do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :threat_type, 1,
    type: Google.Security.Safebrowsing.V5.ThreatType,
    json_name: "threatType",
    enum: true

  field :attributes, 2,
    repeated: true,
    type: Google.Security.Safebrowsing.V5.ThreatAttribute,
    enum: true,
    deprecated: false
end

defmodule Google.Security.Safebrowsing.V5.FullHash do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :full_hash, 1, type: :bytes, json_name: "fullHash"

  field :full_hash_details, 2,
    repeated: true,
    type: Google.Security.Safebrowsing.V5.FullHash.FullHashDetail,
    json_name: "fullHashDetails",
    deprecated: false
end

defmodule Google.Security.Safebrowsing.V5.GetHashListRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :version, 2, type: :bytes

  field :size_constraints, 4,
    type: Google.Security.Safebrowsing.V5.SizeConstraints,
    json_name: "sizeConstraints"
end

defmodule Google.Security.Safebrowsing.V5.SizeConstraints do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :max_update_entries, 1, type: :int32, json_name: "maxUpdateEntries"
  field :max_database_entries, 2, type: :int32, json_name: "maxDatabaseEntries"
end

defmodule Google.Security.Safebrowsing.V5.RiceDeltaEncoded32Bit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :first_value, 1, type: :uint32, json_name: "firstValue"
  field :rice_parameter, 2, type: :int32, json_name: "riceParameter"
  field :entries_count, 3, type: :int32, json_name: "entriesCount"
  field :encoded_data, 4, type: :bytes, json_name: "encodedData"
end

defmodule Google.Security.Safebrowsing.V5.RiceDeltaEncoded64Bit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :first_value, 1, type: :uint64, json_name: "firstValue"
  field :rice_parameter, 2, type: :int32, json_name: "riceParameter"
  field :entries_count, 3, type: :int32, json_name: "entriesCount"
  field :encoded_data, 4, type: :bytes, json_name: "encodedData"
end

defmodule Google.Security.Safebrowsing.V5.RiceDeltaEncoded128Bit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :first_value_hi, 1, type: :uint64, json_name: "firstValueHi"
  field :first_value_lo, 2, type: :fixed64, json_name: "firstValueLo"
  field :rice_parameter, 3, type: :int32, json_name: "riceParameter"
  field :entries_count, 4, type: :int32, json_name: "entriesCount"
  field :encoded_data, 5, type: :bytes, json_name: "encodedData"
end

defmodule Google.Security.Safebrowsing.V5.RiceDeltaEncoded256Bit do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :first_value_first_part, 1, type: :uint64, json_name: "firstValueFirstPart"
  field :first_value_second_part, 2, type: :fixed64, json_name: "firstValueSecondPart"
  field :first_value_third_part, 3, type: :fixed64, json_name: "firstValueThirdPart"
  field :first_value_fourth_part, 4, type: :fixed64, json_name: "firstValueFourthPart"
  field :rice_parameter, 5, type: :int32, json_name: "riceParameter"
  field :entries_count, 6, type: :int32, json_name: "entriesCount"
  field :encoded_data, 7, type: :bytes, json_name: "encodedData"
end

defmodule Google.Security.Safebrowsing.V5.HashListMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :threat_types, 1,
    repeated: true,
    type: Google.Security.Safebrowsing.V5.ThreatType,
    json_name: "threatTypes",
    enum: true,
    deprecated: false

  field :likely_safe_types, 2,
    repeated: true,
    type: Google.Security.Safebrowsing.V5.LikelySafeType,
    json_name: "likelySafeTypes",
    enum: true,
    deprecated: false

  field :description, 4, type: :string

  field :hash_length, 6,
    type: Google.Security.Safebrowsing.V5.HashListMetadata.HashLength,
    json_name: "hashLength",
    enum: true
end

defmodule Google.Security.Safebrowsing.V5.HashList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :compressed_additions, 0

  field :additions_four_bytes, 4,
    type: Google.Security.Safebrowsing.V5.RiceDeltaEncoded32Bit,
    json_name: "additionsFourBytes",
    oneof: 0

  field :additions_eight_bytes, 9,
    type: Google.Security.Safebrowsing.V5.RiceDeltaEncoded64Bit,
    json_name: "additionsEightBytes",
    oneof: 0

  field :additions_sixteen_bytes, 10,
    type: Google.Security.Safebrowsing.V5.RiceDeltaEncoded128Bit,
    json_name: "additionsSixteenBytes",
    oneof: 0

  field :additions_thirty_two_bytes, 11,
    type: Google.Security.Safebrowsing.V5.RiceDeltaEncoded256Bit,
    json_name: "additionsThirtyTwoBytes",
    oneof: 0

  field :name, 1, type: :string
  field :version, 2, type: :bytes
  field :partial_update, 3, type: :bool, json_name: "partialUpdate"

  field :compressed_removals, 5,
    type: Google.Security.Safebrowsing.V5.RiceDeltaEncoded32Bit,
    json_name: "compressedRemovals"

  field :minimum_wait_duration, 6,
    type: Google.Protobuf.Duration,
    json_name: "minimumWaitDuration"

  field :sha256_checksum, 7, type: :bytes, json_name: "sha256Checksum"
  field :metadata, 8, type: Google.Security.Safebrowsing.V5.HashListMetadata
end

defmodule Google.Security.Safebrowsing.V5.BatchGetHashListsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :names, 1, repeated: true, type: :string, deprecated: false
  field :version, 2, repeated: true, type: :bytes

  field :size_constraints, 4,
    type: Google.Security.Safebrowsing.V5.SizeConstraints,
    json_name: "sizeConstraints"
end

defmodule Google.Security.Safebrowsing.V5.BatchGetHashListsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hash_lists, 1,
    repeated: true,
    type: Google.Security.Safebrowsing.V5.HashList,
    json_name: "hashLists"
end

defmodule Google.Security.Safebrowsing.V5.ListHashListsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Security.Safebrowsing.V5.ListHashListsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :hash_lists, 1,
    repeated: true,
    type: Google.Security.Safebrowsing.V5.HashList,
    json_name: "hashLists"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Security.Safebrowsing.V5.SafeBrowsing.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.security.safebrowsing.v5.SafeBrowsing",
    protoc_gen_elixir_version: "0.15.0"

  rpc :SearchHashes,
      Google.Security.Safebrowsing.V5.SearchHashesRequest,
      Google.Security.Safebrowsing.V5.SearchHashesResponse

  rpc :GetHashList,
      Google.Security.Safebrowsing.V5.GetHashListRequest,
      Google.Security.Safebrowsing.V5.HashList

  rpc :ListHashLists,
      Google.Security.Safebrowsing.V5.ListHashListsRequest,
      Google.Security.Safebrowsing.V5.ListHashListsResponse

  rpc :BatchGetHashLists,
      Google.Security.Safebrowsing.V5.BatchGetHashListsRequest,
      Google.Security.Safebrowsing.V5.BatchGetHashListsResponse
end

defmodule Google.Security.Safebrowsing.V5.SafeBrowsing.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Security.Safebrowsing.V5.SafeBrowsing.Service
end
