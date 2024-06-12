defmodule Google.Ai.Generativelanguage.V1beta.ListCachedContentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.ListCachedContentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cached_contents, 1,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.CachedContent,
    json_name: "cachedContents"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Ai.Generativelanguage.V1beta.CreateCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cached_content, 1,
    type: Google.Ai.Generativelanguage.V1beta.CachedContent,
    json_name: "cachedContent",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GetCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.UpdateCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :cached_content, 1,
    type: Google.Ai.Generativelanguage.V1beta.CachedContent,
    json_name: "cachedContent",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Ai.Generativelanguage.V1beta.DeleteCachedContentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CacheService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.CacheService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListCachedContents,
      Google.Ai.Generativelanguage.V1beta.ListCachedContentsRequest,
      Google.Ai.Generativelanguage.V1beta.ListCachedContentsResponse

  rpc :CreateCachedContent,
      Google.Ai.Generativelanguage.V1beta.CreateCachedContentRequest,
      Google.Ai.Generativelanguage.V1beta.CachedContent

  rpc :GetCachedContent,
      Google.Ai.Generativelanguage.V1beta.GetCachedContentRequest,
      Google.Ai.Generativelanguage.V1beta.CachedContent

  rpc :UpdateCachedContent,
      Google.Ai.Generativelanguage.V1beta.UpdateCachedContentRequest,
      Google.Ai.Generativelanguage.V1beta.CachedContent

  rpc :DeleteCachedContent,
      Google.Ai.Generativelanguage.V1beta.DeleteCachedContentRequest,
      Google.Protobuf.Empty
end

defmodule Google.Ai.Generativelanguage.V1beta.CacheService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.CacheService.Service
end