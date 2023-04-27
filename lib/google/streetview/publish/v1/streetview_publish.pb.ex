defmodule Google.Streetview.Publish.V1.StreetViewPublishService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.streetview.publish.v1.StreetViewPublishService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :StartUpload, Google.Protobuf.Empty, Google.Streetview.Publish.V1.UploadRef

  rpc :CreatePhoto,
      Google.Streetview.Publish.V1.CreatePhotoRequest,
      Google.Streetview.Publish.V1.Photo

  rpc :GetPhoto, Google.Streetview.Publish.V1.GetPhotoRequest, Google.Streetview.Publish.V1.Photo

  rpc :BatchGetPhotos,
      Google.Streetview.Publish.V1.BatchGetPhotosRequest,
      Google.Streetview.Publish.V1.BatchGetPhotosResponse

  rpc :ListPhotos,
      Google.Streetview.Publish.V1.ListPhotosRequest,
      Google.Streetview.Publish.V1.ListPhotosResponse

  rpc :UpdatePhoto,
      Google.Streetview.Publish.V1.UpdatePhotoRequest,
      Google.Streetview.Publish.V1.Photo

  rpc :BatchUpdatePhotos,
      Google.Streetview.Publish.V1.BatchUpdatePhotosRequest,
      Google.Streetview.Publish.V1.BatchUpdatePhotosResponse

  rpc :DeletePhoto, Google.Streetview.Publish.V1.DeletePhotoRequest, Google.Protobuf.Empty

  rpc :BatchDeletePhotos,
      Google.Streetview.Publish.V1.BatchDeletePhotosRequest,
      Google.Streetview.Publish.V1.BatchDeletePhotosResponse

  rpc :StartPhotoSequenceUpload, Google.Protobuf.Empty, Google.Streetview.Publish.V1.UploadRef

  rpc :CreatePhotoSequence,
      Google.Streetview.Publish.V1.CreatePhotoSequenceRequest,
      Google.Longrunning.Operation

  rpc :GetPhotoSequence,
      Google.Streetview.Publish.V1.GetPhotoSequenceRequest,
      Google.Longrunning.Operation

  rpc :ListPhotoSequences,
      Google.Streetview.Publish.V1.ListPhotoSequencesRequest,
      Google.Streetview.Publish.V1.ListPhotoSequencesResponse

  rpc :DeletePhotoSequence,
      Google.Streetview.Publish.V1.DeletePhotoSequenceRequest,
      Google.Protobuf.Empty
end

defmodule Google.Streetview.Publish.V1.StreetViewPublishService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Streetview.Publish.V1.StreetViewPublishService.Service
end