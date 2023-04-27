defmodule Google.Genomics.V1.AnnotationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :ANNOTATION_TYPE_UNSPECIFIED, 0
  field :GENERIC, 1
  field :VARIANT, 2
  field :GENE, 3
  field :TRANSCRIPT, 4
end

defmodule Google.Genomics.V1.VariantAnnotation.Type do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TYPE_OTHER, 1
  field :INSERTION, 2
  field :DELETION, 3
  field :SUBSTITUTION, 4
  field :SNP, 5
  field :STRUCTURAL, 6
  field :CNV, 7
end

defmodule Google.Genomics.V1.VariantAnnotation.Effect do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :EFFECT_UNSPECIFIED, 0
  field :EFFECT_OTHER, 1
  field :FRAMESHIFT, 2
  field :FRAME_PRESERVING_INDEL, 3
  field :SYNONYMOUS_SNP, 4
  field :NONSYNONYMOUS_SNP, 5
  field :STOP_GAIN, 6
  field :STOP_LOSS, 7
  field :SPLICE_SITE_DISRUPTION, 8
end

defmodule Google.Genomics.V1.VariantAnnotation.ClinicalSignificance do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :CLINICAL_SIGNIFICANCE_UNSPECIFIED, 0
  field :CLINICAL_SIGNIFICANCE_OTHER, 1
  field :UNCERTAIN, 2
  field :BENIGN, 3
  field :LIKELY_BENIGN, 4
  field :LIKELY_PATHOGENIC, 5
  field :PATHOGENIC, 6
  field :DRUG_RESPONSE, 7
  field :HISTOCOMPATIBILITY, 8
  field :CONFERS_SENSITIVITY, 9
  field :RISK_FACTOR, 10
  field :ASSOCIATION, 11
  field :PROTECTIVE, 12
  field :MULTIPLE_REPORTED, 13
end

defmodule Google.Genomics.V1.AnnotationSet.InfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.AnnotationSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :dataset_id, 2, type: :string, json_name: "datasetId"
  field :reference_set_id, 3, type: :string, json_name: "referenceSetId"
  field :name, 4, type: :string
  field :source_uri, 5, type: :string, json_name: "sourceUri"
  field :type, 6, type: Google.Genomics.V1.AnnotationType, enum: true
  field :info, 17, repeated: true, type: Google.Genomics.V1.AnnotationSet.InfoEntry, map: true
end

defmodule Google.Genomics.V1.Annotation.InfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.Annotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :value, 0

  field :id, 1, type: :string
  field :annotation_set_id, 2, type: :string, json_name: "annotationSetId"
  field :name, 3, type: :string
  field :reference_id, 4, type: :string, json_name: "referenceId"
  field :reference_name, 5, type: :string, json_name: "referenceName"
  field :start, 6, type: :int64
  field :end, 7, type: :int64
  field :reverse_strand, 8, type: :bool, json_name: "reverseStrand"
  field :type, 9, type: Google.Genomics.V1.AnnotationType, enum: true
  field :variant, 10, type: Google.Genomics.V1.VariantAnnotation, oneof: 0
  field :transcript, 11, type: Google.Genomics.V1.Transcript, oneof: 0
  field :info, 12, repeated: true, type: Google.Genomics.V1.Annotation.InfoEntry, map: true
end

defmodule Google.Genomics.V1.VariantAnnotation.ClinicalCondition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :names, 1, repeated: true, type: :string

  field :external_ids, 2,
    repeated: true,
    type: Google.Genomics.V1.ExternalId,
    json_name: "externalIds"

  field :concept_id, 3, type: :string, json_name: "conceptId"
  field :omim_id, 4, type: :string, json_name: "omimId"
end

defmodule Google.Genomics.V1.VariantAnnotation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Genomics.V1.VariantAnnotation.Type, enum: true
  field :effect, 2, type: Google.Genomics.V1.VariantAnnotation.Effect, enum: true
  field :alternate_bases, 3, type: :string, json_name: "alternateBases"
  field :gene_id, 4, type: :string, json_name: "geneId"
  field :transcript_ids, 5, repeated: true, type: :string, json_name: "transcriptIds"

  field :conditions, 6,
    repeated: true,
    type: Google.Genomics.V1.VariantAnnotation.ClinicalCondition

  field :clinical_significance, 7,
    type: Google.Genomics.V1.VariantAnnotation.ClinicalSignificance,
    json_name: "clinicalSignificance",
    enum: true
end

defmodule Google.Genomics.V1.Transcript.Exon do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, type: :int64
  field :end, 2, type: :int64
  field :frame, 3, type: Google.Protobuf.Int32Value
end

defmodule Google.Genomics.V1.Transcript.CodingSequence do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :start, 1, type: :int64
  field :end, 2, type: :int64
end

