defmodule Google.Cloud.Networkconnectivity.V1.InternalRange.Usage do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :USAGE_UNSPECIFIED, 0
  field :FOR_VPC, 1
  field :EXTERNAL_TO_VPC, 2
  field :FOR_MIGRATION, 3
end

defmodule Google.Cloud.Networkconnectivity.V1.InternalRange.Peering do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :PEERING_UNSPECIFIED, 0
  field :FOR_SELF, 1
  field :FOR_PEER, 2
  field :NOT_SHARED, 3
end

defmodule Google.Cloud.Networkconnectivity.V1.InternalRange.Overlap do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OVERLAP_UNSPECIFIED, 0
  field :OVERLAP_ROUTE_RANGE, 1
  field :OVERLAP_EXISTING_SUBNET_RANGE, 2
end

defmodule Google.Cloud.Networkconnectivity.V1.InternalRange.AllocationStrategy do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ALLOCATION_STRATEGY_UNSPECIFIED, 0
  field :RANDOM, 1
  field :FIRST_AVAILABLE, 2
  field :RANDOM_FIRST_N_AVAILABLE, 3
  field :FIRST_SMALLEST_FITTING, 4
end

defmodule Google.Cloud.Networkconnectivity.V1.InternalRange.Migration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source, 1, type: :string, deprecated: false
  field :target, 2, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.InternalRange.AllocationOptions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :allocation_strategy, 1,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange.AllocationStrategy,
    json_name: "allocationStrategy",
    enum: true,
    deprecated: false

  field :first_available_ranges_lookup_size, 2,
    type: :int32,
    json_name: "firstAvailableRangesLookupSize",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.InternalRange.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.InternalRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 3, type: Google.Protobuf.Timestamp, json_name: "updateTime"

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange.LabelsEntry,
    map: true

  field :description, 5, type: :string, deprecated: false
  field :ip_cidr_range, 6, type: :string, json_name: "ipCidrRange", deprecated: false
  field :network, 7, type: :string, deprecated: false

  field :usage, 8,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange.Usage,
    enum: true,
    deprecated: false

  field :peering, 9,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange.Peering,
    enum: true,
    deprecated: false

  field :prefix_length, 10, type: :int32, json_name: "prefixLength", deprecated: false

  field :target_cidr_range, 11,
    repeated: true,
    type: :string,
    json_name: "targetCidrRange",
    deprecated: false

  field :users, 12, repeated: true, type: :string, deprecated: false

  field :overlaps, 13,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange.Overlap,
    enum: true,
    deprecated: false

  field :migration, 14,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange.Migration,
    deprecated: false

  field :immutable, 15, type: :bool, deprecated: false

  field :allocation_options, 16,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange.AllocationOptions,
    json_name: "allocationOptions",
    deprecated: false

  field :exclude_cidr_ranges, 17,
    repeated: true,
    type: :string,
    json_name: "excludeCidrRanges",
    deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.ListInternalRangesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Networkconnectivity.V1.ListInternalRangesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :internal_ranges, 1,
    repeated: true,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange,
    json_name: "internalRanges"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Networkconnectivity.V1.GetInternalRangeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.CreateInternalRangeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :internal_range_id, 2, type: :string, json_name: "internalRangeId", deprecated: false

  field :internal_range, 3,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange,
    json_name: "internalRange",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.UpdateInternalRangeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :internal_range, 2,
    type: Google.Cloud.Networkconnectivity.V1.InternalRange,
    json_name: "internalRange",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.DeleteInternalRangeRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Networkconnectivity.V1.InternalRangeService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.networkconnectivity.v1.InternalRangeService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListInternalRanges,
      Google.Cloud.Networkconnectivity.V1.ListInternalRangesRequest,
      Google.Cloud.Networkconnectivity.V1.ListInternalRangesResponse

  rpc :GetInternalRange,
      Google.Cloud.Networkconnectivity.V1.GetInternalRangeRequest,
      Google.Cloud.Networkconnectivity.V1.InternalRange

  rpc :CreateInternalRange,
      Google.Cloud.Networkconnectivity.V1.CreateInternalRangeRequest,
      Google.Longrunning.Operation

  rpc :UpdateInternalRange,
      Google.Cloud.Networkconnectivity.V1.UpdateInternalRangeRequest,
      Google.Longrunning.Operation

  rpc :DeleteInternalRange,
      Google.Cloud.Networkconnectivity.V1.DeleteInternalRangeRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Networkconnectivity.V1.InternalRangeService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Networkconnectivity.V1.InternalRangeService.Service
end
