defmodule Google.Ai.Generativelanguage.V1alpha.ListCachedContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.ListCachedContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cached_contents, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.CachedContent,
    json_name: "cachedContents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1alpha.CreateCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cached_content, 1,
    type: Google.Ai.Generativelanguage.V1alpha.CachedContent,
    json_name: "cachedContent",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GetCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.UpdateCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :cached_content, 1,
    type: Google.Ai.Generativelanguage.V1alpha.CachedContent,
    json_name: "cachedContent",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Ai.Generativelanguage.V1alpha.DeleteCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.CacheService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1alpha.CacheService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :ListCachedContents,
      Google.Ai.Generativelanguage.V1alpha.ListCachedContentsRequest,
      Google.Ai.Generativelanguage.V1alpha.ListCachedContentsResponse

  rpc :CreateCachedContent,
      Google.Ai.Generativelanguage.V1alpha.CreateCachedContentRequest,
      Google.Ai.Generativelanguage.V1alpha.CachedContent

  rpc :GetCachedContent,
      Google.Ai.Generativelanguage.V1alpha.GetCachedContentRequest,
      Google.Ai.Generativelanguage.V1alpha.CachedContent

  rpc :UpdateCachedContent,
      Google.Ai.Generativelanguage.V1alpha.UpdateCachedContentRequest,
      Google.Ai.Generativelanguage.V1alpha.CachedContent

  rpc :DeleteCachedContent,
      Google.Ai.Generativelanguage.V1alpha.DeleteCachedContentRequest,
      Google.Protobuf.Empty
end

defmodule Google.Ai.Generativelanguage.V1alpha.CacheService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1alpha.CacheService.Service
end
