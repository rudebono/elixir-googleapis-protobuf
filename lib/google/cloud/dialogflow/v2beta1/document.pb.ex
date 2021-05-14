defmodule Google.Cloud.Dialogflow.V2beta1.Document.KnowledgeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :KNOWLEDGE_TYPE_UNSPECIFIED
          | :FAQ
          | :EXTRACTIVE_QA
          | :ARTICLE_SUGGESTION
          | :SMART_REPLY

  field :KNOWLEDGE_TYPE_UNSPECIFIED, 0

  field :FAQ, 1

  field :EXTRACTIVE_QA, 2

  field :ARTICLE_SUGGESTION, 3

  field :SMART_REPLY, 4
end

defmodule Google.Cloud.Dialogflow.V2beta1.KnowledgeOperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :RUNNING | :DONE

  field :STATE_UNSPECIFIED, 0

  field :PENDING, 1

  field :RUNNING, 2

  field :DONE, 3
end

defmodule Google.Cloud.Dialogflow.V2beta1.Document.ReloadStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time: Google.Protobuf.Timestamp.t() | nil,
          status: Google.Rpc.Status.t() | nil
        }

  defstruct [:time, :status]

  field :time, 1, type: Google.Protobuf.Timestamp
  field :status, 2, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.V2beta1.Document.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.Document do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          name: String.t(),
          display_name: String.t(),
          mime_type: String.t(),
          knowledge_types: [[Google.Cloud.Dialogflow.V2beta1.Document.KnowledgeType.t()]],
          enable_auto_reload: boolean,
          latest_reload_status: Google.Cloud.Dialogflow.V2beta1.Document.ReloadStatus.t() | nil,
          metadata: %{String.t() => String.t()}
        }

  defstruct [
    :source,
    :name,
    :display_name,
    :mime_type,
    :knowledge_types,
    :enable_auto_reload,
    :latest_reload_status,
    :metadata
  ]

  oneof :source, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string
  field :mime_type, 3, type: :string

  field :knowledge_types, 4,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Document.KnowledgeType,
    enum: true

  field :content_uri, 5, type: :string, oneof: 0
  field :content, 6, type: :string, deprecated: true, oneof: 0
  field :raw_content, 9, type: :bytes, oneof: 0
  field :enable_auto_reload, 11, type: :bool
  field :latest_reload_status, 12, type: Google.Cloud.Dialogflow.V2beta1.Document.ReloadStatus

  field :metadata, 7,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Document.MetadataEntry,
    map: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.GetDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ListDocumentsRequest do
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

defmodule Google.Cloud.Dialogflow.V2beta1.ListDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents: [Google.Cloud.Dialogflow.V2beta1.Document.t()],
          next_page_token: String.t()
        }

  defstruct [:documents, :next_page_token]

  field :documents, 1, repeated: true, type: Google.Cloud.Dialogflow.V2beta1.Document
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.CreateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          document: Google.Cloud.Dialogflow.V2beta1.Document.t() | nil,
          import_gcs_custom_metadata: boolean
        }

  defstruct [:parent, :document, :import_gcs_custom_metadata]

  field :parent, 1, type: :string
  field :document, 2, type: Google.Cloud.Dialogflow.V2beta1.Document
  field :import_gcs_custom_metadata, 3, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2beta1.ImportDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          parent: String.t(),
          document_template: Google.Cloud.Dialogflow.V2beta1.ImportDocumentTemplate.t() | nil,
          import_gcs_custom_metadata: boolean
        }

  defstruct [:source, :parent, :document_template, :import_gcs_custom_metadata]

  oneof :source, 0
  field :parent, 1, type: :string
  field :gcs_source, 2, type: Google.Cloud.Dialogflow.V2beta1.GcsSources, oneof: 0
  field :document_template, 3, type: Google.Cloud.Dialogflow.V2beta1.ImportDocumentTemplate
  field :import_gcs_custom_metadata, 4, type: :bool
end

defmodule Google.Cloud.Dialogflow.V2beta1.ImportDocumentTemplate.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.ImportDocumentTemplate do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          mime_type: String.t(),
          knowledge_types: [[Google.Cloud.Dialogflow.V2beta1.Document.KnowledgeType.t()]],
          metadata: %{String.t() => String.t()}
        }

  defstruct [:mime_type, :knowledge_types, :metadata]

  field :mime_type, 1, type: :string

  field :knowledge_types, 2,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.Document.KnowledgeType,
    enum: true

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2beta1.ImportDocumentTemplate.MetadataEntry,
    map: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.ImportDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          warnings: [Google.Rpc.Status.t()]
        }

  defstruct [:warnings]

  field :warnings, 1, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Cloud.Dialogflow.V2beta1.DeleteDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.UpdateDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          document: Google.Cloud.Dialogflow.V2beta1.Document.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:document, :update_mask]

  field :document, 1, type: Google.Cloud.Dialogflow.V2beta1.Document
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Dialogflow.V2beta1.KnowledgeOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Dialogflow.V2beta1.KnowledgeOperationMetadata.State.t()
        }

  defstruct [:state]

  field :state, 1,
    type: Google.Cloud.Dialogflow.V2beta1.KnowledgeOperationMetadata.State,
    enum: true
end

defmodule Google.Cloud.Dialogflow.V2beta1.ReloadDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          name: String.t(),
          import_gcs_custom_metadata: boolean
        }

  defstruct [:source, :name, :import_gcs_custom_metadata]

  oneof :source, 0
  field :name, 1, type: :string
  field :gcs_source, 3, type: Google.Cloud.Dialogflow.V2beta1.GcsSource, oneof: 0
  field :import_gcs_custom_metadata, 4, type: :bool
end
