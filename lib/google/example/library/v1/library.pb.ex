defmodule Google.Example.Library.V1.Book do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :author, 2, type: :string
  field :title, 3, type: :string
  field :read, 4, type: :bool
end

defmodule Google.Example.Library.V1.Shelf do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :theme, 2, type: :string
end

defmodule Google.Example.Library.V1.CreateShelfRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :shelf, 1, type: Google.Example.Library.V1.Shelf, deprecated: false
end

defmodule Google.Example.Library.V1.GetShelfRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Example.Library.V1.ListShelvesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize"
  field :page_token, 2, type: :string, json_name: "pageToken"
end

defmodule Google.Example.Library.V1.ListShelvesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :shelves, 1, repeated: true, type: Google.Example.Library.V1.Shelf
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Example.Library.V1.DeleteShelfRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Example.Library.V1.MergeShelvesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :other_shelf, 2, type: :string, json_name: "otherShelf", deprecated: false
end

defmodule Google.Example.Library.V1.CreateBookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :book, 2, type: Google.Example.Library.V1.Book, deprecated: false
end

defmodule Google.Example.Library.V1.GetBookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Example.Library.V1.ListBooksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Example.Library.V1.ListBooksResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :books, 1, repeated: true, type: Google.Example.Library.V1.Book
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Example.Library.V1.UpdateBookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :book, 1, type: Google.Example.Library.V1.Book, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Example.Library.V1.DeleteBookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Example.Library.V1.MoveBookRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :other_shelf_name, 2, type: :string, json_name: "otherShelfName", deprecated: false
end

defmodule Google.Example.Library.V1.LibraryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.example.library.v1.LibraryService",
    protoc_gen_elixir_version: "0.14.1"

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