defmodule Google.Genomics.V1.Transcript do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :gene_id, 1, type: :string, json_name: "geneId"
  field :exons, 2, repeated: true, type: Google.Genomics.V1.Transcript.Exon

  field :coding_sequence, 3,
    type: Google.Genomics.V1.Transcript.CodingSequence,
    json_name: "codingSequence"
end

defmodule Google.Genomics.V1.ExternalId do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :source_name, 1, type: :string, json_name: "sourceName"
  field :id, 2, type: :string
end

defmodule Google.Genomics.V1.CreateAnnotationSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_set, 1, type: Google.Genomics.V1.AnnotationSet, json_name: "annotationSet"
end

defmodule Google.Genomics.V1.GetAnnotationSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_set_id, 1, type: :string, json_name: "annotationSetId"
end

defmodule Google.Genomics.V1.UpdateAnnotationSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_set_id, 1, type: :string, json_name: "annotationSetId"
  field :annotation_set, 2, type: Google.Genomics.V1.AnnotationSet, json_name: "annotationSet"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Genomics.V1.DeleteAnnotationSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_set_id, 1, type: :string, json_name: "annotationSetId"
end

defmodule Google.Genomics.V1.SearchAnnotationSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :dataset_ids, 1, repeated: true, type: :string, json_name: "datasetIds"
  field :reference_set_id, 2, type: :string, json_name: "referenceSetId"
  field :name, 3, type: :string
  field :types, 4, repeated: true, type: Google.Genomics.V1.AnnotationType, enum: true
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :page_size, 6, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.SearchAnnotationSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_sets, 1,
    repeated: true,
    type: Google.Genomics.V1.AnnotationSet,
    json_name: "annotationSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.CreateAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation, 1, type: Google.Genomics.V1.Annotation
end

defmodule Google.Genomics.V1.BatchCreateAnnotationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotations, 1, repeated: true, type: Google.Genomics.V1.Annotation
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Genomics.V1.BatchCreateAnnotationsResponse.Entry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
  field :annotation, 2, type: Google.Genomics.V1.Annotation
end

defmodule Google.Genomics.V1.BatchCreateAnnotationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :entries, 1, repeated: true, type: Google.Genomics.V1.BatchCreateAnnotationsResponse.Entry
end

defmodule Google.Genomics.V1.GetAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_id, 1, type: :string, json_name: "annotationId"
end

defmodule Google.Genomics.V1.UpdateAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_id, 1, type: :string, json_name: "annotationId"
  field :annotation, 2, type: Google.Genomics.V1.Annotation
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Genomics.V1.DeleteAnnotationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotation_id, 1, type: :string, json_name: "annotationId"
end

defmodule Google.Genomics.V1.SearchAnnotationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :reference, 0

  field :annotation_set_ids, 1, repeated: true, type: :string, json_name: "annotationSetIds"
  field :reference_id, 2, type: :string, json_name: "referenceId", oneof: 0
  field :reference_name, 3, type: :string, json_name: "referenceName", oneof: 0
  field :start, 4, type: :int64
  field :end, 5, type: :int64
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :page_size, 7, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.SearchAnnotationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :annotations, 1, repeated: true, type: Google.Genomics.V1.Annotation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.AnnotationServiceV1.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.genomics.v1.AnnotationServiceV1",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateAnnotationSet,
      Google.Genomics.V1.CreateAnnotationSetRequest,
      Google.Genomics.V1.AnnotationSet

  rpc :GetAnnotationSet,
      Google.Genomics.V1.GetAnnotationSetRequest,
      Google.Genomics.V1.AnnotationSet

  rpc :UpdateAnnotationSet,
      Google.Genomics.V1.UpdateAnnotationSetRequest,
      Google.Genomics.V1.AnnotationSet

  rpc :DeleteAnnotationSet, Google.Genomics.V1.DeleteAnnotationSetRequest, Google.Protobuf.Empty

  rpc :SearchAnnotationSets,
      Google.Genomics.V1.SearchAnnotationSetsRequest,
      Google.Genomics.V1.SearchAnnotationSetsResponse

  rpc :CreateAnnotation, Google.Genomics.V1.CreateAnnotationRequest, Google.Genomics.V1.Annotation

  rpc :BatchCreateAnnotations,
      Google.Genomics.V1.BatchCreateAnnotationsRequest,
      Google.Genomics.V1.BatchCreateAnnotationsResponse

  rpc :GetAnnotation, Google.Genomics.V1.GetAnnotationRequest, Google.Genomics.V1.Annotation

  rpc :UpdateAnnotation, Google.Genomics.V1.UpdateAnnotationRequest, Google.Genomics.V1.Annotation

  rpc :DeleteAnnotation, Google.Genomics.V1.DeleteAnnotationRequest, Google.Protobuf.Empty

  rpc :SearchAnnotations,
      Google.Genomics.V1.SearchAnnotationsRequest,
      Google.Genomics.V1.SearchAnnotationsResponse
end

defmodule Google.Genomics.V1.AnnotationServiceV1.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Genomics.V1.AnnotationServiceV1.Service
end