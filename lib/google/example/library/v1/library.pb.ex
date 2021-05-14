defmodule Google.Example.Library.V1.Book do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          author: String.t(),
          title: String.t(),
          read: boolean
        }

  defstruct [:name, :author, :title, :read]

  field :name, 1, type: :string
  field :author, 2, type: :string
  field :title, 3, type: :string
  field :read, 4, type: :bool
end

defmodule Google.Example.Library.V1.Shelf do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          theme: String.t()
        }

  defstruct [:name, :theme]

  field :name, 1, type: :string
  field :theme, 2, type: :string
end

defmodule Google.Example.Library.V1.CreateShelfRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          shelf: Google.Example.Library.V1.Shelf.t() | nil
        }

  defstruct [:shelf]

  field :shelf, 1, type: Google.Example.Library.V1.Shelf
end

defmodule Google.Example.Library.V1.GetShelfRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Example.Library.V1.ListShelvesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:page_size, :page_token]

  field :page_size, 1, type: :int32
  field :page_token, 2, type: :string
end

defmodule Google.Example.Library.V1.ListShelvesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          shelves: [Google.Example.Library.V1.Shelf.t()],
          next_page_token: String.t()
        }

  defstruct [:shelves, :next_page_token]

  field :shelves, 1, repeated: true, type: Google.Example.Library.V1.Shelf
  field :next_page_token, 2, type: :string
end

defmodule Google.Example.Library.V1.DeleteShelfRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Example.Library.V1.MergeShelvesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          other_shelf: String.t()
        }

  defstruct [:name, :other_shelf]

  field :name, 1, type: :string
  field :other_shelf, 2, type: :string
end

defmodule Google.Example.Library.V1.CreateBookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          book: Google.Example.Library.V1.Book.t() | nil
        }

  defstruct [:parent, :book]

  field :parent, 1, type: :string
  field :book, 2, type: Google.Example.Library.V1.Book
end

defmodule Google.Example.Library.V1.GetBookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Example.Library.V1.ListBooksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Example.Library.V1.ListBooksResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          books: [Google.Example.Library.V1.Book.t()],
          next_page_token: String.t()
        }

  defstruct [:books, :next_page_token]

  field :books, 1, repeated: true, type: Google.Example.Library.V1.Book
  field :next_page_token, 2, type: :string
end

defmodule Google.Example.Library.V1.UpdateBookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          book: Google.Example.Library.V1.Book.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:book, :update_mask]

  field :book, 1, type: Google.Example.Library.V1.Book
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Example.Library.V1.DeleteBookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Example.Library.V1.MoveBookRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          other_shelf_name: String.t()
        }

  defstruct [:name, :other_shelf_name]

  field :name, 1, type: :string
  field :other_shelf_name, 2, type: :string
end

defmodule Google.Example.Library.V1.LibraryService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.example.library.v1.LibraryService"

  rpc :CreateShelf, Google.Example.Library.V1.CreateShelfRequest, Google.Example.Library.V1.Shelf

  rpc :GetShelf, Google.Example.Library.V1.GetShelfRequest, Google.Example.Library.V1.Shelf

  rpc :ListShelves,
      Google.Example.Library.V1.ListShelvesRequest,
      Google.Example.Library.V1.ListShelvesResponse

  rpc :DeleteShelf, Google.Example.Library.V1.DeleteShelfRequest, Google.Protobuf.Empty

  rpc :MergeShelves,
      Google.Example.Library.V1.MergeShelvesRequest,
      Google.Example.Library.V1.Shelf

  rpc :CreateBook, Google.Example.Library.V1.CreateBookRequest, Google.Example.Library.V1.Book

  rpc :GetBook, Google.Example.Library.V1.GetBookRequest, Google.Example.Library.V1.Book

  rpc :ListBooks,
      Google.Example.Library.V1.ListBooksRequest,
      Google.Example.Library.V1.ListBooksResponse

  rpc :DeleteBook, Google.Example.Library.V1.DeleteBookRequest, Google.Protobuf.Empty

  rpc :UpdateBook, Google.Example.Library.V1.UpdateBookRequest, Google.Example.Library.V1.Book

  rpc :MoveBook, Google.Example.Library.V1.MoveBookRequest, Google.Example.Library.V1.Book
end

defmodule Google.Example.Library.V1.LibraryService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Example.Library.V1.LibraryService.Service
end
