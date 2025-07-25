defmodule Google.Genomics.V1.ImportReadGroupSetsRequest.PartitionStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PARTITION_STRATEGY_UNSPECIFIED, 0
  field :PER_FILE_PER_SAMPLE, 1
  field :MERGE_ALL, 2
end

defmodule Google.Genomics.V1.SearchReadGroupSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_ids, 1, repeated: true, type: :string, json_name: "datasetIds"
  field :name, 3, type: :string
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.SearchReadGroupSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_group_sets, 1,
    repeated: true,
    type: Google.Genomics.V1.ReadGroupSet,
    json_name: "readGroupSets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.ImportReadGroupSetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
  field :reference_set_id, 4, type: :string, json_name: "referenceSetId"
  field :source_uris, 2, repeated: true, type: :string, json_name: "sourceUris"

  field :partition_strategy, 5,
    type: Google.Genomics.V1.ImportReadGroupSetsRequest.PartitionStrategy,
    json_name: "partitionStrategy",
    enum: true
end

defmodule Google.Genomics.V1.ImportReadGroupSetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_group_set_ids, 1, repeated: true, type: :string, json_name: "readGroupSetIds"
end

defmodule Google.Genomics.V1.ExportReadGroupSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :export_uri, 2, type: :string, json_name: "exportUri"
  field :read_group_set_id, 3, type: :string, json_name: "readGroupSetId"
  field :reference_names, 4, repeated: true, type: :string, json_name: "referenceNames"
end

defmodule Google.Genomics.V1.UpdateReadGroupSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_group_set_id, 1, type: :string, json_name: "readGroupSetId"
  field :read_group_set, 2, type: Google.Genomics.V1.ReadGroupSet, json_name: "readGroupSet"
  field :update_mask, 3, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Genomics.V1.DeleteReadGroupSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_group_set_id, 1, type: :string, json_name: "readGroupSetId"
end

defmodule Google.Genomics.V1.GetReadGroupSetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_group_set_id, 1, type: :string, json_name: "readGroupSetId"
end

defmodule Google.Genomics.V1.ListCoverageBucketsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_group_set_id, 1, type: :string, json_name: "readGroupSetId"
  field :reference_name, 3, type: :string, json_name: "referenceName"
  field :start, 4, type: :int64
  field :end, 5, type: :int64
  field :target_bucket_width, 6, type: :int64, json_name: "targetBucketWidth"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :page_size, 8, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.CoverageBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :range, 1, type: Google.Genomics.V1.Range
  field :mean_coverage, 2, type: :float, json_name: "meanCoverage"
end

defmodule Google.Genomics.V1.ListCoverageBucketsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bucket_width, 1, type: :int64, json_name: "bucketWidth"

  field :coverage_buckets, 2,
    repeated: true,
    type: Google.Genomics.V1.CoverageBucket,
    json_name: "coverageBuckets"

  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.SearchReadsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :read_group_set_ids, 1, repeated: true, type: :string, json_name: "readGroupSetIds"
  field :read_group_ids, 5, repeated: true, type: :string, json_name: "readGroupIds"
  field :reference_name, 7, type: :string, json_name: "referenceName"
  field :start, 8, type: :int64
  field :end, 9, type: :int64
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :page_size, 4, type: :int32, json_name: "pageSize"
end

defmodule Google.Genomics.V1.SearchReadsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :alignments, 1, repeated: true, type: Google.Genomics.V1.Read
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Genomics.V1.StreamReadsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :project_id, 1, type: :string, json_name: "projectId"
  field :read_group_set_id, 2, type: :string, json_name: "readGroupSetId"
  field :reference_name, 3, type: :string, json_name: "referenceName"
  field :start, 4, type: :int64
  field :end, 5, type: :int64
  field :shard, 6, type: :int32
  field :total_shards, 7, type: :int32, json_name: "totalShards"
end

defmodule Google.Genomics.V1.StreamReadsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :alignments, 1, repeated: true, type: Google.Genomics.V1.Read
end

defmodule Google.Genomics.V1.StreamingReadService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.genomics.v1.StreamingReadService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :StreamReads,
      Google.Genomics.V1.StreamReadsRequest,
      stream(Google.Genomics.V1.StreamReadsResponse)
end

defmodule Google.Genomics.V1.StreamingReadService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Genomics.V1.StreamingReadService.Service
end

defmodule Google.Genomics.V1.ReadServiceV1.Service do
  @moduledoc false

  use GRPC.Service, name: "google.genomics.v1.ReadServiceV1", protoc_gen_elixir_version: "0.15.0"

  rpc :ImportReadGroupSets,
      Google.Genomics.V1.ImportReadGroupSetsRequest,
      Google.Longrunning.Operation

  rpc :ExportReadGroupSet,
      Google.Genomics.V1.ExportReadGroupSetRequest,
      Google.Longrunning.Operation

  rpc :SearchReadGroupSets,
      Google.Genomics.V1.SearchReadGroupSetsRequest,
      Google.Genomics.V1.SearchReadGroupSetsResponse

  rpc :UpdateReadGroupSet,
      Google.Genomics.V1.UpdateReadGroupSetRequest,
      Google.Genomics.V1.ReadGroupSet

  rpc :DeleteReadGroupSet, Google.Genomics.V1.DeleteReadGroupSetRequest, Google.Protobuf.Empty

  rpc :GetReadGroupSet, Google.Genomics.V1.GetReadGroupSetRequest, Google.Genomics.V1.ReadGroupSet

  rpc :ListCoverageBuckets,
      Google.Genomics.V1.ListCoverageBucketsRequest,
      Google.Genomics.V1.ListCoverageBucketsResponse

  rpc :SearchReads, Google.Genomics.V1.SearchReadsRequest, Google.Genomics.V1.SearchReadsResponse
end

defmodule Google.Genomics.V1.ReadServiceV1.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Genomics.V1.ReadServiceV1.Service
end
