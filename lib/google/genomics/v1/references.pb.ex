defmodule Google.Genomics.V1.Reference do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string
  field :length, 2, type: :int64
  field :md5checksum, 3, type: :string
  field :name, 4, type: :string
  field :source_uri, 5, type: :string, json_name: "sourceUri"
  field :source_accessions, 6, repeated: true, type: :string, json_name: "sourceAccessions"
  field :ncbi_taxon_id, 7, type: :int32, json_name: "ncbiTaxonId"
end

defmodule Google.Genomics.V1.ReferenceSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 1, type: :string
  field :reference_ids, 2, repeated: true, type: :string, json_name: "referenceIds"
  field :md5checksum, 3, type: :string
  field :ncbi_taxon_id, 4, type: :int32, json_name: "ncbiTaxonId"
  field :description, 5, type: :string
  field :assembly_id, 6, type: :string, json_name: "assemblyId"
  field :source_uri, 7, type: :string, json_name: "sourceUri"
  field :source_accessions, 8, repeated: true, type: :string, json_name: "sourceAccessions"
end

defmodule Google.Genomics.V1.SearchReferenceSetsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :md5checksums, 1, repeated: true, type: :string
  field :accessions, 2, repeated: true, type: :string
  field :assembly_id, 3, type: :string, json_name: "assemblyId"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :page_size, 5, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.SearchReferenceSetsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reference_sets, 1,
    repeated: true,
    type: Google.Genomics.V1.ReferenceSet,
    json_name: "referenceSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.GetReferenceSetRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reference_set_id, 1, type: :string, json_name: "referenceSetId"
end

defmodule Google.Genomics.V1.SearchReferencesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :md5checksums, 1, repeated: true, type: :string
  field :accessions, 2, repeated: true, type: :string
  field :reference_set_id, 3, type: :string, json_name: "referenceSetId"
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :page_size, 5, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.SearchReferencesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :references, 1, repeated: true, type: Google.Genomics.V1.Reference
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.GetReferenceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reference_id, 1, type: :string, json_name: "referenceId"
end

defmodule Google.Genomics.V1.ListBasesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reference_id, 1, type: :string, json_name: "referenceId"
  field :start, 2, type: :int64
  field :end, 3, type: :int64
  field :page_token, 4, type: :string, json_name: "pageToken"
  field :page_size, 5, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.ListBasesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :offset, 1, type: :int64
  field :sequence, 2, type: :string
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.ReferenceServiceV1.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.genomics.v1.ReferenceServiceV1",
    protoc_gen_elixir_version: "0.11.0"

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