defmodule Google.Cloud.Discoveryengine.V1beta.GetSampleQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListSampleQueriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.ListSampleQueriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sample_queries, 1,
    repeated: true,
    type: Google.Cloud.Discoveryengine.V1beta.SampleQuery,
    json_name: "sampleQueries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Discoveryengine.V1beta.CreateSampleQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :sample_query, 2,
    type: Google.Cloud.Discoveryengine.V1beta.SampleQuery,
    json_name: "sampleQuery",
    deprecated: false

  field :sample_query_id, 3, type: :string, json_name: "sampleQueryId", deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.UpdateSampleQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sample_query, 1,
    type: Google.Cloud.Discoveryengine.V1beta.SampleQuery,
    json_name: "sampleQuery",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Discoveryengine.V1beta.DeleteSampleQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Discoveryengine.V1beta.SampleQueryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.discoveryengine.v1beta.SampleQueryService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetSampleQuery,
      Google.Cloud.Discoveryengine.V1beta.GetSampleQueryRequest,
      Google.Cloud.Discoveryengine.V1beta.SampleQuery

  rpc :ListSampleQueries,
      Google.Cloud.Discoveryengine.V1beta.ListSampleQueriesRequest,
      Google.Cloud.Discoveryengine.V1beta.ListSampleQueriesResponse

  rpc :CreateSampleQuery,
      Google.Cloud.Discoveryengine.V1beta.CreateSampleQueryRequest,
      Google.Cloud.Discoveryengine.V1beta.SampleQuery

  rpc :UpdateSampleQuery,
      Google.Cloud.Discoveryengine.V1beta.UpdateSampleQueryRequest,
      Google.Cloud.Discoveryengine.V1beta.SampleQuery

  rpc :DeleteSampleQuery,
      Google.Cloud.Discoveryengine.V1beta.DeleteSampleQueryRequest,
      Google.Protobuf.Empty

  rpc :ImportSampleQueries,
      Google.Cloud.Discoveryengine.V1beta.ImportSampleQueriesRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Discoveryengine.V1beta.SampleQueryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Discoveryengine.V1beta.SampleQueryService.Service
end