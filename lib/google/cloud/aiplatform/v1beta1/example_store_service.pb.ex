defmodule Google.Cloud.Aiplatform.V1beta1.CreateExampleStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :example_store, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExampleStore,
    json_name: "exampleStore",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.CreateExampleStoreOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetExampleStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateExampleStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :example_store, 1,
    type: Google.Cloud.Aiplatform.V1beta1.ExampleStore,
    json_name: "exampleStore",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateExampleStoreOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteExampleStoreRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteExampleStoreOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :generic_metadata, 1,
    type: Google.Cloud.Aiplatform.V1beta1.GenericOperationMetadata,
    json_name: "genericMetadata"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListExampleStoresRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListExampleStoresResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :example_stores, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ExampleStore,
    json_name: "exampleStores"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.Example do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :example_type, 0

  field :stored_contents_example, 6,
    type: Google.Cloud.Aiplatform.V1beta1.StoredContentsExample,
    json_name: "storedContentsExample",
    oneof: 0

  field :display_name, 1, type: :string, json_name: "displayName", deprecated: false
  field :example_id, 4, type: :string, json_name: "exampleId", deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpsertExamplesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :example_store, 1, type: :string, json_name: "exampleStore", deprecated: false

  field :examples, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Example,
    deprecated: false

  field :overwrite, 4, type: :bool, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpsertExamplesResponse.UpsertResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :result, 0

  field :example, 1, type: Google.Cloud.Aiplatform.V1beta1.Example, oneof: 0
  field :status, 2, type: Google.Rpc.Status, oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpsertExamplesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.UpsertExamplesResponse.UpsertResult
end

defmodule Google.Cloud.Aiplatform.V1beta1.RemoveExamplesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :metadata_filter, 0

  field :stored_contents_example_filter, 8,
    type: Google.Cloud.Aiplatform.V1beta1.StoredContentsExampleFilter,
    json_name: "storedContentsExampleFilter",
    oneof: 0

  field :example_store, 1, type: :string, json_name: "exampleStore", deprecated: false
  field :example_ids, 6, repeated: true, type: :string, json_name: "exampleIds", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.RemoveExamplesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :example_ids, 1, repeated: true, type: :string, json_name: "exampleIds"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchExamplesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :parameters, 0

  field :stored_contents_example_parameters, 6,
    type: Google.Cloud.Aiplatform.V1beta1.StoredContentsExampleParameters,
    json_name: "storedContentsExampleParameters",
    oneof: 0

  field :example_store, 1, type: :string, json_name: "exampleStore", deprecated: false
  field :top_k, 2, type: :int64, json_name: "topK", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchExamplesResponse.SimilarExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :example, 1, type: Google.Cloud.Aiplatform.V1beta1.Example
  field :similarity_score, 2, type: :float, json_name: "similarityScore"
end

defmodule Google.Cloud.Aiplatform.V1beta1.SearchExamplesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :results, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.SearchExamplesResponse.SimilarExample
end

defmodule Google.Cloud.Aiplatform.V1beta1.FetchExamplesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :metadata_filter, 0

  field :stored_contents_example_filter, 8,
    type: Google.Cloud.Aiplatform.V1beta1.StoredContentsExampleFilter,
    json_name: "storedContentsExampleFilter",
    oneof: 0

  field :example_store, 1, type: :string, json_name: "exampleStore", deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :example_ids, 6, repeated: true, type: :string, json_name: "exampleIds", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.FetchExamplesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :examples, 1, repeated: true, type: Google.Cloud.Aiplatform.V1beta1.Example
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExampleStoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.ExampleStoreService",
    protoc_gen_elixir_version: "0.14.1"

  rpc :CreateExampleStore,
      Google.Cloud.Aiplatform.V1beta1.CreateExampleStoreRequest,
      Google.Longrunning.Operation

  rpc :GetExampleStore,
      Google.Cloud.Aiplatform.V1beta1.GetExampleStoreRequest,
      Google.Cloud.Aiplatform.V1beta1.ExampleStore

  rpc :UpdateExampleStore,
      Google.Cloud.Aiplatform.V1beta1.UpdateExampleStoreRequest,
      Google.Longrunning.Operation

  rpc :DeleteExampleStore,
      Google.Cloud.Aiplatform.V1beta1.DeleteExampleStoreRequest,
      Google.Longrunning.Operation

  rpc :ListExampleStores,
      Google.Cloud.Aiplatform.V1beta1.ListExampleStoresRequest,
      Google.Cloud.Aiplatform.V1beta1.ListExampleStoresResponse

  rpc :UpsertExamples,
      Google.Cloud.Aiplatform.V1beta1.UpsertExamplesRequest,
      Google.Cloud.Aiplatform.V1beta1.UpsertExamplesResponse

  rpc :RemoveExamples,
      Google.Cloud.Aiplatform.V1beta1.RemoveExamplesRequest,
      Google.Cloud.Aiplatform.V1beta1.RemoveExamplesResponse

  rpc :SearchExamples,
      Google.Cloud.Aiplatform.V1beta1.SearchExamplesRequest,
      Google.Cloud.Aiplatform.V1beta1.SearchExamplesResponse

  rpc :FetchExamples,
      Google.Cloud.Aiplatform.V1beta1.FetchExamplesRequest,
      Google.Cloud.Aiplatform.V1beta1.FetchExamplesResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExampleStoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.ExampleStoreService.Service
end
