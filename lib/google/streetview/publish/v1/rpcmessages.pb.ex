defmodule Google.Streetview.Publish.V1.PhotoView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :BASIC, 0
  field :INCLUDE_DOWNLOAD_URL, 1
end

defmodule Google.Streetview.Publish.V1.CreatePhotoSequenceRequest.InputType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :INPUT_TYPE_UNSPECIFIED, 0
  field :VIDEO, 1
  field :XDM, 2
end

defmodule Google.Streetview.Publish.V1.CreatePhotoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :photo, 1, type: Google.Streetview.Publish.V1.Photo, deprecated: false
end

defmodule Google.Streetview.Publish.V1.GetPhotoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :photo_id, 1, type: :string, json_name: "photoId", deprecated: false
  field :view, 2, type: Google.Streetview.Publish.V1.PhotoView, enum: true, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode"
end

defmodule Google.Streetview.Publish.V1.BatchGetPhotosRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :photo_ids, 1, repeated: true, type: :string, json_name: "photoIds", deprecated: false
  field :view, 2, type: Google.Streetview.Publish.V1.PhotoView, enum: true, deprecated: false
  field :language_code, 3, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Streetview.Publish.V1.BatchGetPhotosResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Streetview.Publish.V1.PhotoResponse
end

defmodule Google.Streetview.Publish.V1.PhotoResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :status, 1, type: Google.Rpc.Status
  field :photo, 2, type: Google.Streetview.Publish.V1.Photo
end

defmodule Google.Streetview.Publish.V1.ListPhotosRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :view, 1, type: Google.Streetview.Publish.V1.PhotoView, enum: true, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :language_code, 5, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Streetview.Publish.V1.ListPhotosResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :photos, 1, repeated: true, type: Google.Streetview.Publish.V1.Photo
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Streetview.Publish.V1.UpdatePhotoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :photo, 1, type: Google.Streetview.Publish.V1.Photo, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Streetview.Publish.V1.BatchUpdatePhotosRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :update_photo_requests, 1,
    repeated: true,
    type: Google.Streetview.Publish.V1.UpdatePhotoRequest,
    json_name: "updatePhotoRequests",
    deprecated: false
end

defmodule Google.Streetview.Publish.V1.BatchUpdatePhotosResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Streetview.Publish.V1.PhotoResponse
end

defmodule Google.Streetview.Publish.V1.DeletePhotoRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :photo_id, 1, type: :string, json_name: "photoId", deprecated: false
end

defmodule Google.Streetview.Publish.V1.BatchDeletePhotosRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :photo_ids, 1, repeated: true, type: :string, json_name: "photoIds", deprecated: false
end

defmodule Google.Streetview.Publish.V1.CreatePhotoSequenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :photo_sequence, 1,
    type: Google.Streetview.Publish.V1.PhotoSequence,
    json_name: "photoSequence",
    deprecated: false

  field :input_type, 2,
    type: Google.Streetview.Publish.V1.CreatePhotoSequenceRequest.InputType,
    json_name: "inputType",
    enum: true,
    deprecated: false
end

defmodule Google.Streetview.Publish.V1.GetPhotoSequenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sequence_id, 1, type: :string, json_name: "sequenceId", deprecated: false
  field :view, 2, type: Google.Streetview.Publish.V1.PhotoView, enum: true, deprecated: true
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Streetview.Publish.V1.DeletePhotoSequenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sequence_id, 1, type: :string, json_name: "sequenceId", deprecated: false
end

defmodule Google.Streetview.Publish.V1.BatchDeletePhotosResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :status, 1, repeated: true, type: Google.Rpc.Status
end

defmodule Google.Streetview.Publish.V1.ListPhotoSequencesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Streetview.Publish.V1.ListPhotoSequencesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :photo_sequences, 1,
    repeated: true,
    type: Google.Longrunning.Operation,
    json_name: "photoSequences"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end