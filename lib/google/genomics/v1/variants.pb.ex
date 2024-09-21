defmodule Google.Genomics.V1.InfoMergeOperation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INFO_MERGE_OPERATION_UNSPECIFIED, 0
  field :IGNORE_NEW, 1
  field :MOVE_TO_CALLS, 2
end

defmodule Google.Genomics.V1.VariantSetMetadata.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :INTEGER, 1
  field :FLOAT, 2
  field :FLAG, 3
  field :CHARACTER, 4
  field :STRING, 5
end

defmodule Google.Genomics.V1.ImportVariantsRequest.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :FORMAT_VCF, 1
  field :FORMAT_COMPLETE_GENOMICS, 2
end

defmodule Google.Genomics.V1.ExportVariantSetRequest.Format do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :FORMAT_UNSPECIFIED, 0
  field :FORMAT_BIGQUERY, 1
end

defmodule Google.Genomics.V1.VariantSetMetadata.InfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.VariantSetMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
  field :id, 4, type: :string
  field :type, 5, type: Google.Genomics.V1.VariantSetMetadata.Type, enum: true
  field :number, 8, type: :string
  field :description, 7, type: :string
  field :info, 3, repeated: true, type: Google.Genomics.V1.VariantSetMetadata.InfoEntry, map: true
end

defmodule Google.Genomics.V1.VariantSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
  field :id, 2, type: :string
  field :reference_set_id, 6, type: :string, json_name: "referenceSetId"

  field :reference_bounds, 5,
    repeated: true,
    type: Google.Genomics.V1.ReferenceBound,
    json_name: "referenceBounds"

  field :metadata, 4, repeated: true, type: Google.Genomics.V1.VariantSetMetadata
  field :name, 7, type: :string
  field :description, 8, type: :string
end

defmodule Google.Genomics.V1.Variant.InfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.Variant do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set_id, 15, type: :string, json_name: "variantSetId"
  field :id, 2, type: :string
  field :names, 3, repeated: true, type: :string
  field :created, 12, type: :int64
  field :reference_name, 14, type: :string, json_name: "referenceName"
  field :start, 16, type: :int64
  field :end, 13, type: :int64
  field :reference_bases, 6, type: :string, json_name: "referenceBases"
  field :alternate_bases, 7, repeated: true, type: :string, json_name: "alternateBases"
  field :quality, 8, type: :double
  field :filter, 9, repeated: true, type: :string
  field :info, 10, repeated: true, type: Google.Genomics.V1.Variant.InfoEntry, map: true
  field :calls, 11, repeated: true, type: Google.Genomics.V1.VariantCall
end

defmodule Google.Genomics.V1.VariantCall.InfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.VariantCall do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :call_set_id, 8, type: :string, json_name: "callSetId"
  field :call_set_name, 9, type: :string, json_name: "callSetName"
  field :genotype, 7, repeated: true, type: :int32
  field :phaseset, 5, type: :string
  field :genotype_likelihood, 6, repeated: true, type: :double, json_name: "genotypeLikelihood"
  field :info, 2, repeated: true, type: Google.Genomics.V1.VariantCall.InfoEntry, map: true
end

defmodule Google.Genomics.V1.CallSet.InfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.CallSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :sample_id, 7, type: :string, json_name: "sampleId"
  field :variant_set_ids, 6, repeated: true, type: :string, json_name: "variantSetIds"
  field :created, 5, type: :int64
  field :info, 4, repeated: true, type: Google.Genomics.V1.CallSet.InfoEntry, map: true
end

defmodule Google.Genomics.V1.ReferenceBound do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :reference_name, 1, type: :string, json_name: "referenceName"
  field :upper_bound, 2, type: :int64, json_name: "upperBound"
end

defmodule Google.Genomics.V1.ImportVariantsRequest.InfoMergeConfigEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Genomics.V1.InfoMergeOperation, enum: true
end

