defmodule Google.Genomics.V1.LinearAlignment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :position, 1, type: Google.Genomics.V1.Position
  field :mapping_quality, 2, type: :int32, json_name: "mappingQuality"
  field :cigar, 3, repeated: true, type: Google.Genomics.V1.CigarUnit
end

defmodule Google.Genomics.V1.Read.InfoEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.ListValue
end

defmodule Google.Genomics.V1.Read do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :id, 1, type: :string
  field :read_group_id, 2, type: :string, json_name: "readGroupId"
  field :read_group_set_id, 3, type: :string, json_name: "readGroupSetId"
  field :fragment_name, 4, type: :string, json_name: "fragmentName"
  field :proper_placement, 5, type: :bool, json_name: "properPlacement"
  field :duplicate_fragment, 6, type: :bool, json_name: "duplicateFragment"
  field :fragment_length, 7, type: :int32, json_name: "fragmentLength"
  field :read_number, 8, type: :int32, json_name: "readNumber"
  field :number_reads, 9, type: :int32, json_name: "numberReads"
  field :failed_vendor_quality_checks, 10, type: :bool, json_name: "failedVendorQualityChecks"
  field :alignment, 11, type: Google.Genomics.V1.LinearAlignment
  field :secondary_alignment, 12, type: :bool, json_name: "secondaryAlignment"
  field :supplementary_alignment, 13, type: :bool, json_name: "supplementaryAlignment"
  field :aligned_sequence, 14, type: :string, json_name: "alignedSequence"
  field :aligned_quality, 15, repeated: true, type: :int32, json_name: "alignedQuality"
  field :next_mate_position, 16, type: Google.Genomics.V1.Position, json_name: "nextMatePosition"
  field :info, 17, repeated: true, type: Google.Genomics.V1.Read.InfoEntry, map: true
end