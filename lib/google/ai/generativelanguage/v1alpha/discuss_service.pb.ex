defmodule Google.Ai.Generativelanguage.V1alpha.GenerateMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :prompt, 2, type: Google.Ai.Generativelanguage.V1alpha.MessagePrompt, deprecated: false
  field :temperature, 3, proto3_optional: true, type: :float, deprecated: false

  field :candidate_count, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "candidateCount",
    deprecated: false

  field :top_p, 5, proto3_optional: true, type: :float, json_name: "topP", deprecated: false
  field :top_k, 6, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.GenerateMessageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Message
  field :messages, 2, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.Message
  field :filters, 3, repeated: true, type: Google.Ai.Generativelanguage.V1alpha.ContentFilter
end

defmodule Google.Ai.Generativelanguage.V1alpha.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :author, 1, type: :string, deprecated: false
  field :content, 2, type: :string, deprecated: false

  field :citation_metadata, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1alpha.CitationMetadata,
    json_name: "citationMetadata",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.MessagePrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :context, 1, type: :string, deprecated: false

  field :examples, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Example,
    deprecated: false

  field :messages, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1alpha.Message,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.Example do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :input, 1, type: Google.Ai.Generativelanguage.V1alpha.Message, deprecated: false
  field :output, 2, type: Google.Ai.Generativelanguage.V1alpha.Message, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.CountMessageTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :prompt, 2, type: Google.Ai.Generativelanguage.V1alpha.MessagePrompt, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1alpha.CountMessageTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :token_count, 1, type: :int32, json_name: "tokenCount"
end

defmodule Google.Ai.Generativelanguage.V1alpha.DiscussService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1alpha.DiscussService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GenerateMessage,
      Google.Ai.Generativelanguage.V1alpha.GenerateMessageRequest,
      Google.Ai.Generativelanguage.V1alpha.GenerateMessageResponse

  rpc :CountMessageTokens,
      Google.Ai.Generativelanguage.V1alpha.CountMessageTokensRequest,
      Google.Ai.Generativelanguage.V1alpha.CountMessageTokensResponse
end

defmodule Google.Ai.Generativelanguage.V1alpha.DiscussService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1alpha.DiscussService.Service
end
