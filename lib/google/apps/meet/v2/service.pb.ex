defmodule Google.Apps.Meet.V2.CreateSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :space, 1, type: Google.Apps.Meet.V2.Space
end

defmodule Google.Apps.Meet.V2.GetSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.UpdateSpaceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :space, 1, type: Google.Apps.Meet.V2.Space, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Apps.Meet.V2.EndActiveConferenceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.GetConferenceRecordRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.ListConferenceRecordsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :page_size, 1, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 3, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.ListConferenceRecordsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :conference_records, 1,
    repeated: true,
    type: Google.Apps.Meet.V2.ConferenceRecord,
    json_name: "conferenceRecords"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2.GetParticipantRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.ListParticipantsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.ListParticipantsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :participants, 1, repeated: true, type: Google.Apps.Meet.V2.Participant
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :total_size, 3, type: :int32, json_name: "totalSize"
end

defmodule Google.Apps.Meet.V2.GetParticipantSessionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.ListParticipantSessionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.ListParticipantSessionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :participant_sessions, 1,
    repeated: true,
    type: Google.Apps.Meet.V2.ParticipantSession,
    json_name: "participantSessions"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2.GetRecordingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.ListRecordingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Apps.Meet.V2.ListRecordingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :recordings, 1, repeated: true, type: Google.Apps.Meet.V2.Recording
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2.GetTranscriptRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.ListTranscriptsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Apps.Meet.V2.ListTranscriptsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :transcripts, 1, repeated: true, type: Google.Apps.Meet.V2.Transcript
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2.GetTranscriptEntryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Apps.Meet.V2.ListTranscriptEntriesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Apps.Meet.V2.ListTranscriptEntriesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :transcript_entries, 1,
    repeated: true,
    type: Google.Apps.Meet.V2.TranscriptEntry,
    json_name: "transcriptEntries"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Apps.Meet.V2.SpacesService.Service do
  @moduledoc false

  use GRPC.Service, name: "google.apps.meet.v2.SpacesService", protoc_gen_elixir_version: "0.13.0"

  rpc :CreateSpace, Google.Apps.Meet.V2.CreateSpaceRequest, Google.Apps.Meet.V2.Space

  rpc :GetSpace, Google.Apps.Meet.V2.GetSpaceRequest, Google.Apps.Meet.V2.Space

  rpc :UpdateSpace, Google.Apps.Meet.V2.UpdateSpaceRequest, Google.Apps.Meet.V2.Space

  rpc :EndActiveConference, Google.Apps.Meet.V2.EndActiveConferenceRequest, Google.Protobuf.Empty
end

defmodule Google.Apps.Meet.V2.SpacesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Apps.Meet.V2.SpacesService.Service
end

defmodule Google.Apps.Meet.V2.ConferenceRecordsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.apps.meet.v2.ConferenceRecordsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetConferenceRecord,
      Google.Apps.Meet.V2.GetConferenceRecordRequest,
      Google.Apps.Meet.V2.ConferenceRecord

  rpc :ListConferenceRecords,
      Google.Apps.Meet.V2.ListConferenceRecordsRequest,
      Google.Apps.Meet.V2.ListConferenceRecordsResponse

  rpc :GetParticipant, Google.Apps.Meet.V2.GetParticipantRequest, Google.Apps.Meet.V2.Participant

  rpc :ListParticipants,
      Google.Apps.Meet.V2.ListParticipantsRequest,
      Google.Apps.Meet.V2.ListParticipantsResponse

  rpc :GetParticipantSession,
      Google.Apps.Meet.V2.GetParticipantSessionRequest,
      Google.Apps.Meet.V2.ParticipantSession

  rpc :ListParticipantSessions,
      Google.Apps.Meet.V2.ListParticipantSessionsRequest,
      Google.Apps.Meet.V2.ListParticipantSessionsResponse

  rpc :GetRecording, Google.Apps.Meet.V2.GetRecordingRequest, Google.Apps.Meet.V2.Recording

  rpc :ListRecordings,
      Google.Apps.Meet.V2.ListRecordingsRequest,
      Google.Apps.Meet.V2.ListRecordingsResponse

  rpc :GetTranscript, Google.Apps.Meet.V2.GetTranscriptRequest, Google.Apps.Meet.V2.Transcript

  rpc :ListTranscripts,
      Google.Apps.Meet.V2.ListTranscriptsRequest,
      Google.Apps.Meet.V2.ListTranscriptsResponse

  rpc :GetTranscriptEntry,
      Google.Apps.Meet.V2.GetTranscriptEntryRequest,
      Google.Apps.Meet.V2.TranscriptEntry

  rpc :ListTranscriptEntries,
      Google.Apps.Meet.V2.ListTranscriptEntriesRequest,
      Google.Apps.Meet.V2.ListTranscriptEntriesResponse
end

defmodule Google.Apps.Meet.V2.ConferenceRecordsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Apps.Meet.V2.ConferenceRecordsService.Service
end