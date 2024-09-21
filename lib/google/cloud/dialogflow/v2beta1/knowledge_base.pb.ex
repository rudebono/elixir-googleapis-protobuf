defmodule Google.Cloud.Dialogflow.V2beta1.KnowledgeBase do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :language_code, 4, type: :string, json_name: "languageCode"
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListKnowledgeBasesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListKnowledgeBasesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :knowledge_bases, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.KnowledgeBase,
    json_name: "knowledgeBases"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetKnowledgeBaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateKnowledgeBaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :knowledge_base, 2,
    type: Google.Cloud.Dialogflow.V2beta1.KnowledgeBase,
    json_name: "knowledgeBase",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteKnowledgeBaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :force, 2, type: :bool, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateKnowledgeBaseRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :knowledge_base, 1,
    type: Google.Cloud.Dialogflow.V2beta1.KnowledgeBase,
    json_name: "knowledgeBase",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.KnowledgeBases.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2beta1.KnowledgeBases",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListKnowledgeBases,
      Google.Cloud.Dialogflow.V2beta1.ListKnowledgeBasesRequest,
      Google.Cloud.Dialogflow.V2beta1.ListKnowledgeBasesResponse

  rpc :GetKnowledgeBase,
      Google.Cloud.Dialogflow.V2beta1.GetKnowledgeBaseRequest,
      Google.Cloud.Dialogflow.V2beta1.KnowledgeBase

  rpc :CreateKnowledgeBase,
      Google.Cloud.Dialogflow.V2beta1.CreateKnowledgeBaseRequest,
      Google.Cloud.Dialogflow.V2beta1.KnowledgeBase

  rpc :DeleteKnowledgeBase,
      Google.Cloud.Dialogflow.V2beta1.DeleteKnowledgeBaseRequest,
      Google.Protobuf.Empty

  rpc :UpdateKnowledgeBase,
      Google.Cloud.Dialogflow.V2beta1.UpdateKnowledgeBaseRequest,
      Google.Cloud.Dialogflow.V2beta1.KnowledgeBase
end

defmodule Google.Cloud.Dialogflow.V2beta1.KnowledgeBases.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2beta1.KnowledgeBases.Service
end