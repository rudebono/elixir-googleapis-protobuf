defmodule Google.Cloud.Discoveryengine.V1alpha.GetSampleQuerySetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListSampleQuerySetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.ListSampleQuerySetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sample_query_sets, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1alpha.SampleQuerySet,
    json_name: "sampleQuerySets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.CreateSampleQuerySetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :sample_query_set, 2,
    type: Google.Cloud.Discoveryengine.V1alpha.SampleQuerySet,
    json_name: "sampleQuerySet",
    deprecated: false

  field :sample_query_set_id, 3, type: :string, json_name: "sampleQuerySetId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.UpdateSampleQuerySetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sample_query_set, 1,
    type: Google.Cloud.Discoveryengine.V1alpha.SampleQuerySet,
    json_name: "sampleQuerySet",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1alpha.DeleteSampleQuerySetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SampleQuerySetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1alpha.SampleQuerySetService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetSampleQuerySet,
      Google.Cloud.Discoveryengine.V1alpha.GetSampleQuerySetRequest,
      Google.Cloud.Discoveryengine.V1alpha.SampleQuerySet

  rpc :ListSampleQuerySets,
      Google.Cloud.Discoveryengine.V1alpha.ListSampleQuerySetsRequest,
      Google.Cloud.Discoveryengine.V1alpha.ListSampleQuerySetsResponse

  rpc :CreateSampleQuerySet,
      Google.Cloud.Discoveryengine.V1alpha.CreateSampleQuerySetRequest,
      Google.Cloud.Discoveryengine.V1alpha.SampleQuerySet

  rpc :UpdateSampleQuerySet,
      Google.Cloud.Discoveryengine.V1alpha.UpdateSampleQuerySetRequest,
      Google.Cloud.Discoveryengine.V1alpha.SampleQuerySet

  rpc :DeleteSampleQuerySet,
      Google.Cloud.Discoveryengine.V1alpha.DeleteSampleQuerySetRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Discoveryengine.V1alpha.SampleQuerySetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1alpha.SampleQuerySetService.Service
end