defmodule Google.Chat.V1.ChatService.Service do
  @moduledoc false

  use GRPC.Service, name: "google.chat.v1.ChatService", protoc_gen_elixir_version: "0.13.0"

  rpc :CreateMessage, Google.Chat.V1.CreateMessageRequest, Google.Chat.V1.Message

  rpc :ListMessages, Google.Chat.V1.ListMessagesRequest, Google.Chat.V1.ListMessagesResponse

  rpc :ListMemberships,
      Google.Chat.V1.ListMembershipsRequest,
      Google.Chat.V1.ListMembershipsResponse

  rpc :GetMembership, Google.Chat.V1.GetMembershipRequest, Google.Chat.V1.Membership

  rpc :GetMessage, Google.Chat.V1.GetMessageRequest, Google.Chat.V1.Message

  rpc :UpdateMessage, Google.Chat.V1.UpdateMessageRequest, Google.Chat.V1.Message

  rpc :DeleteMessage, Google.Chat.V1.DeleteMessageRequest, Google.Protobuf.Empty

  rpc :GetAttachment, Google.Chat.V1.GetAttachmentRequest, Google.Chat.V1.Attachment

  rpc :UploadAttachment,
      Google.Chat.V1.UploadAttachmentRequest,
      Google.Chat.V1.UploadAttachmentResponse

  rpc :ListSpaces, Google.Chat.V1.ListSpacesRequest, Google.Chat.V1.ListSpacesResponse

  rpc :SearchSpaces, Google.Chat.V1.SearchSpacesRequest, Google.Chat.V1.SearchSpacesResponse

  rpc :GetSpace, Google.Chat.V1.GetSpaceRequest, Google.Chat.V1.Space

  rpc :CreateSpace, Google.Chat.V1.CreateSpaceRequest, Google.Chat.V1.Space

  rpc :SetUpSpace, Google.Chat.V1.SetUpSpaceRequest, Google.Chat.V1.Space

  rpc :UpdateSpace, Google.Chat.V1.UpdateSpaceRequest, Google.Chat.V1.Space

  rpc :DeleteSpace, Google.Chat.V1.DeleteSpaceRequest, Google.Protobuf.Empty

  rpc :CompleteImportSpace,
      Google.Chat.V1.CompleteImportSpaceRequest,
      Google.Chat.V1.CompleteImportSpaceResponse

  rpc :FindDirectMessage, Google.Chat.V1.FindDirectMessageRequest, Google.Chat.V1.Space

  rpc :CreateMembership, Google.Chat.V1.CreateMembershipRequest, Google.Chat.V1.Membership

  rpc :UpdateMembership, Google.Chat.V1.UpdateMembershipRequest, Google.Chat.V1.Membership

  rpc :DeleteMembership, Google.Chat.V1.DeleteMembershipRequest, Google.Chat.V1.Membership

  rpc :CreateReaction, Google.Chat.V1.CreateReactionRequest, Google.Chat.V1.Reaction

  rpc :ListReactions, Google.Chat.V1.ListReactionsRequest, Google.Chat.V1.ListReactionsResponse

  rpc :DeleteReaction, Google.Chat.V1.DeleteReactionRequest, Google.Protobuf.Empty

  rpc :GetSpaceReadState, Google.Chat.V1.GetSpaceReadStateRequest, Google.Chat.V1.SpaceReadState

  rpc :UpdateSpaceReadState,
      Google.Chat.V1.UpdateSpaceReadStateRequest,
      Google.Chat.V1.SpaceReadState

  rpc :GetThreadReadState,
      Google.Chat.V1.GetThreadReadStateRequest,
      Google.Chat.V1.ThreadReadState

  rpc :GetSpaceEvent, Google.Chat.V1.GetSpaceEventRequest, Google.Chat.V1.SpaceEvent

  rpc :ListSpaceEvents,
      Google.Chat.V1.ListSpaceEventsRequest,
      Google.Chat.V1.ListSpaceEventsResponse
end

defmodule Google.Chat.V1.ChatService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Chat.V1.ChatService.Service
end