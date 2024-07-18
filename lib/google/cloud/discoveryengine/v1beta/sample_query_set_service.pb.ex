defmodule Google.Cloud.Discoveryengine.V1beta.GetSampleQuerySetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListSampleQuerySetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListSampleQuerySetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sample_query_sets, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SampleQuerySet,
    json_name: "sampleQuerySets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CreateSampleQuerySetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :sample_query_set, 2,
    type: Google.Cloud.Discoveryengine.V1beta.SampleQuerySet,
    json_name: "sampleQuerySet",
    deprecated: false

  field :sample_query_set_id, 3, type: :string, json_name: "sampleQuerySetId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.UpdateSampleQuerySetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :sample_query_set, 1,
    type: Google.Cloud.Discoveryengine.V1beta.SampleQuerySet,
    json_name: "sampleQuerySet",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteSampleQuerySetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.SampleQuerySetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.SampleQuerySetService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :GetSampleQuerySet,
      Google.Cloud.Discoveryengine.V1beta.GetSampleQuerySetRequest,
      Google.Cloud.Discoveryengine.V1beta.SampleQuerySet

  rpc :ListSampleQuerySets,
      Google.Cloud.Discoveryengine.V1beta.ListSampleQuerySetsRequest,
      Google.Cloud.Discoveryengine.V1beta.ListSampleQuerySetsResponse

  rpc :CreateSampleQuerySet,
      Google.Cloud.Discoveryengine.V1beta.CreateSampleQuerySetRequest,
      Google.Cloud.Discoveryengine.V1beta.SampleQuerySet

  rpc :UpdateSampleQuerySet,
      Google.Cloud.Discoveryengine.V1beta.UpdateSampleQuerySetRequest,
      Google.Cloud.Discoveryengine.V1beta.SampleQuerySet

  rpc :DeleteSampleQuerySet,
      Google.Cloud.Discoveryengine.V1beta.DeleteSampleQuerySetRequest,
      Google.Protobuf.Empty
end

defmodule Google.Cloud.Discoveryengine.V1beta.SampleQuerySetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.SampleQuerySetService.Service
end