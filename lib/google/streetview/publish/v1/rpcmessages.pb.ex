defmodule Google.Streetview.Publish.V1.PhotoView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :BASIC | :INCLUDE_DOWNLOAD_URL

  field :BASIC, 0

  field :INCLUDE_DOWNLOAD_URL, 1
end

defmodule Google.Streetview.Publish.V1.CreatePhotoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          photo: Google.Streetview.Publish.V1.Photo.t() | nil
        }

  defstruct [:photo]

  field :photo, 1, type: Google.Streetview.Publish.V1.Photo
end

defmodule Google.Streetview.Publish.V1.GetPhotoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          photo_id: String.t(),
          view: Google.Streetview.Publish.V1.PhotoView.t(),
          language_code: String.t()
        }

  defstruct [:photo_id, :view, :language_code]

  field :photo_id, 1, type: :string
  field :view, 2, type: Google.Streetview.Publish.V1.PhotoView, enum: true
  field :language_code, 3, type: :string
end

defmodule Google.Streetview.Publish.V1.BatchGetPhotosRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          photo_ids: [String.t()],
          view: Google.Streetview.Publish.V1.PhotoView.t(),
          language_code: String.t()
        }

  defstruct [:photo_ids, :view, :language_code]

  field :photo_ids, 1, repeated: true, type: :string
  field :view, 2, type: Google.Streetview.Publish.V1.PhotoView, enum: true
  field :language_code, 3, type: :string
end

defmodule Google.Streetview.Publish.V1.BatchGetPhotosResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Streetview.Publish.V1.PhotoResponse.t()]
        }

  defstruct [:results]

  field :results, 1, repeated: true, type: Google.Streetview.Publish.V1.PhotoResponse
end

defmodule Google.Streetview.Publish.V1.PhotoResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: Google.Rpc.Status.t() | nil,
          photo: Google.Streetview.Publish.V1.Photo.t() | nil
        }

  defstruct [:status, :photo]

  field :status, 1, type: Google.Rpc.Status
  field :photo, 2, type: Google.Streetview.Publish.V1.Photo
end

defmodule Google.Streetview.Publish.V1.ListPhotosRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          view: Google.Streetview.Publish.V1.PhotoView.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t(),
          language_code: String.t()
        }

  defstruct [:view, :page_size, :page_token, :filter, :language_code]

  field :view, 1, type: Google.Streetview.Publish.V1.PhotoView, enum: true
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
  field :language_code, 5, type: :string
end

defmodule Google.Streetview.Publish.V1.ListPhotosResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          photos: [Google.Streetview.Publish.V1.Photo.t()],
          next_page_token: String.t()
        }

  defstruct [:photos, :next_page_token]

  field :photos, 1, repeated: true, type: Google.Streetview.Publish.V1.Photo
  field :next_page_token, 2, type: :string
end

defmodule Google.Streetview.Publish.V1.UpdatePhotoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          photo: Google.Streetview.Publish.V1.Photo.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:photo, :update_mask]

  field :photo, 1, type: Google.Streetview.Publish.V1.Photo
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Streetview.Publish.V1.BatchUpdatePhotosRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          update_photo_requests: [Google.Streetview.Publish.V1.UpdatePhotoRequest.t()]
        }

  defstruct [:update_photo_requests]

  field :update_photo_requests, 1,
    repeated: true,
    type: Google.Streetview.Publish.V1.UpdatePhotoRequest
end

defmodule Google.Streetview.Publish.V1.BatchUpdatePhotosResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          results: [Google.Streetview.Publish.V1.PhotoResponse.t()]
        }

  defstruct [:results]

  field :results, 1, repeated: true, type: Google.Streetview.Publish.V1.PhotoResponse
end

defmodule Google.Streetview.Publish.V1.DeletePhotoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          photo_id: String.t()
        }

  defstruct [:photo_id]

  field :photo_id, 1, type: :string
end

defmodule Google.Streetview.Publish.V1.BatchDeletePhotosRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          photo_ids: [String.t()]
        }

  defstruct [:photo_ids]

  field :photo_ids, 1, repeated: true, type: :string
end

defmodule Google.Streetview.Publish.V1.BatchDeletePhotosResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          status: [Google.Rpc.Status.t()]
        }

  defstruct [:status]

  field :status, 1, repeated: true, type: Google.Rpc.Status
end