defmodule Google.Genomics.V1.ImportVariantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set_id, 1, type: :string, json_name: "variantSetId"
  field :source_uris, 2, repeated: true, type: :string, json_name: "sourceUris"
  field :format, 3, type: Google.Genomics.V1.ImportVariantsRequest.Format, enum: true
  field :normalize_reference_names, 5, type: :bool, json_name: "normalizeReferenceNames"

  field :info_merge_config, 6,
    repeated: true,
    type: Google.Genomics.V1.ImportVariantsRequest.InfoMergeConfigEntry,
    json_name: "infoMergeConfig",
    map: true
end

defmodule Google.Genomics.V1.ImportVariantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :call_set_ids, 1, repeated: true, type: :string, json_name: "callSetIds"
end

defmodule Google.Genomics.V1.CreateVariantSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set, 1, type: Google.Genomics.V1.VariantSet, json_name: "variantSet"
end

defmodule Google.Genomics.V1.ExportVariantSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set_id, 1, type: :string, json_name: "variantSetId"
  field :call_set_ids, 2, repeated: true, type: :string, json_name: "callSetIds"
  field :project_id, 3, type: :string, json_name: "projectId"
  field :format, 4, type: Google.Genomics.V1.ExportVariantSetRequest.Format, enum: true
  field :bigquery_dataset, 5, type: :string, json_name: "bigqueryDataset"
  field :bigquery_table, 6, type: :string, json_name: "bigqueryTable"
end

defmodule Google.Genomics.V1.GetVariantSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set_id, 1, type: :string, json_name: "variantSetId"
end

defmodule Google.Genomics.V1.SearchVariantSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :dataset_ids, 1, repeated: true, type: :string, json_name: "datasetIds"
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 3, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.SearchVariantSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_sets, 1,
    repeated: true,
    type: Google.Genomics.V1.VariantSet,
    json_name: "variantSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.DeleteVariantSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set_id, 1, type: :string, json_name: "variantSetId"
end

defmodule Google.Genomics.V1.UpdateVariantSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set_id, 1, type: :string, json_name: "variantSetId"
  field :variant_set, 2, type: Google.Genomics.V1.VariantSet, json_name: "variantSet"
  field :update_mask, 5, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Genomics.V1.SearchVariantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set_ids, 1, repeated: true, type: :string, json_name: "variantSetIds"
  field :variant_name, 2, type: :string, json_name: "variantName"
  field :call_set_ids, 3, repeated: true, type: :string, json_name: "callSetIds"
  field :reference_name, 4, type: :string, json_name: "referenceName"
  field :start, 5, type: :int64
  field :end, 6, type: :int64
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :page_size, 8, type: :int32, json_name: "pageSize"
  field :max_calls, 9, type: :int32, json_name: "maxCalls"
end

defmodule Google.Genomics.V1.SearchVariantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variants, 1, repeated: true, type: Google.Genomics.V1.Variant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.CreateVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant, 1, type: Google.Genomics.V1.Variant
end

defmodule Google.Genomics.V1.UpdateVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_id, 1, type: :string, json_name: "variantId"
  field :variant, 2, type: Google.Genomics.V1.Variant
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Genomics.V1.DeleteVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_id, 1, type: :string, json_name: "variantId"
end

defmodule Google.Genomics.V1.GetVariantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_id, 1, type: :string, json_name: "variantId"
end

defmodule Google.Genomics.V1.MergeVariantsRequest.InfoMergeConfigEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Genomics.V1.InfoMergeOperation, enum: true
end

defmodule Google.Genomics.V1.MergeVariantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set_id, 1, type: :string, json_name: "variantSetId"
  field :variants, 2, repeated: true, type: Google.Genomics.V1.Variant

  field :info_merge_config, 3,
    repeated: true,
    type: Google.Genomics.V1.MergeVariantsRequest.InfoMergeConfigEntry,
    json_name: "infoMergeConfig",
    map: true
end

defmodule Google.Genomics.V1.SearchCallSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variant_set_ids, 1, repeated: true, type: :string, json_name: "variantSetIds"
  field :name, 2, type: :string
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.SearchCallSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :call_sets, 1, repeated: true, type: Google.Genomics.V1.CallSet, json_name: "callSets"
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.CreateCallSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :call_set, 1, type: Google.Genomics.V1.CallSet, json_name: "callSet"
end

