defmodule Google.Apps.Meet.V2beta.CreateSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :space, 1, type: Google.Apps.Meet.V2beta.Space
end

defmodule Google.Apps.Meet.V2beta.GetSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.UpdateSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :space, 1, type: Google.Apps.Meet.V2beta.Space, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Apps.Meet.V2beta.EndActiveConferenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.CreateMemberRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :member, 2, type: Google.Apps.Meet.V2beta.Member, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.GetMemberRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListMembersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListMembersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :members, 1, repeated: true, type: Google.Apps.Meet.V2beta.Member
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2beta.DeleteMemberRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.GetConferenceRecordRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListConferenceRecordsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListConferenceRecordsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :conference_records, 1,
    repeated: true,
    type: Google.Apps.Meet.V2beta.ConferenceRecord,
    json_name: "conferenceRecords"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2beta.GetParticipantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListParticipantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListParticipantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :participants, 1, repeated: true, type: Google.Apps.Meet.V2beta.Participant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Apps.Meet.V2beta.GetParticipantSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListParticipantSessionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListParticipantSessionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :participant_sessions, 1,
    repeated: true,
    type: Google.Apps.Meet.V2beta.ParticipantSession,
    json_name: "participantSessions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2beta.GetRecordingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListRecordingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Apps.Meet.V2beta.ListRecordingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :recordings, 1, repeated: true, type: Google.Apps.Meet.V2beta.Recording
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2beta.GetTranscriptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListTranscriptsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Apps.Meet.V2beta.ListTranscriptsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :transcripts, 1, repeated: true, type: Google.Apps.Meet.V2beta.Transcript
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2beta.GetTranscriptEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2beta.ListTranscriptEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Apps.Meet.V2beta.ListTranscriptEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :transcript_entries, 1,
    repeated: true,
    type: Google.Apps.Meet.V2beta.TranscriptEntry,
    json_name: "transcriptEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2beta.SpacesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.apps.meet.v2beta.SpacesService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :CreateSpace, Google.Apps.Meet.V2beta.CreateSpaceRequest, Google.Apps.Meet.V2beta.Space

  rpc :GetSpace, Google.Apps.Meet.V2beta.GetSpaceRequest, Google.Apps.Meet.V2beta.Space

  rpc :UpdateSpace, Google.Apps.Meet.V2beta.UpdateSpaceRequest, Google.Apps.Meet.V2beta.Space

  rpc :EndActiveConference,
      Google.Apps.Meet.V2beta.EndActiveConferenceRequest,
      Google.Protobuf.Empty

  rpc :CreateMember, Google.Apps.Meet.V2beta.CreateMemberRequest, Google.Apps.Meet.V2beta.Member

  rpc :GetMember, Google.Apps.Meet.V2beta.GetMemberRequest, Google.Apps.Meet.V2beta.Member

  rpc :ListMembers,
      Google.Apps.Meet.V2beta.ListMembersRequest,
      Google.Apps.Meet.V2beta.ListMembersResponse

  rpc :DeleteMember, Google.Apps.Meet.V2beta.DeleteMemberRequest, Google.Protobuf.Empty
end

defmodule Google.Apps.Meet.V2beta.SpacesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Apps.Meet.V2beta.SpacesService.Service
end

defmodule Google.Apps.Meet.V2beta.ConferenceRecordsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.apps.meet.v2beta.ConferenceRecordsService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :GetConferenceRecord,
      Google.Apps.Meet.V2beta.GetConferenceRecordRequest,
      Google.Apps.Meet.V2beta.ConferenceRecord

  rpc :ListConferenceRecords,
      Google.Apps.Meet.V2beta.ListConferenceRecordsRequest,
      Google.Apps.Meet.V2beta.ListConferenceRecordsResponse

  rpc :GetParticipant,
      Google.Apps.Meet.V2beta.GetParticipantRequest,
      Google.Apps.Meet.V2beta.Participant

  rpc :ListParticipants,
      Google.Apps.Meet.V2beta.ListParticipantsRequest,
      Google.Apps.Meet.V2beta.ListParticipantsResponse

  rpc :GetParticipantSession,
      Google.Apps.Meet.V2beta.GetParticipantSessionRequest,
      Google.Apps.Meet.V2beta.ParticipantSession

  rpc :ListParticipantSessions,
      Google.Apps.Meet.V2beta.ListParticipantSessionsRequest,
      Google.Apps.Meet.V2beta.ListParticipantSessionsResponse

  rpc :GetRecording,
      Google.Apps.Meet.V2beta.GetRecordingRequest,
      Google.Apps.Meet.V2beta.Recording

  rpc :ListRecordings,
      Google.Apps.Meet.V2beta.ListRecordingsRequest,
      Google.Apps.Meet.V2beta.ListRecordingsResponse

  rpc :GetTranscript,
      Google.Apps.Meet.V2beta.GetTranscriptRequest,
      Google.Apps.Meet.V2beta.Transcript

  rpc :ListTranscripts,
      Google.Apps.Meet.V2beta.ListTranscriptsRequest,
      Google.Apps.Meet.V2beta.ListTranscriptsResponse

  rpc :GetTranscriptEntry,
      Google.Apps.Meet.V2beta.GetTranscriptEntryRequest,
      Google.Apps.Meet.V2beta.TranscriptEntry

  rpc :ListTranscriptEntries,
      Google.Apps.Meet.V2beta.ListTranscriptEntriesRequest,
      Google.Apps.Meet.V2beta.ListTranscriptEntriesResponse
end

defmodule Google.Apps.Meet.V2beta.ConferenceRecordsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Apps.Meet.V2beta.ConferenceRecordsService.Service
end
