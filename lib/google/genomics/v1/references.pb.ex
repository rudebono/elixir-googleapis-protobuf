defmodule Google.Genomics.V1.Reference do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          length: integer,
          md5checksum: String.t(),
          name: String.t(),
          source_uri: String.t(),
          source_accessions: [String.t()],
          ncbi_taxon_id: integer
        }

  defstruct [:id, :length, :md5checksum, :name, :source_uri, :source_accessions, :ncbi_taxon_id]

  field :id, 1, type: :string
  field :length, 2, type: :int64
  field :md5checksum, 3, type: :string
  field :name, 4, type: :string
  field :source_uri, 5, type: :string
  field :source_accessions, 6, repeated: true, type: :string
  field :ncbi_taxon_id, 7, type: :int32
end

defmodule Google.Genomics.V1.ReferenceSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          reference_ids: [String.t()],
          md5checksum: String.t(),
          ncbi_taxon_id: integer,
          description: String.t(),
          assembly_id: String.t(),
          source_uri: String.t(),
          source_accessions: [String.t()]
        }

  defstruct [
    :id,
    :reference_ids,
    :md5checksum,
    :ncbi_taxon_id,
    :description,
    :assembly_id,
    :source_uri,
    :source_accessions
  ]

  field :id, 1, type: :string
  field :reference_ids, 2, repeated: true, type: :string
  field :md5checksum, 3, type: :string
  field :ncbi_taxon_id, 4, type: :int32
  field :description, 5, type: :string
  field :assembly_id, 6, type: :string
  field :source_uri, 7, type: :string
  field :source_accessions, 8, repeated: true, type: :string
end

defmodule Google.Genomics.V1.SearchReferenceSetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          md5checksums: [String.t()],
          accessions: [String.t()],
          assembly_id: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:md5checksums, :accessions, :assembly_id, :page_token, :page_size]

  field :md5checksums, 1, repeated: true, type: :string
  field :accessions, 2, repeated: true, type: :string
  field :assembly_id, 3, type: :string
  field :page_token, 4, type: :string
  field :page_size, 5, type: :int32
end

defmodule Google.Genomics.V1.SearchReferenceSetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_sets: [Google.Genomics.V1.ReferenceSet.t()],
          next_page_token: String.t()
        }

  defstruct [:reference_sets, :next_page_token]

  field :reference_sets, 1, repeated: true, type: Google.Genomics.V1.ReferenceSet
  field :next_page_token, 2, type: :string
end

defmodule Google.Genomics.V1.GetReferenceSetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_set_id: String.t()
        }

  defstruct [:reference_set_id]

  field :reference_set_id, 1, type: :string
end

defmodule Google.Genomics.V1.SearchReferencesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          md5checksums: [String.t()],
          accessions: [String.t()],
          reference_set_id: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:md5checksums, :accessions, :reference_set_id, :page_token, :page_size]

  field :md5checksums, 1, repeated: true, type: :string
  field :accessions, 2, repeated: true, type: :string
  field :reference_set_id, 3, type: :string
  field :page_token, 4, type: :string
  field :page_size, 5, type: :int32
end

defmodule Google.Genomics.V1.SearchReferencesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          references: [Google.Genomics.V1.Reference.t()],
          next_page_token: String.t()
        }

  defstruct [:references, :next_page_token]

  field :references, 1, repeated: true, type: Google.Genomics.V1.Reference
  field :next_page_token, 2, type: :string
end

defmodule Google.Genomics.V1.GetReferenceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_id: String.t()
        }

  defstruct [:reference_id]

  field :reference_id, 1, type: :string
end

defmodule Google.Genomics.V1.ListBasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reference_id: String.t(),
          start: integer,
          end: integer,
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:reference_id, :start, :end, :page_token, :page_size]

  field :reference_id, 1, type: :string
  field :start, 2, type: :int64
  field :end, 3, type: :int64
  field :page_token, 4, type: :string
  field :page_size, 5, type: :int32
end

defmodule Google.Genomics.V1.ListBasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          offset: integer,
          sequence: String.t(),
          next_page_token: String.t()
        }

  defstruct [:offset, :sequence, :next_page_token]

  field :offset, 1, type: :int64
  field :sequence, 2, type: :string
  field :next_page_token, 3, type: :string
end

defmodule Google.Genomics.V1.ReferenceServiceV1.Service do
  @moduledoc false
  use GRPC.Service, name: "google.genomics.v1.ReferenceServiceV1"

  rpc :SearchReferenceSets,
      Google.Genomics.V1.SearchReferenceSetsRequest,
      Google.Genomics.V1.SearchReferenceSetsResponse

  rpc :GetReferenceSet, Google.Genomics.V1.GetReferenceSetRequest, Google.Genomics.V1.ReferenceSet

  rpc :SearchReferences,
      Google.Genomics.V1.SearchReferencesRequest,
      Google.Genomics.V1.SearchReferencesResponse

  rpc :GetReference, Google.Genomics.V1.GetReferenceRequest, Google.Genomics.V1.Reference

  rpc :ListBases, Google.Genomics.V1.ListBasesRequest, Google.Genomics.V1.ListBasesResponse
end

defmodule Google.Genomics.V1.ReferenceServiceV1.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Genomics.V1.ReferenceServiceV1.Service
end