defmodule Google.Genomics.V1.UpdateCallSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :call_set_id, 1, type: :string, json_name: "callSetId"
  field :call_set, 2, type: Google.Genomics.V1.CallSet, json_name: "callSet"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Genomics.V1.DeleteCallSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :call_set_id, 1, type: :string, json_name: "callSetId"
end

defmodule Google.Genomics.V1.GetCallSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :call_set_id, 1, type: :string, json_name: "callSetId"
end

defmodule Google.Genomics.V1.StreamVariantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :variant_set_id, 2, type: :string, json_name: "variantSetId"
  field :call_set_ids, 3, repeated: true, type: :string, json_name: "callSetIds"
  field :reference_name, 4, type: :string, json_name: "referenceName"
  field :start, 5, type: :int64
  field :end, 6, type: :int64
end

defmodule Google.Genomics.V1.StreamVariantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :variants, 1, repeated: true, type: Google.Genomics.V1.Variant
end

defmodule Google.Genomics.V1.StreamingVariantService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.genomics.v1.StreamingVariantService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :StreamVariants,
      Google.Genomics.V1.StreamVariantsRequest,
      stream(Google.Genomics.V1.StreamVariantsResponse)
end

defmodule Google.Genomics.V1.StreamingVariantService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Genomics.V1.StreamingVariantService.Service
end

defmodule Google.Genomics.V1.VariantServiceV1.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.genomics.v1.VariantServiceV1",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ImportVariants, Google.Genomics.V1.ImportVariantsRequest, Google.Longrunning.Operation

  rpc :CreateVariantSet, Google.Genomics.V1.CreateVariantSetRequest, Google.Genomics.V1.VariantSet

  rpc :ExportVariantSet, Google.Genomics.V1.ExportVariantSetRequest, Google.Longrunning.Operation

  rpc :GetVariantSet, Google.Genomics.V1.GetVariantSetRequest, Google.Genomics.V1.VariantSet

  rpc :SearchVariantSets,
      Google.Genomics.V1.SearchVariantSetsRequest,
      Google.Genomics.V1.SearchVariantSetsResponse

  rpc :DeleteVariantSet, Google.Genomics.V1.DeleteVariantSetRequest, Google.Protobuf.Empty

  rpc :UpdateVariantSet, Google.Genomics.V1.UpdateVariantSetRequest, Google.Genomics.V1.VariantSet

  rpc :SearchVariants,
      Google.Genomics.V1.SearchVariantsRequest,
      Google.Genomics.V1.SearchVariantsResponse

  rpc :CreateVariant, Google.Genomics.V1.CreateVariantRequest, Google.Genomics.V1.Variant

  rpc :UpdateVariant, Google.Genomics.V1.UpdateVariantRequest, Google.Genomics.V1.Variant

  rpc :DeleteVariant, Google.Genomics.V1.DeleteVariantRequest, Google.Protobuf.Empty

  rpc :GetVariant, Google.Genomics.V1.GetVariantRequest, Google.Genomics.V1.Variant

  rpc :MergeVariants, Google.Genomics.V1.MergeVariantsRequest, Google.Protobuf.Empty

  rpc :SearchCallSets,
      Google.Genomics.V1.SearchCallSetsRequest,
      Google.Genomics.V1.SearchCallSetsResponse

  rpc :CreateCallSet, Google.Genomics.V1.CreateCallSetRequest, Google.Genomics.V1.CallSet

  rpc :UpdateCallSet, Google.Genomics.V1.UpdateCallSetRequest, Google.Genomics.V1.CallSet

  rpc :DeleteCallSet, Google.Genomics.V1.DeleteCallSetRequest, Google.Protobuf.Empty

  rpc :GetCallSet, Google.Genomics.V1.GetCallSetRequest, Google.Genomics.V1.CallSet
end

defmodule Google.Genomics.V1.VariantServiceV1.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Genomics.V1.VariantServiceV1.Service
end