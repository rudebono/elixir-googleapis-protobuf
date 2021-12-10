defmodule Google.Firestore.Bundle.BundledQuery.LimitType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :FIRST | :LAST

  field :FIRST, 0
  field :LAST, 1
end
defmodule Google.Firestore.Bundle.BundledQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          query_type: {:structured_query, Google.Firestore.V1.StructuredQuery.t() | nil},
          parent: String.t(),
          limit_type: Google.Firestore.Bundle.BundledQuery.LimitType.t()
        }

  defstruct query_type: nil,
            parent: "",
            limit_type: :FIRST

  oneof :query_type, 0

  field :parent, 1, type: :string

  field :structured_query, 2,
    type: Google.Firestore.V1.StructuredQuery,
    json_name: "structuredQuery",
    oneof: 0

  field :limit_type, 3,
    type: Google.Firestore.Bundle.BundledQuery.LimitType,
    json_name: "limitType",
    enum: true
end
defmodule Google.Firestore.Bundle.NamedQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          bundled_query: Google.Firestore.Bundle.BundledQuery.t() | nil,
          read_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            bundled_query: nil,
            read_time: nil

  field :name, 1, type: :string
  field :bundled_query, 2, type: Google.Firestore.Bundle.BundledQuery, json_name: "bundledQuery"
  field :read_time, 3, type: Google.Protobuf.Timestamp, json_name: "readTime"
end
defmodule Google.Firestore.Bundle.BundledDocumentMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          exists: boolean,
          queries: [String.t()]
        }

  defstruct name: "",
            read_time: nil,
            exists: false,
            queries: []

  field :name, 1, type: :string
  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :exists, 3, type: :bool
  field :queries, 4, repeated: true, type: :string
end
defmodule Google.Firestore.Bundle.BundleMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          version: non_neg_integer,
          total_documents: non_neg_integer,
          total_bytes: non_neg_integer
        }

  defstruct id: "",
            create_time: nil,
            version: 0,
            total_documents: 0,
            total_bytes: 0

  field :id, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :version, 3, type: :uint32
  field :total_documents, 4, type: :uint32, json_name: "totalDocuments"
  field :total_bytes, 5, type: :uint64, json_name: "totalBytes"
end
defmodule Google.Firestore.Bundle.BundleElement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          element_type:
            {:metadata, Google.Firestore.Bundle.BundleMetadata.t() | nil}
            | {:named_query, Google.Firestore.Bundle.NamedQuery.t() | nil}
            | {:document_metadata, Google.Firestore.Bundle.BundledDocumentMetadata.t() | nil}
            | {:document, Google.Firestore.V1.Document.t() | nil}
        }

  defstruct element_type: nil

  oneof :element_type, 0

  field :metadata, 1, type: Google.Firestore.Bundle.BundleMetadata, oneof: 0

  field :named_query, 2,
    type: Google.Firestore.Bundle.NamedQuery,
    json_name: "namedQuery",
    oneof: 0

  field :document_metadata, 3,
    type: Google.Firestore.Bundle.BundledDocumentMetadata,
    json_name: "documentMetadata",
    oneof: 0

  field :document, 4, type: Google.Firestore.V1.Document, oneof: 0
end
