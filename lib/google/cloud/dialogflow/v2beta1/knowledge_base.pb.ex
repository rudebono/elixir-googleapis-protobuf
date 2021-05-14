defmodule Google.Cloud.Dialogflow.V2beta1.KnowledgeBase do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          language_code: String.t()
        }

  defstruct [:name, :display_name, :language_code]

  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :language_code, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListKnowledgeBasesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListKnowledgeBasesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          knowledge_bases: [Google.Cloud.Dialogflow.V2beta1.KnowledgeBase.t()],
          next_page_token: String.t()
        }

  defstruct [:knowledge_bases, :next_page_token]

  field :knowledge_bases, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.KnowledgeBase
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetKnowledgeBaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateKnowledgeBaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          knowledge_base: Google.Cloud.Dialogflow.V2beta1.KnowledgeBase.t() | nil
        }

  defstruct [:parent, :knowledge_base]

  field :parent, 1, type: :string
  field :knowledge_base, 2, type: Google.Cloud.Dialogflow.V2beta1.KnowledgeBase
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteKnowledgeBaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean
        }

  defstruct [:name, :force]

  field :name, 1, type: :string
  field :force, 2, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateKnowledgeBaseRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          knowledge_base: Google.Cloud.Dialogflow.V2beta1.KnowledgeBase.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:knowledge_base, :update_mask]

  field :knowledge_base, 1, type: Google.Cloud.Dialogflow.V2beta1.KnowledgeBase
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2beta1.KnowledgeBases.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2beta1.KnowledgeBases"

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
