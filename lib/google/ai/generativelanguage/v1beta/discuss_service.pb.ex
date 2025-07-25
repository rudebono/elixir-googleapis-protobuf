defmodule Google.Ai.Generativelanguage.V1beta.GenerateMessageRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :prompt, 2, type: Google.Ai.Generativelanguage.V1beta.MessagePrompt, deprecated: false
  field :temperature, 3, proto3_optional: true, type: :float, deprecated: false

  field :candidate_count, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "candidateCount",
    deprecated: false

  field :top_p, 5, proto3_optional: true, type: :float, json_name: "topP", deprecated: false
  field :top_k, 6, proto3_optional: true, type: :int32, json_name: "topK", deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.GenerateMessageResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :candidates, 1, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Message
  field :messages, 2, repeated: true, type: Google.Ai.Generativelanguage.V1beta.Message
  field :filters, 3, repeated: true, type: Google.Ai.Generativelanguage.V1beta.ContentFilter
end

defmodule Google.Ai.Generativelanguage.V1beta.Message do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :author, 1, type: :string, deprecated: false
  field :content, 2, type: :string, deprecated: false

  field :citation_metadata, 3,
    proto3_optional: true,
    type: Google.Ai.Generativelanguage.V1beta.CitationMetadata,
    json_name: "citationMetadata",
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.MessagePrompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :context, 1, type: :string, deprecated: false

  field :examples, 2,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Example,
    deprecated: false

  field :messages, 3,
    repeated: true,
    type: Google.Ai.Generativelanguage.V1beta.Message,
    deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.Example do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :input, 1, type: Google.Ai.Generativelanguage.V1beta.Message, deprecated: false
  field :output, 2, type: Google.Ai.Generativelanguage.V1beta.Message, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CountMessageTokensRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :model, 1, type: :string, deprecated: false
  field :prompt, 2, type: Google.Ai.Generativelanguage.V1beta.MessagePrompt, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1beta.CountMessageTokensResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :token_count, 1, type: :int32, json_name: "tokenCount"
end

defmodule Google.Ai.Generativelanguage.V1beta.DiscussService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ai.generativelanguage.v1beta.DiscussService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GenerateMessage,
      Google.Ai.Generativelanguage.V1beta.GenerateMessageRequest,
      Google.Ai.Generativelanguage.V1beta.GenerateMessageResponse

  rpc :CountMessageTokens,
      Google.Ai.Generativelanguage.V1beta.CountMessageTokensRequest,
      Google.Ai.Generativelanguage.V1beta.CountMessageTokensResponse
end

defmodule Google.Ai.Generativelanguage.V1beta.DiscussService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ai.Generativelanguage.V1beta.DiscussService.Service
end
