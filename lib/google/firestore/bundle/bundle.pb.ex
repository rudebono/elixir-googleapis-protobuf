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
          query_type: {atom, any},
          parent: String.t(),
          limit_type: Google.Firestore.Bundle.BundledQuery.LimitType.t()
        }

  defstruct [:query_type, :parent, :limit_type]

  oneof :query_type, 0
  field :parent, 1, type: :string
  field :structured_query, 2, type: Google.Firestore.V1.StructuredQuery, oneof: 0
  field :limit_type, 3, type: Google.Firestore.Bundle.BundledQuery.LimitType, enum: true
end

defmodule Google.Firestore.Bundle.NamedQuery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          bundled_query: Google.Firestore.Bundle.BundledQuery.t() | nil,
          read_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :bundled_query, :read_time]

  field :name, 1, type: :string
  field :bundled_query, 2, type: Google.Firestore.Bundle.BundledQuery
  field :read_time, 3, type: Google.Protobuf.Timestamp
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

  defstruct [:name, :read_time, :exists, :queries]

  field :name, 1, type: :string
  field :read_time, 2, type: Google.Protobuf.Timestamp
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

  defstruct [:id, :create_time, :version, :total_documents, :total_bytes]

  field :id, 1, type: :string
  field :create_time, 2, type: Google.Protobuf.Timestamp
  field :version, 3, type: :uint32
  field :total_documents, 4, type: :uint32
  field :total_bytes, 5, type: :uint64
end

defmodule Google.Firestore.Bundle.BundleElement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          element_type: {atom, any}
        }

  defstruct [:element_type]

  oneof :element_type, 0
  field :metadata, 1, type: Google.Firestore.Bundle.BundleMetadata, oneof: 0
  field :named_query, 2, type: Google.Firestore.Bundle.NamedQuery, oneof: 0
  field :document_metadata, 3, type: Google.Firestore.Bundle.BundledDocumentMetadata, oneof: 0
  field :document, 4, type: Google.Firestore.V1.Document, oneof: 0
end
