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
          supported_compressions: [[Google.Cloud.Webrisk.V1beta1.CompressionType.t()]]
        }

  defstruct [:max_diff_entries, :max_database_entries, :supported_compressions]

  field :max_diff_entries, 1, type: :int32
  field :max_database_entries, 2, type: :int32

  field :supported_compressions, 3,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.CompressionType,
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

  defstruct [:threat_type, :version_token, :constraints]

  field :threat_type, 1, type: Google.Cloud.Webrisk.V1beta1.ThreatType, enum: true
  field :version_token, 2, type: :bytes

  field :constraints, 3,
    type: Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffRequest.Constraints
end

defmodule Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse.Checksum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sha256: binary
        }

  defstruct [:sha256]

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

  defstruct [
    :response_type,
    :additions,
    :removals,
    :new_version_token,
    :checksum,
    :recommended_next_diff
  ]

  field :response_type, 4,
    type: Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse.ResponseType,
    enum: true

  field :additions, 5, type: Google.Cloud.Webrisk.V1beta1.ThreatEntryAdditions
  field :removals, 6, type: Google.Cloud.Webrisk.V1beta1.ThreatEntryRemovals
  field :new_version_token, 7, type: :bytes
  field :checksum, 8, type: Google.Cloud.Webrisk.V1beta1.ComputeThreatListDiffResponse.Checksum
  field :recommended_next_diff, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Webrisk.V1beta1.SearchUrisRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          threat_types: [[Google.Cloud.Webrisk.V1beta1.ThreatType.t()]]
        }

  defstruct [:uri, :threat_types]

  field :uri, 1, type: :string

  field :threat_types, 2,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.ThreatType,
    enum: true
end

defmodule Google.Cloud.Webrisk.V1beta1.SearchUrisResponse.ThreatUri do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threat_types: [[Google.Cloud.Webrisk.V1beta1.ThreatType.t()]],
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:threat_types, :expire_time]

  field :threat_types, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.ThreatType,
    enum: true

  field :expire_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Webrisk.V1beta1.SearchUrisResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threat: Google.Cloud.Webrisk.V1beta1.SearchUrisResponse.ThreatUri.t() | nil
        }

  defstruct [:threat]

  field :threat, 1, type: Google.Cloud.Webrisk.V1beta1.SearchUrisResponse.ThreatUri
end

defmodule Google.Cloud.Webrisk.V1beta1.SearchHashesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          hash_prefix: binary,
          threat_types: [[Google.Cloud.Webrisk.V1beta1.ThreatType.t()]]
        }

  defstruct [:hash_prefix, :threat_types]

  field :hash_prefix, 1, type: :bytes

  field :threat_types, 2,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.ThreatType,
    enum: true
end

defmodule Google.Cloud.Webrisk.V1beta1.SearchHashesResponse.ThreatHash do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threat_types: [[Google.Cloud.Webrisk.V1beta1.ThreatType.t()]],
          hash: binary,
          expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:threat_types, :hash, :expire_time]

  field :threat_types, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.ThreatType,
    enum: true

  field :hash, 2, type: :bytes
  field :expire_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Webrisk.V1beta1.SearchHashesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          threats: [Google.Cloud.Webrisk.V1beta1.SearchHashesResponse.ThreatHash.t()],
          negative_expire_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:threats, :negative_expire_time]

  field :threats, 1,
    repeated: true,
    type: Google.Cloud.Webrisk.V1beta1.SearchHashesResponse.ThreatHash

  field :negative_expire_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Webrisk.V1beta1.ThreatEntryAdditions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          raw_hashes: [Google.Cloud.Webrisk.V1beta1.RawHashes.t()],
          rice_hashes: Google.Cloud.Webrisk.V1beta1.RiceDeltaEncoding.t() | nil
        }

  defstruct [:raw_hashes, :rice_hashes]

  field :raw_hashes, 1, repeated: true, type: Google.Cloud.Webrisk.V1beta1.RawHashes
  field :rice_hashes, 2, type: Google.Cloud.Webrisk.V1beta1.RiceDeltaEncoding
end

defmodule Google.Cloud.Webrisk.V1beta1.ThreatEntryRemovals do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          raw_indices: Google.Cloud.Webrisk.V1beta1.RawIndices.t() | nil,
          rice_indices: Google.Cloud.Webrisk.V1beta1.RiceDeltaEncoding.t() | nil
        }

  defstruct [:raw_indices, :rice_indices]

  field :raw_indices, 1, type: Google.Cloud.Webrisk.V1beta1.RawIndices
  field :rice_indices, 2, type: Google.Cloud.Webrisk.V1beta1.RiceDeltaEncoding
end

defmodule Google.Cloud.Webrisk.V1beta1.RawIndices do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          indices: [integer]
        }

  defstruct [:indices]

  field :indices, 1, repeated: true, type: :int32
end

defmodule Google.Cloud.Webrisk.V1beta1.RawHashes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          prefix_size: integer,
          raw_hashes: binary
        }

  defstruct [:prefix_size, :raw_hashes]

  field :prefix_size, 1, type: :int32
  field :raw_hashes, 2, type: :bytes
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

  defstruct [:first_value, :rice_parameter, :entry_count, :encoded_data]

  field :first_value, 1, type: :int64
  field :rice_parameter, 2, type: :int32
  field :entry_count, 3, type: :int32
  field :encoded_data, 4, type: :bytes
end
