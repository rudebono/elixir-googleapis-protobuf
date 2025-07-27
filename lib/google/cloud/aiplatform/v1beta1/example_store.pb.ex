defmodule Google.Cloud.Aiplatform.V1beta1.ExamplesArrayFilter.ArrayOperator do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ARRAY_OPERATOR_UNSPECIFIED, 0
  field :CONTAINS_ANY, 1
  field :CONTAINS_ALL, 2
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExampleStore do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :example_store_config, 6,
    type: Google.Cloud.Aiplatform.V1beta1.ExampleStoreConfig,
    json_name: "exampleStoreConfig",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExampleStoreConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :vertex_embedding_model, 1,
    type: :string,
    json_name: "vertexEmbeddingModel",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.StoredContentsExampleFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :search_keys, 1, repeated: true, type: :string, json_name: "searchKeys", deprecated: false

  field :function_names, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExamplesArrayFilter,
    json_name: "functionNames",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.StoredContentsExampleParameters.ContentSearchKey do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contents, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Content,
    deprecated: false

  field :search_key_generation_method, 2,
    type: Google.Cloud.Aiplatform.V1beta1.StoredContentsExample.SearchKeyGenerationMethod,
    json_name: "searchKeyGenerationMethod",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.StoredContentsExampleParameters do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :query, 0

  field :search_key, 1, type: :string, json_name: "searchKey", oneof: 0

  field :content_search_key, 2,
    type: Google.Cloud.Aiplatform.V1beta1.StoredContentsExampleParameters.ContentSearchKey,
    json_name: "contentSearchKey",
    oneof: 0

  field :function_names, 3,
    type: Google.Cloud.Aiplatform.V1beta1.ExamplesArrayFilter,
    json_name: "functionNames",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ExamplesArrayFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string, deprecated: false

  field :array_operator, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ExamplesArrayFilter.ArrayOperator,
    json_name: "arrayOperator",
    enum: true,
    deprecated: false
end
