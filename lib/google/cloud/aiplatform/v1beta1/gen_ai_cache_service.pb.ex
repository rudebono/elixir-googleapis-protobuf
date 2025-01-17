defmodule Google.Cloud.Aiplatform.V1beta1.CreateCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :cached_content, 2,
    type: Google.Cloud.Aiplatform.V1beta1.CachedContent,
    json_name: "cachedContent",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.GetCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.UpdateCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cached_content, 1,
    type: Google.Cloud.Aiplatform.V1beta1.CachedContent,
    json_name: "cachedContent",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.DeleteCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListCachedContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Aiplatform.V1beta1.ListCachedContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cached_contents, 1,
    repeated: true,
    type: Google.Cloud.Aiplatform.V1beta1.CachedContent,
    json_name: "cachedContents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenAiCacheService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.aiplatform.v1beta1.GenAiCacheService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateCachedContent,
      Google.Cloud.Aiplatform.V1beta1.CreateCachedContentRequest,
      Google.Cloud.Aiplatform.V1beta1.CachedContent

  rpc :GetCachedContent,
      Google.Cloud.Aiplatform.V1beta1.GetCachedContentRequest,
      Google.Cloud.Aiplatform.V1beta1.CachedContent

  rpc :UpdateCachedContent,
      Google.Cloud.Aiplatform.V1beta1.UpdateCachedContentRequest,
      Google.Cloud.Aiplatform.V1beta1.CachedContent

  rpc :DeleteCachedContent,
      Google.Cloud.Aiplatform.V1beta1.DeleteCachedContentRequest,
      Google.Protobuf.Empty

  rpc :ListCachedContents,
      Google.Cloud.Aiplatform.V1beta1.ListCachedContentsRequest,
      Google.Cloud.Aiplatform.V1beta1.ListCachedContentsResponse
end

defmodule Google.Cloud.Aiplatform.V1beta1.GenAiCacheService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Aiplatform.V1beta1.GenAiCacheService.Service
end
