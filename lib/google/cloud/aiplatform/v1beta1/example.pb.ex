defmodule Google.Cloud.Aiplatform.V1beta1.ContentsExample.ExpectedContent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :content, 1, type: Google.Cloud.Aiplatform.V1beta1.Content, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ContentsExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :contents, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.Content,
    deprecated: false

  field :expected_contents, 2,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.ContentsExample.ExpectedContent,
    json_name: "expectedContents",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.StoredContentsExample.SearchKeyGenerationMethod.LastEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Cloud.Aiplatform.V1beta1.StoredContentsExample.SearchKeyGenerationMethod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :method, 0

  field :last_entry, 1,
    type:
      Google.Cloud.Aiplatform.V1beta1.StoredContentsExample.SearchKeyGenerationMethod.LastEntry,
    json_name: "lastEntry",
    oneof: 0
end

defmodule Google.Cloud.Aiplatform.V1beta1.StoredContentsExample do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :search_key, 1, type: :string, json_name: "searchKey", deprecated: false

  field :contents_example, 2,
    type: Google.Cloud.Aiplatform.V1beta1.ContentsExample,
    json_name: "contentsExample",
    deprecated: false

  field :search_key_generation_method, 3,
    type: Google.Cloud.Aiplatform.V1beta1.StoredContentsExample.SearchKeyGenerationMethod,
    json_name: "searchKeyGenerationMethod",
    deprecated: false
end
